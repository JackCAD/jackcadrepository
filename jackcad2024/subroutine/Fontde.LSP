;; Merubah data menjadi data xyz
;; by jack
;;(load "c:/jackcad2024/simtp")

(load "c:/jackcad2024/subroutine/awalprogram")
(load "c:/jackcad2024/subroutine/settinghuruf")
(load "c:/jackcad2024/subroutine/bacadefault")

(load "c:/jackcad2024/TOPO/aturS")
(load "c:/jackcad2024/cross/warna")

(defun C:fontde()

  (awalprogram)  
  (bacadefault) ;;;; default lokasi file
  
  (setq skala (atof (nth 1 (nth 0 dapro))))
  (setq dig (atoi (nth 1 (nth 1 dapro))))
  (ATURS)   
  (setq ambil (ssget))
  (setq panjang (sslength ambil))
  (setq urut 0)
  (repeat panjang
    (setq ent (entget (ssname ambil urut)))
    (setq kon (cdr (assoc 7 ent)))
    (setq wrn1 (cdr (assoc 62 ent)))
    (if (= kon "Standard")(progn
			    ;;(command "-style" "F18" jenishuruf "" "" "" "" "" "")
			    (setq ent (subst (cons 7 "F25") (assoc 7 ent) ent ))			    
			    (setq ent (subst (cons 62 3) (assoc 62 ent) ent ))
			    (setq ent (subst (cons 40 (* skala 0.0025)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))
    (if (= kon "F18")(progn
		     ;;  (command "-style" "F20" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F18") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 2) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0018)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))

     (if (= kon "F20")(progn
		     ;;  (command "-style" "F20" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F18") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 2) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0018)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))

    
    (if (= kon "F25")(progn
		     ;;  (command "-style" "F20" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F20") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 2) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0020)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))

    (if (= kon "F30")(progn
		       ;;(command "-style" "F25" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F25") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 3) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0025)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))
    (if (= kon "F35")(progn
		       ;;(command "-style" "F30" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F30") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 3) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0030)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))

    (if (= kon "F50")(progn
		      ;;(command "-style" "F35" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F35") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 4) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0035)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))
   

     (if (= kon "F70")(progn
		       ;;(command "-style" "F50" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F50") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 5) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0050)) (assoc 40 ent) ent ))
			    (entmod ent)
		       ))
    
      (if (= kon "F100")(progn
			;;(command "-style" "F70" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F70") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 7) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0070)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))

      (if (= kon "F150")(progn
			;;(command "-style" "F100" jenishuruf "" "" "" "" "" "")
		       (setq ent (subst (cons 7 "F100") (assoc 7 ent) ent ))
			    (setq ent (subst (cons 62 10) (assoc 62 ent) ent ))
		       (setq ent (subst (cons 40 (* skala 0.0100)) (assoc 40 ent) ent ))
			    (entmod ent)
			    ))

        
    (setq urut (+ urut 1))
    
)
  

  );defun
