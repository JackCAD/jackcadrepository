;; Mendatakan trase
;; by jack
(load "c:/jackcad2024/subroutine/awalprogram")
(load (strcat "c:/jackcad2024/TOPO/aturS"))
(load (strcat "c:/jackcad2024/long/fgaris"))
(load (strcat "c:/jackcad2024/long/fkurva"))
(load (strcat "c:/jackcad2024/long/fgaris2"))
(load (strcat "c:/jackcad2024/long/fkurva2"))
(load (strcat "c:/jackcad2024/long/re-sdt"))
;;;(load (strcat "c:/jackcad2024/re-set"))
;;;(load (strcat "c:/jackcad2024/rubahdat"))


(defun C:trase2007()
  (awalprogram)
  
  (setq skala (atof (nth 1 (nth 0 dapro))))
  (setq dig (atoi (nth 1 (nth 1 dapro))))
  
  (ATURS)

  (setq fnam1 (strcat dir-pro "/data/Long&Cross/"))
  (setq fnam3 (strcat dir-pro "/data/Long&Cross/"))
  (setq fnam4 (strcat dir-pro "/data/Long&Cross/"))
;baca data cros
  ;;(setq fnam2 "CROS")


  (if (= fnam2 nil)(setq fnam2 "cros"))
  (setq	fnam (GETFILED "Canal Alignment" (strcat fnam1 fnam2) "txt" 8))
(setq FNAM2 (vl-filename-base  fnam))
  
  (setq fnam8 (strcat fnam1 fnam2 ".tra"))
  (setq fnam9 (strcat fnam1 fnam2 ".lon"))
  (setq DAT1 (open fnam "r"))
  (setq DAT2 (open fnam8 "w"))
  (setq DAT3 (open fnam9 "w"))


  ;;;===============
  ;;;  SETTING LAYER
  ;;;===============
  (command "osnap" "non")
  (command "-layer" "m" "lengkung" "")
  (command "-layer" "m" "salprimer" "")
  (command "-layer" "m" "salsek" "")
  (command "-layer" "m" "salter" "")
  (command "-layer" "m" "saldrain" "")
  (command "ltscale" 0.9)
  (command "-layer" "l" "dashdot" "salprimer" "")
  (command "-layer" "l" "dashdot" "salsek" "")
  (command "-layer" "l" "dashdot" "salter" "")
  (command "-layer" "l" "dashed2" "saldrain" "")
  (command "-layer" "c" "58" "salprimer" "")
  (command "-layer" "c" "56" "salsek" "")
  (command "-layer" "c" "55" "salter" "")
  (command "-layer" "c" "14" "saldrain" "")
  (command "-layer" "c" "3" "lengkung" "")
  (command "color" "bylayer")
  (setq HPTK (* 0.0018 skala))
  (setq HER (* 0.0015 skala))

;;;(princ "A")
  (setq ambil (ssget))
    
  (setq ent (entget (ssname ambil 0)))
  (setq pjg (length ent))
  (setq entc 1 kont 0)
;;;  (princ "B")
  (while (= entc 1)
    (if (= (nth 0 (nth kont ent)) 10) (progn
					(setq ktaw kont)
					(setq entc 0)
					))
    (setq kont (+ 1 kont))
    )
     
  (setq kt1 ktaw kt2 (+ ktaw 5) bg (+ ktaw 3)) ;;;; ini untuk lwpolyline kt2=ktaw+5   klu polyline kt2=ktaw+4
  (setq ntp (getint (strcat "\nNo dimulainya TP...... ?:")))
  (setq masal (getint (strcat "\n1.Primer 2.Sek 3.Tersier 4.Drain...... ?:")))
  (if (= masal 1)(command "change" ambil "" "P" "LA" "salprimer" "c" "58" "S" (* skala 0.015) ""))
  (if (= masal 2)(command "change" ambil "" "P" "LA" "salsek" "c" "56" "S" (* skala 0.01) ""))
  (if (= masal 3)(command "change" ambil "" "P" "LA" "salter" "c" "55" "S" (* skala 0.005) ""))
  (if (= masal 4)(command "change" ambil "" "P" "LA" "saldrain" "c" "16" "S" (* skala 0.02) ""))
;;;        (princ "C")
  (setq putar (/ (- pjg kt2) 5))
  (write-line (itoa putar) DAT2)
  (setq dattra nil)
;;;  (princ "D")
  (REPEAT PUTAR 
    (setq gubel (cdr (nth bg ent)))    
    (if (= gubel 0)(fgaris)(fkurva))   
    (setq kt1 (+ 5 kt1))
    (setq kt2 (+ 5 kt2))
    (setq bg (+ 5 bg))
    )
;;;  (princ "E")
  (setq dattra (reverse dattra))
  (setq dattra (cons putar dattra))
  (close DAT2)
(nth 0 (nth 12 ent))
;================================
;================================
;================================

  (repeat 8 (read-line DAT1))
;;;  SETING DATA AWAL
;;;==================
  (setq PATOK0 "")
  (setq XA0 "")
  (setq YA0 "")
  (setq SDTH0 "no")

;;;  BACA DATA KE 1
;;;================
  (SETQ QZ1 (read-line DAT1))
  (rubahdat QZ1)(setq QZ1 datajadi)  
  (SETQ QJ1 (read-line DAT1))
  (rubahdat QJ1)(setq QJ1 datajadi)  
  (SETQ QL1 (read-line DAT1))
  (rubahdat QL1)(setq QL1 datajadi)
  (setq PATOK1 (nth 0 QZ1))
  (if (= PATOK1 nil)(setq PATOK1 ""))
  
  (setq XA1 (nth 1 QZ1))
  (setq YA1 (nth 2 QZ1))
  (setq ZA1 (nth 3 QZ1))
  (setq JAM1 (nth 4 QZ1))
  (setq MNT1 (nth 5 QZ1))
  (setq DTK1 (nth 6 QZ1))
  (if (and (= JAM1 "")(= MNT1 "")(= DTK1 ""))(setq SDTH1 "no")
    (progn
      (if (= JAM1 "")(setq JAM1 0))
      (if (= MNT1 "")(setq MNT1 0))
      (if (= DTK1 "")(setq DTK1 0))
      (setq SDTH1 (ate (+ JAM1 (/ MNT1 60) (/ DTK1 3600))))
      ))

    
  (setq jardat1 (nth 0 QJ1))  
  (setq TTK1a (list XA1 YA1))
  
  
;;;  BACA DATA KE 2
;;;================
  (setq STOP1 0)
  (while (= STOP1 0)
 
    (re-sdt)
  
    (setq kt1 ktaw kt2 (+ ktaw 5) bg (+ ktaw 3) jarkum 0 jarkum4 0)
    (setq ttktnh1 nil)  
    (repeat putar     
      (setq gubel (cdr (nth bg ent)))
      (if (= gubel 0)
	(progn
	  (setq ttkaw (list (nth 1 (nth kt1 ent))(nth 2 (nth kt1 ent))))
	  (setq ttkar (list (nth 1 (nth kt2 ent))(nth 2 (nth kt2 ent))))	  
	  (fgaris2 ttkaw ttkar ttkpt1 ttkpt2)	  
	  )	
	(fkurva2)
	)      
      (setq kt1 (+ 5 kt1))
      (setq kt2 (+ 5 kt2))
      (setq bg (+ 5 bg))
      )
    (if (and (= ttktnh1 nil)(= STOP1 0))
      (progn
	(write-line PATOK1 DAT3)
	(write-line "nil" DAT3)
	(write-line "nil" DAT3)
	(write-line "nil" DAT3)	
	))   
    (SETQ QZ0 QZ1)
    (SETQ QJ0 QJ1)
    (setq PATOK0 PATOK1)
    (setq SDTH0 SDTH1)
    (setq TTK0a TTK1a)
    (setq ZA0 ZA1)
    (SETQ QZ1 QZ2)
    (SETQ QJ1 QJ2)
    (setq PATOK1 PATOK2)
    (setq SDTH1 SDTH2)
    (setq ZA1 ZA2)
    (setq TTK1a TTK2a)
    (setq Jardat1 Jardat2)
    )
  (write-line "END" DAT3)
  (write-line "1000000.0" DAT3)
  (write-line "nil" DAT3)
  (write-line "nil" DAT3)
  (close DAT3)
  )

    
    
    
	
      
	
	
	
  
