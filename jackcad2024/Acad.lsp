(defun S::STARTUP ()
   ;(vmon)
   ;(defun *error* (st) (princ "\nerror : ") (princ st) (terpri)) ; error messag
   (defun dtr (a) (* pi (/ a 180.0))) ; degree to radian
   (defun rtd (a) (/ (* a 180.0) pi)) ; radian to degree
   (defun ate (a) (rem (+ 1080 (* -1 (- a 90))) 360)) ; azimuth to east dan sebaliknya

   ;(defun mi_tan (a) (/ (sin a) (cos a)))
   ;(setq angu (* pi 0.5) angd (* pi 1.5))
   (command "units" "" "6" "" "" "" "")
  (command "uCSICON" "NO")
   (command "style" "standard" "Arial" "" "" "0" "" "" "")   
   (setvar "blipmode" 0)
   (setvar "cmdecho" 0)
(setvar "acadlspasdoc" 1)
(setq DAT1 (open "c:/drive.txt" "r"))
(SETQ drive (read-line DAT1))
(close dat1)

(load "c:/jackcad2024/lsp-lain/lain")

;==== MENU MMMMM
;   (setq lastname "none")
;(princ)
;(setvar "dimzin" 0)	


) ;; defun
