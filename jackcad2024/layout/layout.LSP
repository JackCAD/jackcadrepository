;; Membuat layout
;; by jack

;;;==============================
;;;==============================
;;;==========MAIN PROGRAM
;;;==============================
;;;==============================

Langkah2 :
1. Mencari data minimum dari seluruh data

Mencari alur
1. Mencari data minimum per blok (ukuran skala / 100), beri indeks
2. cari data minimum disekitarnya (3 titik diatas, 2 titik kiri kanan, 3 titik bawah)
3. jika titik sekitar tidak ada yang lebih rendah maka blok digunakan sebagai database
4. jika titik sekitar ada yang lebih rendah maka pilih elevasi terendah sebagai data base
5. 







(defun C:layout()

  (setq skala 2000))
  (if (= NM nil)(setq NM "kontur"))
  (setq fnam "c:/jackcad2024/datakontur.txt")
  
;;;
;;;
;;;  (setq dcll (load_dialog "c:/jackcad2009/irigasi.dcl"))
;;;  (if (not (new_dialog "Kontur1" dcll))(exit))
;;;  (mode_tile "accept" 2)
;;;  (action_tile "cancel" "(done_dialog)(exit)")
;;;  (action_tile "accept"
;;;    (strcat
;;;      "(progn (setq Ne (get_tile \"Ne\"))"
;;;      "(setq Ex (strcase (get_tile \"Ex\")))"
;;;      "(setq Su (get_tile \"Su\"))"
;;;      "(setq Br (get_tile \"Br\"))"
;;;      "(setq Co (get_tile \"Co\"))"      
;;;      "(done_dialog))"
;;;      ))
;;;  (start_dialog)  
;;;  (unload_dialog dcll)      
;;;  (if (= Ne "1")(yangbaru))
;;;  (if (= Ex "1")(yangada))
;;;  (if (= Su "1")(surfes))
;;;  (if (= Br "1")(Brek))
;;;  (if (= Co "1")(Cotex))

    
;buatgaris
;;;
;;;  (setq dcll (load_dialog "c:/jackcad2009/irigasi.dcl"))
;;;  (if (not (new_dialog "Kontur2" dcll))(exit))
;;;  (mode_tile "accept" 2)
;;;  (action_tile "cancel" "(done_dialog)(exit)")
;;;  (action_tile "accept"
;;;    (strcat
;;;      "(progn (setq Ds (get_tile \"Ds\"))"
;;;      "(setq Ig (strcase (get_tile \"Ig\")))"      
;;;      "(done_dialog))"
;;;      ))
;;;  (start_dialog)  
;;;  (unload_dialog dcll)      
   
  (if (= Ds "1")(progn
  (setq put12 0)
  (command "-layer" "m" "bantukontur" "")
  (command "-layer" "s" "bantukontur" "")
  (repeat (length dtgrskontur)
    (command "line" (car (nth put12 dtgrskontur))(cadr (nth put12 dtgrskontur)) "")
    (setq put12 (+ 1 put12))
    ))
    )
  
  ;(setq elevr (getreal "\nElevasi kontur? : "))
   ;; hitung elevasi

