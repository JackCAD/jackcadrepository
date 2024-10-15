   

(defun c:bantu ()
  (setq pesanjackcad 0 mbookjackcad 0 vitutjackcad 0 wbj1 0)  
  (setq passw (load_dialog "c:/jackcad2024/irigasi.dcl"))
  (if (not (new_dialog "Bantuan" passw))(exit))


  (action_tile "WebJ"
    (strcat
      "(setq wbj1 1)"      
      "(done_dialog))"
      ))
  
  
  (action_tile "Mbook"
    (strcat
      "(setq mbookjackcad 1)"      
      "(done_dialog))"
      ))
  

  (action_tile "Vitut"
    (strcat
      "(setq vitutjackcad 1)"      
      "(done_dialog))"
      ))
  
  
  (action_tile "pesanan"
    (strcat
      "(setq pesanjackcad 1)"      
      "(done_dialog))"
      ))
  (start_dialog)  
  (unload_dialog passw)  

  (if (= wbj1 1)(startapp "cmd.exe" "/c start https://jackcad.com/"))
  (if (= pesanjackcad 1)(startapp "cmd.exe" "/c start https://jackcad.com/berlangganan/"))
  (if (= mbookjackcad 1)(startapp "cmd.exe" "/c start https://jackcad.com/wp-content/uploads/2024/10/MANUAL-PROGRAM-JACKCAD2024-1.pdf"))
  (if (= vitutjackcad 1)(startapp "cmd.exe" "/c start https://www.youtube.com/@jackcad"))
   
  )

  

;;;file:///C:/jackcad2024/MANUAL%20PROGRAM%20JACKCAD2024.pdf
