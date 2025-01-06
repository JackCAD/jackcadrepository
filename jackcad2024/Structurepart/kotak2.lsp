
(defun c:kotak ( / dcl_id dlg width height center_point min_pt max_pt)
  ;; Load DCL file
  (setq dcl_id (load_dialog "c:/jackcad2024/Structurepart/kotak.dcl"))
  (if (not (new_dialog "box_dialog" dcl_id))
    (progn
      (prompt "\nError: Cannot load DCL file.")
      (exit)
    )
  )

  ;; Default values
  (setq width 100)
  (setq height 100)

  ;; Set default values in dialog
  (set_tile "width_box" (itoa width))
  (set_tile "height_box" (itoa height))

  ;; Action for OK button
  (action_tile "accept" 
    "(progn 
       (setq width (atoi (get_tile \"width_box\")))
       (setq height (atoi (get_tile \"height_box\")))
       (done_dialog 1)
     )"
  )

  ;; Action for Cancel button
  (action_tile "cancel" "(done_dialog 0)")

  ;; Show dialog and capture response
  (if (= (start_dialog) 1)
    (progn
      ;; Get center point from user
      (setq center_point (getpoint "\nSpecify center point for the box: "))
      (if center_point
        (progn
          ;; Calculate corner points
          (setq min_pt (list (- (car center_point) (/ width 2)) 
                             (- (cadr center_point) (/ height 2))))
          (setq max_pt (list (+ (car center_point) (/ width 2)) 
                             (+ (cadr center_point) (/ height 2))))

          ;; Draw box using grdraw
          (grdraw min_pt (list (car max_pt) (cadr min_pt)) 1 0)
          (grdraw (list (car max_pt) (cadr min_pt)) max_pt 1 0)
          (grdraw max_pt (list (car min_pt) (cadr max_pt)) 1 0)
          (grdraw (list (car min_pt) (cadr max_pt)) min_pt 1 0)

          (prompt (strcat "\nBox drawn with width: " (itoa width) " and height: " (itoa height)))
        )
        (prompt "\nPoint selection canceled.")
      )
    )
    (prompt "\nDialog canceled.")
  )

  ;; Unload DCL file
  (unload_dialog dcl_id)
)
