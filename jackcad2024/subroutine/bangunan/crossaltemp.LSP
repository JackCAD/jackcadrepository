

(DEFUN crossal2 (skala1 skala TAWL SDT ETA EMA BS HS WS WL LTsn MS ML LKi LKa TipeS / tawl sdt eta ema bs hs ws wl ltsn ms ml lki lka tipes
		A1 I1 A6 I6 A2 I2 A3 I3 A4 I4 A5 I5 thw skala M1 )
  
  (command "-layer" "S" "0" "")
  (setq A1 (polar Tawl (dtr sdt) (/ BS 2)))
  (setq I1 (polar Tawl (dtr (+ sdt 180)) (/ BS 2)))
  (setq A6 (polar A1 (dtr sdt) (* Ms HS)))
  (setq I6 (polar I1 (dtr (+ sdt 180)) (* Ms HS)))
  (setq A6 (polar A6 (dtr (+ sdt 90)) HS))
  (setq I6 (polar I6 (dtr (+ sdt 90)) HS))
  (setq A2 (polar A6 (dtr sdt) (* Ms WS)))
  (setq I2 (polar I6 (dtr (+ 180 sdt)) (* Ms WS)))
  (setq A2 (polar A2 (dtr (+ sdt 90)) WS))
  (setq I2 (polar I2 (dtr (+ sdt 90)) WS))
  (setq A3 (polar A2 (dtr sdt) LKA))
  (setq I3 (polar I2 (dtr (+ sdt 180)) LKI))
  (setq A4 (polar A3 (dtr sdt) (* ML (abs (- (+ EMA WS) ETA)))))
  (setq A4 (polar A4 (dtr (+ sdt 270)) (- (+ EMA WS) ETA)))
  (setq I4 (polar I3 (dtr (+ sdt 180)) (* ML (abs (- (+ EMA WS) ETA)))))
  (setq I4 (polar I4 (dtr (+ sdt 270)) (* ML (- (+ EMA WS) ETA))))
  (setq A5 (polar A4 (dtr sdt) (/ Skala 50.0)))
  (setq I5 (polar I4 (dtr (+ sdt 180)) (/ Skala 50.0)))  
  

  (command "color" wuta)
  (command "line" I5 I4 I3 I2 I1 A1 A2 A3 A4 A5 "")

  
  (command "color" wuta)
  (command "line" I6 A6 "")
  (setq THW (polar Tawl (dtr (+ sdt 90)) HS))
  (command "insert" (strcat "c:/jackcad2024/cross/HWL") THW skala skala sdt)
  (if (= tipes 0)(progn (arsirtanah skala I5 I4)(arsirtanah skala I4 I3)(arsirtanah skala I3 I2)(arsirtanah skala I2 I1)(arsirtanah skala I1 A1)(arsirtanah skala A1 A2)(arsirtanah skala A2 A3)(arsirtanah skala A3 A4)(arsirtanah skala A4 A5)))
  (if (or (= tipes 1)(= tipes 4)(= tipes 8)(= tipes 11)(= tipes 12)(= tipes 13)(= tipes 14)(= tipes 15))(progn (arsirtanah skala I5 I4)(arsirtanah skala I4 I3)(arsirtanah skala I3 I2)(arsirtanah skala A2 A3)(arsirtanah skala A3 A4)(arsirtanah skala A4 A5)))
  (if (or (= tipes 2)(= tipes 5)(= tipes 9)(= tipes 16)(= tipes 18)(= tipes 20))(progn (arsirtanah skala I5 I4)(arsirtanah skala I4 I3)(arsirtanah skala I3 I2)(arsirtanah skala I1 A1)(arsirtanah skala A1 A2)(arsirtanah skala A2 A3)(arsirtanah skala A3 A4)(arsirtanah skala A4 A5)))
  (if (or (= tipes 3)(= tipes 6)(= tipes 10)(= tipes 17)(= tipes 19)(= tipes 21))(progn (arsirtanah skala I5 I4)(arsirtanah skala I4 I3)(arsirtanah skala I3 I2)(arsirtanah skala I2 I1)(arsirtanah skala I1 A1)(arsirtanah skala A2 A3)(arsirtanah skala A3 A4)(arsirtanah skala A4 A5)))  
  (if (= tipes 7)(progn (arsirtanah skala I5 I4)(arsirtanah skala I4 I3)(arsirtanah skala I3 I2)(arsirtanah skala I2 I1)(arsirtanah skala A1 A2)(arsirtanah skala A2 A3)(arsirtanah skala A3 A4)(arsirtanah skala A4 A5)))  
  
  (tip-pas)                  
  
  (setq M1 (polar A1 (angle A1 A2) (/ (distance A1 A2) 2)))  
  (command "color" wdim)
  (if (/= ms 0)(textjc hdim M1 "BC" (rtd (angle A1 A2)) (strcat "1:"(rtos ms 2 1))))
  (D-CH skala A2 A3 0.007)
  (D-CH skala I3 I2 0.007)
  
  (D-CH skala I1 A1 -0.01)
  
  
  (if (> Bs (* 0.011 skala))(T-E  "BL" I1 (- EMA Hs) (rtd (angle I1 A1)) )(T-E  "ML" (polar A1 (angle I1 A1) 0.5) (- EMA Hs) (rtd (angle I1 A1))))
  
  (if (> Bs (* 0.011 skala))(T-E  "BL" I6 EMA (rtd (angle I6 A6))) (T-E  "ML" (polar A6 (angle I6 A6) 0.5) EMA (rtd (angle I1 A1))))  
  (T-E  "BL" I3 (+ EMA Ws) (rtd (angle I3 I2)))
  (T-E  "BL" A4 Eta (rtd (angle A4 A5)))
  (setq akhi5 I5 akha5 A5)
  
  )
  

  
  
  
  
  
  
  
  

