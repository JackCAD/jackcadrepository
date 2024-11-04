(defun c:CCS ()
  

  ;; Meminta titik pertama
  (setq pt1 (getpoint "\nPilih titik pertama: "))
  (setq pt2 (getpoint "\nPilih titik kedua: "))
  (setq width (distance pt1 (list (car pt2) (cadr pt1))))
  (setq height (distance pt1 (list (car pt1) (cadr pt2))))
 
  (while (= (car (grread T 13 0)) 5)   
    (setq ang (getangle pt1 "\nMasukkan sudut rotasi: ")) ;; Meminta sudut rotasi        
        (if (/= ang nil)(progn
			  
        ;; Menghitung posisi keempat titik sudut kotak berdasarkan sudut rotasi
        (setq p1 pt1)
        (setq p2 (polar p1 ang width))
        (setq p3 (polar p2 (+ (/ pi 2) ang) height))
        (setq p4 (polar p1 (+ (/ pi 2) ang) height))

        ;; Menghapus gambar sebelumnya dan menggambar kotak baru
        (redraw) ;; Menghapus kotak sebelumnya dari tampilan
        (grdraw p1 p2 1) ;; Gambar sisi pertama kotak
        (grdraw p2 p3 1) ;; Gambar sisi kedua kotak
        (grdraw p3 p4 1) ;; Gambar sisi ketiga kotak
        (grdraw p4 p1 1) ;; Gambar sisi keempat kotak
    ;;(command "pline" p1 p2 p3 p4 "c")
    ;;;(setq input (car (grread T 13 0)))
      ;;)
	))
    )
 
  (command "pline" p1 p2 p3 p4 "c")

)


