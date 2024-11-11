   

(defun c:ms ()
  ;;(setq pesanjackcad 0 Minstall 0 Mproyek 0 Mtopografi 0 Mcanal 0 Mstructure 0 Mtools 0 vitutjackcad 0 wbj1 0)  
  (setq passw (load_dialog "c:/jackcad2024/irigasi.dcl"))
  (if (not (new_dialog "Manualstruct" passw))(exit))

;;;  
;;;
;;;  (action_tile "WebJ"
;;;    (strcat
;;;      "(setq wbj1 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;  
;;;  
;;;  (action_tile "Min"
;;;    (strcat
;;;      "(setq Minstall 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;
;;;  
;;;  (action_tile "Mpro"
;;;    (strcat
;;;      "(setq Mproyek 1)"      
;;;      "(done_dialog))"
  
;;;      ))
;;;
;;;  
;;;  (action_tile "Mtop"
;;;    (strcat
;;;      "(setq Mtopografi 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;
;;;  
;;;  (action_tile "Mcan"
;;;    (strcat
;;;      "(setq Mcanal 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;
;;;  
;;;  (action_tile "Mstru"
;;;    (strcat
;;;      "(setq Mstructure 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;
;;;  
;;;  (action_tile "Mtol"
;;;    (strcat
;;;      "(setq Mtools 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;
;;;
;;;  
;;;  (action_tile "Vitut"
;;;    (strcat
;;;      "(setq vitutjackcad 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;  
;;;  
;;;  (action_tile "pesanan"
;;;    (strcat
;;;      "(setq pesanjackcad 1)"      
;;;      "(done_dialog))"
;;;      ))
;;;  (start_dialog)  
;;;  (unload_dialog passw)  
;;;
;;;  (if (= wbj1 1)(startapp "cmd.exe" "/c start https://jackcad.com/"))
;;;  (if (= pesanjackcad 1)(startapp "cmd.exe" "/c start https://jackcad.com/berlangganan/"))
;;;  (if (= minstall 1)(startapp "cmd.exe" "/c start file:///C:/jackcad2024/Helppdf/Install.pdf"))
;;;  (if (= mproyek 1)(startapp "cmd.exe" "/c start file:///C:/jackcad2024/Helppdf/Proyek.pdf"))
;;;  (if (= mtopografi 1)(startapp "cmd.exe" "/c start file:///C:/jackcad2024/Helppdf/Topografi.pdf"))
;;;  (if (= mcanal 1)(startapp "cmd.exe" "/c start file:///C:/jackcad2024/Helppdf/Canal.pdf"))
;;;  (if (= mstructure 1)(startapp "cmd.exe" "/c start file:///C:/jackcad2024/Helppdf/Structure.pdf"))
;;;  (if (= mtools 1)(startapp "cmd.exe" "/c start file:///C:/jackcad2024/Helppdf/Tools.pdf"))  
;;;  (if (= vitutjackcad 1)(startapp "cmd.exe" "/c start https://www.youtube.com/@jackcad"))
   
  )

  

;;;file:///C:/jackcad2024/MANUAL%20PROGRAM%20JACKCAD2024.pdf

