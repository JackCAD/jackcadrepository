;; Membuat data cross dari dem
;; by jack

(load "c:/jackcad2024/re-set")
(defun C:crd()
  (re-set)

  ;;;==============fungsi bilangan random antara 0 s/d 1
  (defun rnd (/ modulus multiplier increment random) 
  (if (not seed)

    (setq seed (getvar "DATE"))
  )
  (setq modulus    65536
        multiplier 25173
        increment  13849
        seed  (rem (+ (* multiplier seed) increment) modulus)
        random     (/ seed modulus)
	)
    )

  ;;;====================


  ;;;==============interpolasi elevasi
  (defun cariele (/ koorx koory) 


    
    

    )

  ;;;====================










  
  (setq intik 2)
  (setq rantik 0.3)
  (setq natok "P")
  (setq nomtok 1)
  (setq indem 1)
  (setq lebar 15)
  (setq datapat nil) ;; data patok
  (setq datacros (list)) ;; data crosk
;;;  (setq fnam (strcat dir-pro "/data/situasi/" NM))
    (setvar "cmdecho" 0)
  ;; baca file dem
    (setq fnam (strcat dir-pro "/data/situasi/")) ;; direktori dem
  (setq datadem (GETFILED "XYZ data (Tab Delimited)" fnam "xyz" 8)) ;; file dem


;; baca garis trase
  (setq ambil (ssget))
  ;; baca rencana cross
;;;  (setq lebar 15)
  ;;(setq lebar (getreal "lebar <15>:"))
;;;  (if (= lebar nil)(setq lebar 15))
   ;;(setq intik (getreal "jarak antar titik <2>:"))
 ;; (setq rantik (getreal "random antar titik <0.3>:"))
 ;; (setq natok (getstring "Huruf Patok <P>:"))
;;  (setq nomtok (getint "Nomer Patok <1>:"))
;;  (setq indem (getreal "kerapatan data dem <1>:"))
  
;;;  (if (= intik nil)(setq intik 2))
;;;  (if (= rantik nil)(setq rantik 0.3))
;;;  (if (= natok "")(setq natok "P"))
;;;  (if (= nomtok nil)(setq nomtok 1))
;;;  (if (= indem nil)(setq indem 1))
;;;  (setq intik 2)
;;;  (setq rantik 0.3)
;;;  (setq natok "P")
;;;  (setq nomtok 1)
;;;  (setq indem 1)
  ;; buat file output
 ;; (setq fil (getstring "Nama File Output ...... : ")) ;; file output cross section
;;;  (setq file (strcat fnam fil ".txt")) 
;;;  (setq f (open file "w"))
;;;  (write-line "" f)
;;;    (write-line "" f)
;;;    (write-line "" f)
;;;    (write-line "" f)
;;;    (write-line "" f)
;;;    (write-line "" f)
;;;    (write-line "" f)
;;;    (write-line "" f)
    

 ;; buat Data patok dan koordinatnya
    (setq ent (entget (ssname ambil 0))) ;; data garis trase
    (setq stop 0)
    (while (= stop 0)
      (setq XYZP (assoc 10 ent))
      (if (equal XYZP nil) (setq stop 1))
      (if (= stop 0)
	(progn
	  (setq ganti (list 20 20 20))
	  (setq ent (subst ganti XYZP ent))
	  (setq ax (cadr xyzp))
	  (setq ay (caddr xyzp))
	  (if (= datapat nil)(setq datapat (list (list (strcat natok (itoa nomtok)) ax ay)))(setq datapat (append datapat (list(list (strcat natok (itoa nomtok)) ax ay)))))
	  (setq nomtok (+ nomtok 1))
	  );progn
	);if
      );while
	    
 ;; buat Data patok dan koordinatnya

  
  (setq stop2 0) ;; putar patok
  (repeat (length datapat)
    (if (= stop2 0) ;; sudut cros ke1
      (progn
	(setq a (nth stop2 datapat))
	(setq b (nth (+ 1 stop2) datapat))
	(setq sdt (dtr (- (rtd (angle (list (nth 1 a)(nth 2 a))(list (nth 1 b)(nth 2 b)))) 90)))
      ))
    (if (and (> stop2 0)(< stop2 (- (length datapat) 1)));; sudut cros ke2 dst
      (progn

	(setq a (nth stop2 datapat))
	(setq b (nth (+ 1 stop2) datapat))
	(setq c (nth (- stop2 1) datapat))
	(setq sdt1 (rtd (angle (list (nth 1 c)(nth 2 c))(list (nth 1 a)(nth 2 a)))))
	(setq sdt2 (rtd (angle (list (nth 1 a)(nth 2 a))(list (nth 1 b)(nth 2 b)))))
	(setq sdt (dtr (- (/ (+ sdt1 sdt2) 2) 90)))
	))
    (if (= stop2 (- (length datapat) 1)) ;; sudut cros terakhir
      (progn
	(setq b (nth (- stop2 1) datapat))
	(setq a (nth stop2 datapat))
	(setq sdt (dtr (- (rtd (angle (list (nth 1 b)(nth 2 b))(list (nth 1 a)(nth 2 a)))) 90)))
	))
;;;    
    (setq datacros2 (list (nth stop2 datapat)))  
    (setq stop3 (* -1 lebar)) ;; data titik cros
    (while (and (>= stop3 (* -1 lebar))(<= stop3 lebar))
      (setq jrk (+ 0.3 (- stop3 (* (rnd) 0.6))))
      (setq ttkcr (polar (list (nth 1 a)(nth 2 a)) sdt jrk))
      (setq ttkcr (list ttkcr jrk))
      (setq datacros2 (append datacros2 (list ttkcr)))
      (if (and (>= stop3 (* -1 intik))(<= stop3 0))
	(progn
	  (setq datacros2 (append datacros2 (list (list (nth 1 a)(nth 2 a)) 0)))
	  (setq stop3 0)
	  ))
      (setq stop3 (+ stop3 intik))
      
      );;while stop3
    (setq stop2 (+ 1 stop2))
    (setq datacros (append datacros (list datacros2)))
  );;;repeat stop2  



    
    
;;(setq panjang (sslength ambil))



  );;defun








    


