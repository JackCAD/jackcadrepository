

(defun ambillokasi ()
(setq lokasi (getpoint)))

(defun salcros ()
  (if (= lokasi nil) (setq lokasi (getvar "VIEWCTR")))
  (if (= skala nil) (setq skala 50))
  (if (= sudut nil) (setq sudut 0))
  (if (= bsal nil) (setq bsal 1))
  (if (= hsal nil) (setq hsal 1))
  (if (= msal nil) (setq msal 1))
  (if (= wsal nil) (setq wsal 0.5))
  (if (= tglki nil) (setq tglki 2))
  (if (= tglka nil) (setq tglka 2))
  (if (= jlnki nil) (setq jlnki 1))
  (if (= jlnka nil) (setq jlnka 1))
  (if (= elma nil) (setq elma 10))
  (if (= elta nil) (setq elta 9))
  (if (= tipsal nil) (setq tipsal 0))
  (setq pt1 (getpoint "\nPilih titik pertama: "))
  (setq pt2 (getpoint "\nPilih titik kedua: "))
  



  


  
  (setq salcrosdcl (load_dialog "c:/jackcad2024/bangunan.dcl"))
  (if (not (new_dialog "Salurancros" salcrosdcl))(exit))
  (action_tile "Sallok" "(ambillokasi)")
  (set_tile "Salskala" (rtos skala 2 0))
  (set_tile "Salsudut" (rtos sudut 2 0))
  (set_tile "Salb" (rtos bsal 2 2))
  (set_tile "Salh" (rtos hsal 2 2))
  (set_tile "Salm" (rtos msal 2 2))
  (set_tile "Salw" (rtos wsal 2 2 ))
  (set_tile "Saltglki" (rtos tglki 2 2))
  (set_tile "Saltglka" (rtos tglka 2 2))
  (set_tile "Saljlki" (rtos jlnki 2 2))
  (set_tile "Saljlka" (rtos jlnka 2 2))
  (set_tile "Salema" (rtos elma 2 2))
  (set_tile "Saleta" (rtos elta 2 2))
  (set_tile "Saltipe" (rtos tipsal 2 0))
;;;  
;;;  (mode_tile "accept" 0)
;;;  (action_tile "cancel" "(done_dialog)(exit)")
;;;



  
  
  (start_dialog)  
  (unload_dialog salcrosdcl)
  )





  
(defun c:manualstruct ()

  (setq passw (load_dialog "c:/jackcad2024/bangunan.dcl"))
  (if (not (new_dialog "Manualstruct" passw))(exit))
			(action_tile "Salplan" "(salplan)")			
			(action_tile "Salcros" "(salcros)")			
			(action_tile "Sallong" "(sallong)")			
			(action_tile "alihplan" "(alihplan)")			
			(action_tile "alihcros" "(alihcros)")			
			(action_tile "alihlong" "(alihlong)")			
			(action_tile "pintuplan" "(pintuplan)")			
			(action_tile "pintucros" "(pintucros)")			
			(action_tile "pintulong" "(pintulong)")			
			(action_tile "belokplan" "(belokplan)")			
			(action_tile "belokcros" "(belokcros)")			
			(action_tile "beloklong" "(beloklong)")			
			(action_tile "gorplan" "(gorplan)")			
			(action_tile "gorcros" "(gorcros)")			
			(action_tile "gorlong" "(gorlong)")			
			(action_tile "ukurplan" "(ukurplan)")			
			(action_tile "ukurcros" "(ukurcros)")			
			(action_tile "ukurlong" "(ukurlong)")			
			(action_tile "terjunplan" "(terjunplan)")			
			(action_tile "terjuncros" "(terjuncros)")			
			(action_tile "terjunlong" "(terjunlong)")			
			(action_tile "vlugterplan" "(vlugterplan)")			
			(action_tile "vlugtercros" "(vlugtercros)")			
			(action_tile "vlugterlong" "(vlugterlong)")			

;;;
;;;  
;;;  (action_tile "WebJ"
;;;    (strcat
;;;      "(setq wbj1 1)"      
;;;      "(done_dialog))"
;;;      ))
  
  
  (start_dialog)  
  (unload_dialog passw)  
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