;ELEVASI MAK MIN
  (setq put 0 datel nil)
  (repeat (length dtgrskontur)
    (setq el1 (nth 2 (nth 0 (nth put dtgrskontur))))
    (setq el2 (nth 2 (nth 1 (nth put dtgrskontur))))
    (setq datel (append (list el1 el2) datel))
    (setq put (+ put 1))
    )
  (setq makel (apply 'max datel))
  (setq minel (apply 'min datel))
;;;  (princ (strcat "Elevasi mak" (rtos makel 2 2) " ; min "(rtos minel 2 2)))
;;;  (setq interval (getreal "\ninterval kontur ? : "))
;;;  (setq dariel (getreal "\nmulai ? : "))
;;;  (setq sampaiel (getreal "\nsampai ? : "))
  
  (setq dcll (load_dialog "c:/jackcad2009/irigasi.dcl"))
  (if (not (new_dialog "Kontur3" dcll))(exit))
  (set_tile "makel" (rtos makel 2 3))
  (set_tile "minel" (rtos minel 2 3))
  (set_tile "sampaiel" (rtos (fix makel) 2 2))
  (set_tile "dariel" (rtos (+ 1 (fix minel)) 2 2))
  (mode_tile "makel" 1)
  (mode_tile "minel" 1)
  (mode_tile "accept" 2)
  (action_tile "cancel" "(done_dialog)(exit)")
  (action_tile "accept"
    (strcat
      "(progn (setq sampaiel (get_tile \"sampaiel\"))"
      "(setq dariel (get_tile \"dariel\"))"
      "(setq interval (get_tile \"interval\"))"
      "(done_dialog))"
      ))
  (start_dialog)  
  (unload_dialog dcll)      
  
  (setq sampaiel (atof sampaiel))
  (setq dariel (atof dariel))
  (if (= interval "1")(setq interval 0.1))
  (if (= interval "2")(setq interval 0.2))
  (if (= interval "3")(setq interval 0.25))
  (if (= interval "4")(setq interval 0.5))
  (if (= interval "5")(setq interval 1))
  (if (= interval "6")(setq interval 2.5))
  (if (= interval "7")(setq interval 5))
  (if (= interval "8")(setq interval 10))
  (if (= interval "9")(setq interval 12.5))
  (if (= interval "10")(setq interval 25))
  
  (command "-layer" "m" "konturminor" "")
  (command "-layer" "m" "konturmayor" "")
  (command "-layer" "s" "konturminor" "")
  

  (command "setvar" "pdmode" "34")
  (command "setvar" "pdsize" (rtos (/ skala 800) 2 0))
  (setq elskr dariel)
  (repeat (fix (/ (- sampaiel dariel) interval))  
  (setq urut 0)
  
  (setq dtel nil)
  (repeat (length dtgrskontur)    
    (setq dtgrs (nth urut dtgrskontur))
    (Setq titik1 (nth 0 dtgrs))
    (Setq titik2 (nth 1 dtgrs))
    (setq elev1 (nth 2 (nth 0 dtgrs)))
    (setq elev2 (nth 2 (nth 1 dtgrs)))
    (if (and (<= elskr (max elev1 elev2))(>= elskr (min elev1 elev2)))
      (progn
      (setq jrlotik (* (/ (- elskr elev1)(- elev2 elev1)) (distance titik1 titik2)))
      (setq lotik (polar titik1 (angle titik1 titik2) jrlotik))
      (setq dtel (append (list (list (nth 0 lotik)(nth 1 lotik) elskr)) dtel))
      ))
    (setq urut (+ 1 urut))
    )


(setq urut1 0)
(repeat (- (length dtel) 1)
  (setq da1 (nth urut1 dtel))
  (setq urut2 urut1)
  (repeat (- (length dtel) (+ urut1 1))
    (setq da2 (nth (+ urut2 1) dtel))
    (cekgrs2)
    (setq urut2 (+ 1 urut2))
    ;(princ urut)
    )
  (setq urut1 (+ 1 urut1))
)
    (setq elskr (+ elskr interval))
    )


  
  
  );defun







;;;====================
;;;=====================
(defun cekgrs2()
;;;=====================
;;;=====================
  (setq put11 0 dapat 0)
  (repeat (length dtgrskontur)
    (setq cekdtgrs (nth put11 dtgrskontur))
    (setq ttk1 (list (nth 0 (car cekdtgrs)) (nth 1 (car cekdtgrs))))
    (setq ttk2 (list (nth 0 (cadr cekdtgrs)) (nth 1 (cadr cekdtgrs))))
    (setq ttk3 (list (nth 0 da1) (nth 1 da1)))
    (setq ttk4 (list (nth 0 da2) (nth 1 da2)))
;;;    (command "color" "3")
;;;(command "line" ttk3 ttk4 "")
;;;    (command "color" "2")
    (setq potong1 (inters ttk1 ttk2 ttk3 ttk4))
    (if (/= potong1 nil)(setq dapat (+ 1 dapat)))
    
    (setq put11 (+ put11 1))    
    )
      (command "color" "1")
  (if (= dapat 2)(command "line" ttk3 ttk4 ""))
      (command "color" "2")
  )
  







;;;============================
(defun yangbaru()
;;;==============================
  (setq ambil (ssget))
  (setq panjang (sslength ambil))
  (princ "\nJumlah Data = ")
  (prinC panjang)
  
  (setq urut 0 datik nil)
  (repeat panjang ;;; repeat 1
    (setq ent (entget (ssname ambil urut)))
    (setq kon (cdr (assoc 0 ent)))
    (if (or (= kon "TEXT")(= kon "MTEXT"))
      (progn
	(setq koor1 (list (nth 1 (assoc 11 ent))(nth 2 (assoc 11 ent))(+ 0.0001 (atof (cdr (assoc 1 ent))))))
	(setq datik (append (LIST koor1) datik))	
	))
    
    (setq urut (+ urut 1))
    )
;;;  BUAT DATA 10
  (setq panjang (length DATIK))
  (setq put 0 dtgrskontur nil 10dktttl nil)  
  (repeat panjang
    (setq data1 (nth put datik))
    (setq urut 0 dtpt nil dtjr nil)
    (10titik)
    (setq put (+ 1 put))
    )

  (setq rot1 0)
  (repeat 10
    (setq rot2 0)
      (princ "\nPlease wait, Building Progress ")
      (princ (rtos (* 10.0  (+ rot1 1))  2 0))
      (princ "%")
    
    (repeat (length 10dktttl)    
      (setq dtgrs (nth rot2 10dktttl))
      (if (< (length dtgrs) rot1)(setq dtgrs nil)(setq dtgrs (nth rot1 dtgrs)))
      (if (= dtgrskontur nil) (setq dtgrskontur (append (list dtgrs) dtgrskontur))
	(if (/= dtgrs nil)(cekgrs)))
      
;;;      (if (< (length dtgrs) (+ 1 rot1))(setq dtgrs nil)(setq dtgrs (nth (+ rot1 1) (nth rot2 10dktttl))))
;;;      (if (/= dtgrs nil)(cekgrs))
     (setq rot2 (+ 1 rot2))
      )
    (setq rot1 (+ 1 rot1))
    )
  
(if (or (= NM nil) (= (substr NM 1 1) " "))(setq NM "kontur"))  
  (setq fnam (strcat dir-pro "/data/situasi/" NM))
  (setq file (GETFILED "Save Surface Data" fnam "kon" 1))
  (setq NM (vl-filename-base file))
  (setq fnam (strcat dir-pro "/data/situasi/"))


  

      (setq f (open file "w"))
      (setq urut 0)
      (repeat (length dtgrskontur)
	(write-line (vl-prin1-to-string (nth urut dtgrskontur)) f)
	(setq urut (+ 1 urut))
	)
      (close f)

  )
      
    

    


;;;====================
;;;=====================
(defun yangada()
;;;=======================
;;;=====================
  (if (or (= NM nil) (= (substr NM 1 1) " "))(setq NM "kontur"))  
  (setq fnam (strcat dir-pro "/data/situasi/" NM))
  (setq NAMA (GETFILED "Surface Data" fnam "kon" 8))
  (setq NM (vl-filename-base NAMA))
  (setq fnam (strcat dir-pro "/data/situasi/")) 
  (setq DAT (open NAMA "r"))  
  (setq urut 0 dtgrskontur nil)
  (while (= urut 0)
    (setq Q (read-line DAT))
    (if (= Q nil)(setq urut 1)(setq dtgrskontur (append (list (read Q)) dtgrskontur)))
    )
  (close dat)  
  )






;;;====================
;;;=====================
(defun cekgrs()
;;;=====================
;;;=====================
  (setq put11 0 sukses 0)
  (repeat (length dtgrskontur)
    (setq cekdtgrs (nth put11 dtgrskontur))
    (if (and (< (distance (nth 0 dtgrs) (nth 1 cekdtgrs)) 0.01)(< (distance (nth 1 dtgrs) (nth 0 cekdtgrs)) 0.01))(setq sukses 1))
;;;    (if (and (< (distance (nth 1 dtgrs) (nth 1 cekdtgrs)) 0.01)(< (distance (nth 0 dtgrs) (nth 0 cekdtgrs)) 0.01))(setq sukses 1))
    (if (= sukses 0)(progn
		      (setq ttk1 (list (nth 0 (car dtgrs)) (nth 1 (car dtgrs))))
		      (setq ttk2 (list (nth 0 (cadr dtgrs)) (nth 1 (cadr dtgrs))))
		      (setq ttk3 (list (nth 0 (car cekdtgrs)) (nth 1 (car cekdtgrs))))
		      (setq ttk4 (list (nth 0 (cadr cekdtgrs)) (nth 1 (cadr cekdtgrs))))
		      (setq potong1 (inters ttk1 ttk2 ttk3 ttk4))
		      (if (/= potong1 nil)
			(progn
			  (if (or (< (distance potong1 ttk1) 0.01)(< (distance potong1 ttk2) 0.01)(< (distance potong1 ttk3) 0.01)(< (distance potong1 ttk4) 0.01))
			    (setq sukses 0)(setq sukses 1))
			  ))))
		      (setq put11 (+ 1 put11))
		      )
  
  (if (= sukses 0) (setq dtgrskontur (append (list dtgrs) dtgrskontur)))
  )
  






  
    ;;;===================================
    ;;; 10 Data terdekat
    ;;;===================================

(defun 10titik()
  
  (repeat panjang ;;repeat 3
    (setq data2 (nth urut datik))
    (setq jrks (distance data1 data2))
    (if (> jrks 0.01)
      (progn
	(setq dtpt (append (list (list jrks data2)) dtpt))
	(setq dtjr (append (list jrks) dtjr))))
    (setq urut (+ urut 1))
    );;finish repeat3
 
    ;; Data ke 1
  (setq 10dekat nil)
  (setq jrk1 (apply 'min dtjr))
  (setq dtl1 (assoc jrk1 dtpt))
  (setq sudut1 (rtd (angle data1 (nth 1 dtl1))))
  (setq 10dekat (append (list (list data1 (nth 1 dtl1))) 10dekat))
  (setq dtjr (vl-remove jrk1 dtjr))

  ;; Data ke 2
  (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
  (while (= putsdt 0)
    (if (= (length dtjr) 1)(setq putsdt 1))
    (setq jrk1 (apply 'min dtjr))
    (setq dtl2 (assoc jrk1 dtpt))
    (setq dtjr (vl-remove jrk1 dtjr))
    (setq sudut2 (rtd (angle data1 (nth 1 dtl2))))
    (if (> (abs (- sudut2 sudut1)) bt)(progn
					(setq putsdt 1)
					(setq 10dekat (append (list (list data1 (nth 1 dtl2))) 10dekat))
					))
    )
  ;; Data ke 3
  (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
  (while (= putsdt 0)
    (if (= (length dtjr) 1)(setq putsdt 1))
    (setq jrk1 (apply 'min dtjr))
    (setq dtl3 (assoc jrk1 dtpt))
    (setq dtjr (vl-remove jrk1 dtjr))
    (setq sudut3 (rtd (angle data1 (nth 1 dtl3))))
    (if (and (> (abs (- sudut3 sudut1)) bt)(> (abs (- sudut3 sudut2)) bt))(progn
									    (setq putsdt 1)
									    (setq 10dekat (append (list (list data1 (nth 1 dtl3))) 10dekat))
									    ))
    )
  
    
    ;; Data ke 4
  (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
  (while (= putsdt 0)
      (if (= (length dtjr) 1)(setq putsdt 1))
      (setq jrk1 (apply 'min dtjr))
      (setq dtl4 (assoc jrk1 dtpt))
      (setq dtjr (vl-remove jrk1 dtjr))
      (setq sudut4 (rtd (angle data1 (nth 1 dtl4))))
      (if (and (> (abs (- sudut4 sudut1)) bt)(> (abs (- sudut4 sudut2)) bt)(> (abs (- sudut4 sudut3)) bt))(progn
					  (setq putsdt 1)
					  (setq 10dekat (append (list (list data1 (nth 1 dtl4))) 10dekat))
					  ))
      )
  
  
    
    ;; Data ke 5
  (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
  (while (= putsdt 0)
    (if (= (length dtjr) 1)(setq putsdt 1))
      (setq jrk1 (apply 'min dtjr))
      (setq dtl5 (assoc jrk1 dtpt))
      (setq dtjr (vl-remove jrk1 dtjr))
      (setq sudut5 (rtd (angle data1 (nth 1 dtl5))))
      (if (and (> (abs (- sudut5 sudut1)) bt)(> (abs (- sudut5 sudut2)) bt)(> (abs (- sudut5 sudut3)) bt)(> (abs (- sudut5 sudut3)) bt)(> (abs (- sudut5 sudut4)) bt))(progn
					  (setq putsdt 1)
					  (setq 10dekat (append (list (list data1 (nth 1 dtl5))) 10dekat))
					  ))
    ) 


    ;; Data ke 6
  (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
  (while (= putsdt 0)
    (if (= (length dtjr) 1)(setq putsdt 1))
    (setq jrk1 (apply 'min dtjr))
      (setq dtl6 (assoc jrk1 dtpt))
      (setq dtjr (vl-remove jrk1 dtjr))
      (setq sudut6 (rtd (angle data1 (nth 1 dtl6))))
      (if (and (> (abs (- sudut6 sudut1)) bt)(> (abs (- sudut6 sudut2)) bt)(> (abs (- sudut6 sudut3)) bt)(> (abs (- sudut6 sudut3)) bt)(> (abs (- sudut6 sudut4)) bt)
	       (> (abs (- sudut6 sudut5)) bt))
	(progn
	  (setq putsdt 1)
	  (setq 10dekat (append (list (list data1 (nth 1 dtl6))) 10dekat))
	  ))
    )
  

    ;; Data ke 7
  (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
  (while (= putsdt 0)
    (if (= (length dtjr) 1)(setq putsdt 1))
    (setq jrk1 (apply 'min dtjr))
    (setq dtl7 (assoc jrk1 dtpt))
    (setq dtjr (vl-remove jrk1 dtjr))
    (setq sudut7 (rtd (angle data1 (nth 1 dtl7))))
      (if (and (> (abs (- sudut7 sudut1)) bt)(> (abs (- sudut7 sudut2)) bt)(> (abs (- sudut7 sudut3)) bt)(> (abs (- sudut7 sudut3)) bt)(> (abs (- sudut7 sudut4)) bt)
	       (> (abs (- sudut7 sudut5)) bt)(> (abs (- sudut7 sudut6)) bt))(progn
					  (setq putsdt 1)
					  (setq 10dekat (append (list (list data1 (nth 1 dtl7))) 10dekat))
					  ))
          )      

    ;; Data ke 8    
    (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
    (while (= putsdt 0)
      (if (= (length dtjr) 1)(setq putsdt 1))
      (setq jrk1 (apply 'min dtjr))
      (setq dtl8 (assoc jrk1 dtpt))
      (setq dtjr (vl-remove jrk1 dtjr))
      (setq sudut8 (rtd (angle data1 (nth 1 dtl8))))
      (if (and (> (abs (- sudut8 sudut1)) bt)(> (abs (- sudut8 sudut2)) bt)(> (abs (- sudut8 sudut3)) bt)(> (abs (- sudut8 sudut3)) bt)(> (abs (- sudut8 sudut4)) bt)
	       (> (abs (- sudut8 sudut5)) bt)(> (abs (- sudut8 sudut6)) bt)(> (abs (- sudut8 sudut7)) bt))(progn
					  (setq putsdt 1)
					  (setq 10dekat (append (list (list data1 (nth 1 dtl8))) 10dekat))
					  ))
      )      


    ;; Data ke 9    
    (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
    (while (= putsdt 0)
      (if (= (length dtjr) 1)(setq putsdt 1))
      (setq jrk1 (apply 'min dtjr))
      (setq dtl9 (assoc jrk1 dtpt))
      (setq dtjr (vl-remove jrk1 dtjr))
      (setq sudut9 (rtd (angle data1 (nth 1 dtl9))))
      (if (and (> (abs (- sudut9 sudut1)) bt)(> (abs (- sudut9 sudut2)) bt)(> (abs (- sudut9 sudut3)) bt)(> (abs (- sudut9 sudut3)) bt)(> (abs (- sudut9 sudut4)) bt)
	       (> (abs (- sudut9 sudut5)) bt)(> (abs (- sudut9 sudut6)) bt)(> (abs (- sudut9 sudut7)) bt)(> (abs (- sudut9 sudut8)) bt))(progn
					  (setq putsdt 1)
					  (setq 10dekat (append (list (list data1 (nth 1 dtl9))) 10dekat))
					  ))
      )      


    ;; Data ke 10    
    (if (= dtjr nil)(setq putsdt 1)(setq putsdt 0))
    (while (= putsdt 0)
      (if (= (length dtjr) 1)(setq putsdt 1))
      (setq jrk1 (apply 'min dtjr))
      (setq dtl10 (assoc jrk1 dtpt))
      (setq dtjr (vl-remove jrk1 dtjr))
      (setq sudut10 (rtd (angle data1 (nth 1 dtl10))))
      (if (and (> (abs (- sudut10 sudut1)) bt)(> (abs (- sudut10 sudut2)) bt)(> (abs (- sudut10 sudut3)) bt)(> (abs (- sudut10 sudut3)) bt)(> (abs (- sudut10 sudut4)) bt)
	       (> (abs (- sudut10 sudut5)) bt)(> (abs (- sudut10 sudut6)) bt)(> (abs (- sudut10 sudut7)) bt)(> (abs (- sudut10 sudut8)) bt)(> (abs (- sudut10 sudut9)) bt))(progn
					  (setq putsdt 1)
					  (setq 10dekat (append (list (list data1 (nth 1 dtl10))) 10dekat))
					  ))     
      )

  (setq 10dekat (reverse 10dekat))

;;;  (setq cob 0)
;;;  (repeat (length 10dekat)
;;;    (command "line" (car (nth cob 10dekat)) (cadr (nth cob 10dekat)) "")
;;;    (setq cob (+ 1 cob))
;;;    (getstring "\ngaris : ")
;;;    )

 
  (setq 10dktttl (append (list 10dekat) 10dktttl))
  )
  
  
  
   





  


    

  


