//=================================
//gambar standar
S_S : dialog {
	label = "Gambar Standar Bangunan Air";
	:row {
	:boxed_radio_column {
		//label = "Jembatan Kayu";
		:radio_button {
			label = "Jembatan Kayu";
			mnemonic = "J";
			key = "jk_1";
			//value = "1";
			}
		:radio_button {
			label = "Pintu Sorong 1 stang";
			mnemonic = "P";
			key = "ps_1";
			//value = "1";
			}
		
		:radio_button {
			label = "Rumah Tipe 36";
			mnemonic = "R";
			key = "rt_1";
			//value = "1";
			}
		:radio_button {
			label = "Skot Balok";
			mnemonic = "S";
			key = "sb_1";
			//value = "1";
			}
		:radio_button {
			label = "Tabat";
			mnemonic = "T";
			key = "tb_1";
			//value = "1";
			}
		:radio_button {
			label = "Atap Pelindung Pintu";
			mnemonic = "A";
			key = "APP_1";
			//value = "1";
			}
		:radio_button {
			label = "Papan Eksploitasi";
			mnemonic = "P";
			key = "PE_1";
			//value = "1";
			}
		:radio_button {
			label = "Kran";
			mnemonic = "N";
			key = "kr_1";
			//value = "1";
			}



		}
	:boxed_radio_column {		
		:radio_button {
			label = "Pintu Klep";
			mnemonic = "K";
			key = "vg_1";
			//value = "1";
			}
		:radio_button {
			label = "Gorong-gorong";
			mnemonic = "G";
			key = "gr_1";
			//value = "1";
			}
		
		:radio_button {
			label = "Jembatan Balok T";
			mnemonic = "B";
			key = "jb_1";
			//value = "1";
			}
		:radio_button {
			label = "Terjunan";
			mnemonic = "U";
			key = "tj_1";
			//value = "1";
			}
		:radio_button {
			label = "Pintu Angkat";
			mnemonic = "G";
			key = "pa_1";
			//value = "1";
			}
		:radio_button {
			label = "Tangga cuci";
			mnemonic = "T";
			key = "tc_1";
			//value = "1";
			}
		:radio_button {
			label = "Tempat Mandi Hewan";
			mnemonic = "T";
			key = "tmh_1";
			//value = "1";
			}
		:radio_button {
			label = "Plat Pelayanan";
			mnemonic = "T";
			key = "ppl_1";
			//value = "1";
			}
		}

		}

		ok_cancel;
		}

//=============
//setting gambar
S_et : dialog {
	label = "Pengaturan Gambar";
	:row {
	label = "Situasi ";
	:popup_list {
		label = "Skala";
		key = "si_sc";
		value = "si_sc_d";
		edit_width = 10;
		list = "\n25\n50\n100\n200\n500\n1000\n2000\n5000\n10000\n15000\n20000\n25000";						
		}
	:edit_box {
		label = "       Desimal ";
		key = "si_de";
		edit_width = 10;
		}
	}
        :text { label = "";}
	:row {
	label = "Long Section";
	:column {
	:text { label = "";}
	:text { label = "Skala Vertikal";}
	:text { label = "Skala Horisontal";}
	:text { label = "Jarak Minimum dari datum";}
	:text { label = "Jarak Maksimum dari datum";}
	:text { label = "Panjang Gambar";}
	:text { label = "Desimal";}
	:text { label = "Garis Bantu Vertikal (y/n)";}
	:text { label = "Garis Bantu Horisontal (y/n)";}
	}
	:column {
	:text { label = "Main System";}
	:popup_list {
		key = "lsv_m";	
		edit_width = 6;		
		list = "\n50\n100\n200\n500\n1000\n2000";						
		}
	:popup_list {
		key = "lsh_m";	
		edit_width = 6;
		list = "\n50\n100\n200\n500\n1000\n2000\n5000";						
		}
	:edit_box {
		key = "lji_m";
		edit_width = 7;
		}
	:edit_box {
		key = "lja_m";
		edit_width = 7;
		}
	:edit_box {
		key = "lpg_m";
		edit_width = 7;
		}

	:edit_box {
		key = "lde_m";
		edit_width = 7;
		}
	:edit_box {
		key = "lgv_m";
		edit_width = 1;
		}
	:edit_box {
		key = "lgh_m";
		edit_width = 1;
		}
	
	}


	:column {
	:text { label = "Tersier";}
	:popup_list {
		key = "lsv_t";	
		edit_width = 6;
		list = "\n50\n100\n200\n500\n1000\n2000";						
		}
	:popup_list {
		key = "lsh_t";	
		edit_width = 6;
		list = "\n50\n100\n200\n500\n1000\n2000\n5000";						
		}
	:edit_box {
		key = "lji_t";
		edit_width = 7;
		}
	:edit_box {
		key = "lja_t";
		edit_width = 7;
		}
	:edit_box {
		key = "lpg_t";
		edit_width = 7;
		}

	:edit_box {
		key = "lde_t";
		edit_width = 7;
		}
	:edit_box {
		key = "lgv_t";
		edit_width = 1;
		}
	:edit_box {
		key = "lgh_t";
		edit_width = 1;
		}
	
	}

	:column {
	:text { label = "Drain";}
	:popup_list {
		key = "lsv_d";	
		edit_width = 6;
		list = "\n50\n100\n200\n500\n1000\n2000";						
		}
	:popup_list {
		key = "lsh_d";	
		edit_width = 6;
		list = "\n50\n100\n200\n500\n1000\n2000\n5000";						
		}
	:edit_box {
		key = "lji_d";
		edit_width = 7;
		}
	:edit_box {
		key = "lja_d";
		edit_width = 7;
		}
	:edit_box {
		key = "lpg_d";
		edit_width = 7;
		}

	:edit_box {
		key = "lde_d";
		edit_width = 7;
		}
	:edit_box {
		key = "lgv_d";
		edit_width = 1;
		}
	:edit_box {
		key = "lgh_d";
		edit_width = 1;
		}
	
	}
	}

        :text { label = "";}
	:row {
	label = "Cross Section";
	:column {
	:text { label = "";}
	:text { label = "Skala Horisontal";}
	:text { label = "Skala Verikal";}
	:text { label = "Jumlah Kolom";}
	:text { label = "Jumlah Baris";}
	:text { label = "Jarak dari datum";}
	}
	:column {
	:text { label = "Main";}
	:popup_list {
		key = "cs_m";	
		edit_width = 6;
		list = "\n50\n100\n200\n300\n400\n500\n1000";						
		}
	:popup_list {
		key = "cs_mver";	
		edit_width = 6;
		list = "\n50\n100\n200\n300\n400\n500\n1000";						
		}
	:popup_list {
		key = "ck_m";	
		edit_width = 6;
		list = "\n \n1\n2\n3";						
		}
	:popup_list {
		key = "cb_m";	
		edit_width = 6;
		list = "\n \n1\n2\n3\n4\n5\n6";								
		}
	:edit_box {
		key = "cd_m";
		edit_width = 7;		
		}
	}	

	:column {
	:text { label = "Tersier";}
	:popup_list {
		key = "cs_t";	
		edit_width = 6;
		list = "\n50\n100\n200\n300\n400\n500";						
		}
	:popup_list {
		key = "cs_tver";	
		edit_width = 6;
		list = "\n50\n100\n200\n300\n400\n500";						
		}
	:popup_list {
		key = "ck_t";	
		edit_width = 6;
		list = "\n \n1\n2\n3";						
		}
	:popup_list {
		key = "cb_t";	
		edit_width = 6;
		list = "\n \n1\n2\n3\n4\n5\n6";								
		}
	:edit_box {
		key = "cd_t";
		edit_width = 7;		
		}
	}	

	:column {
	:text { label = "Drain";}
	:popup_list {
		key = "cs_d";	
		edit_width = 6;
		list = "\n50\n100\n200\n300\n400\n500\n1000";						
		}
	:popup_list {
		key = "cs_dver";	
		edit_width = 6;
		list = "\n50\n100\n200\n300\n400\n500\n1000";						
		}
	:popup_list {
		key = "ck_d";	
		edit_width = 6;
		list = "\n \n1\n2\n3";						
		}
	:popup_list {
		key = "cb_d";	
		edit_width = 6;
		list = "\n \n1\n2\n3\n4\n5\n6";								
		}
	:edit_box {
		key = "cd_d";
		edit_width = 7;		
		}
	}	
	}
	:text { label = "";}
			ok_cancel;
	}
	
//=============
//Option cross
O_cros : dialog {
	label = "Option - Cross Section";
	:row {
	label = "Setting Huruf";

	:column {
	:popup_list {
		label = "Datum ";
		key = "o_hpers";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Kubikasi ";
		key = "o_hvol";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Elevasi ";
		key = "o_helev";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	}


	:column {
	:popup_list {
		label = "Patok ";
		key = "o_hpat";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Jarak ";
		key = "o_hjar";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Muka air ";
		key = "o_hma";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	}

	:column {
	:popup_list {
		label = "Slope ";
		key = "o_hgam";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Judul Gambar";
		key = "o_hjdl";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Dimensi Saluran";
		key = "o_hdim";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	}

	}

        :text { label = "";}
	:row {
	label = "Tebal Garis";

	:column {
	:popup_list {
		label = "Grs vertikal";
		key = "o_wver";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "Grs tnh asli";
		key = "o_wta";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	}	

	:column {
	:popup_list {
		label = "Grs desain";
		key = "o_wts";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "arsiran";
		key = "o_war";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	}	

	:column {
	:popup_list {
		label = "Grs kupasan";
		key = "o_wkup";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "Grs horisontal";
		key = "o_whorr";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}	
		
	}	
	}

        :text { label = "";}
	:row {
	label = "Ukuran Gambar";

	:column {
	:edit_box {
		label = "Margin atas";
		key = "o_mrat";
		edit_width = 6;
		}
		
	:edit_box {
		label = "Margin bawah";
		key = "o_mrbh";
		edit_width = 6;
		}
	:edit_box {
		label = "Jarak antar cros";
		key = "o_jrac";
		edit_width = 6;
		}
		
	}	

	:column {
	:edit_box {
		label = "Margin kiri";
		key = "o_mrki";
		edit_width = 6;
		}
		
	:edit_box {
		label = "Margin kanan";
		key = "o_mrka";
		edit_width = 6;
		}
	:popup_list {
		label = "Spasi Grs horisontal";
		key = "o_SGH";	
		edit_width = 6;		
		list = "\nNo\n0.2\n0.25\n0.5\n1.0\n2.5\n5";
		}
	}	


	:column {
	:edit_box {
		label = "Lebar gambar";
		key = "o_lgb";
		edit_width = 6;
		}
		
	:edit_box {
		label = "Panjang Gambar";
		key = "o_pgb";
		edit_width = 6;
		}
	:popup_list {
		label = "Spasi Grs Vertikal";
		key = "o_SGV";	
		edit_width = 6;		
		list = "\nNo\n0.2\n0.25\n0.5\n1.0\n2.5\n5";
		}
	}	
	}



        :text { label = "";}
	:row {
	label = "";

	:edit_box {
		label = "Tebal Kupasan";
		key = "o_tkup";
		edit_width = 6;
		}
		
	:edit_box {
		label = "Lebar BPT";
		key = "o_bpt";
		edit_width = 6;
		}

	:popup_list {
		label = "Desimal";
		key = "o_dig";
		edit_width = 4;
		list = "\n \n1\n2\n3\n4";
		}		
	}


	
	:column {
	label = "Letak Text";
	:row {
	:edit_box {
		label = "Prefix Judul";
		key = "o_Pjdl";
		edit_width = 30;
		}

	: button {
		label = "Judul Gambar";
		key = "o_Tjdl";						
		fixed_width = true;
		}
		}

	:row {
	: button {
		label = "No Profil";
		key = "o_Nop";						
		fixed_width = true;
		}
	: button {
		label = "Jarak";
		key = "o_jar";						
		fixed_width = true;
		}
	: button {
		label = "Text1";
		key = "o_te1";						
		fixed_width = true;
		}
	: button {
		label = "Text2";
		key = "o_te2";						
		fixed_width = true;
		}
	: button {
		label = "No Lembar";
		key = "o_Nol";						
		fixed_width = true;
		}
	}
	}
	
	
		

        
	:row {
	
	label = "Hatch";
	

	:edit_box {
		label = "Cut&Fill";
		key = "o_htcgal";
		edit_width = 6;
		}
		
	:edit_box {
		label = "Pasangan";
		key = "o_htcpas";
		edit_width = 6;
		}

	:edit_box {
		label = "Jalan";
		key = "o_htcjal";
		edit_width = 6;
		}		
	}	

	: button {
			label = "Set to default";
			key = "stdf";			
			//width = 8;
			fixed_width = true;
			}
			
	:text { label = "";}
			ok_cancel;
	}
	
//=============
//Option long
O_long : dialog {
	label = "Option - Long Section";
	:row {
	label = "Setting Huruf";

	:column {
	:popup_list {
		label = "Teks Dimensi";
		key = "o_hdim";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Teks Bangunan ";
		key = "o_hbgn";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Elevasi ";
		key = "o_helev";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	:popup_list {
		label = "Patok ";
		key = "o_hpat";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	}

	:column {
		
	:popup_list {
		label = "Hektometer ";
		key = "o_hhek";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Teks Skala ";
		key = "o_hsca";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}

	:popup_list {
		label = "Judul Gambar";
		key = "o_hjdl";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "footer";
		key = "o_hgam";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	}

	}


	
	:text { label = "";}
			ok_cancel;
	}
	


//=============
//Option situasi
O_sit : dialog {
	label = "Option - Situasi";
	:row {
	
	:column {
	label = "Setting Huruf";
	:popup_list {
		label = "Huruf Patok";
		key = "o_hpat";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Huruf Elevasi ";
		key = "o_helev";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Huruf BM ";
		key = "o_hbm";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	:popup_list {
		label = "Huruf Grid";
		key = "o_hgrd";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	}

	:column {
	label = "Setting Tebal Garis";	
	:popup_list {
		label = "Garis Poligon";
		key = "o_wplg";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "Titik poligon";
		key = "o_wblt";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}

	:popup_list {
		label = "Garis Cross";
		key = "o_wcr";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "Garis grid";
		key = "o_wgr";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	}

	}

	:text { label = "";}
		ok_cancel;
	}
	
//=============
//Daftar Proyek
Da_pro : dialog {
	label = "Setting Proyek";
	:column {
		:edit_box {
		label = "Nama Proyek Aktif";
		key = "s_name";
		edit_width = 50;
		color = yellow;
		}
		:row {
			:edit_box {
			label = "Directory";
			key = "s_dir";
			edit_width = 50;
			color = yellow;
			}
			: button {
			label = "Browse";
			key = "pil_dir";			
			//width = 8;
			fixed_width = true;
			}
		}
		: list_box {
		label = "Double klik Daftar Project di bawah ini untuk mengaktifkan proyek";
                key = "d_pro";
                color = yellow;
                width = 50;
                height = 20;
                allow_accept = true;
                }
                :row {
			: button {
			label = "Edit";
			key = "s_edit";			
			//width = 8;
			fixed_width = true;
			}
			: button {
			label = "Delete";
			key = "s_delete";			
			//width = 8;
			fixed_width = true;
			}
			: button {
			label = "Add";
			key = "s_add";			
			//width = 8;
			fixed_width = true;
			}
			: button {
			label = "New";
			key = "s_new";			
			//width = 8;
			fixed_width = true;
			}
		}
		:text { label = "";}
		ok_cancel;

	}
	
}


//=============
//Password
Iptw : dialog {
	label = "jackcad2024 Activation Code";
	:column {
	label = "Request Code :";
		:edit_box {
//		label = "Request Code";
		key = "R_code";
		edit_width = 30;
		color = red;
		}
		}
:column {
	label = "Activation Code :";
		
		:edit_box {
		label = "Topographic ";
		key = "T_code";
		edit_width = 30;
		color = yellow;
		}
		:edit_box {
		label = "Canal Design ";
		key = "C_code";
		edit_width = 30;
		color = yellow;
		}
		:edit_box {
		label = "Structure ";
		key = "S_code";
		edit_width = 30;
		color = yellow;
		}
		:edit_box {
		label = "HeriAds ";
		key = "H_code";
		edit_width = 30;
		color = yellow;
		}
		}
		
		:text { label = "";}
//
//:text { label = "Bima (Admin) +6285135637931";}
//:text { label = "Heri (Technical Support) +6289610500987";}

		
:column {
label = "Contact :";
:text { label = "Email : jackcad.id@gmail.com";}
:text { label = "Bima (Admin) +6285135637931";}
:text { label = "Heri (Technical Support) +6289610500987";}
}
				:text { label = "";}

:row {
				: button {
			label = "Click here to order JackCAD and HeriAds";
			key = "pesanan2";
			height = 4;
			//width = 8;
			fixed_width = true;
			}
	
				: button {
			label = "Chat with JackCAD";
			key = "chat1";
			height = 4;
			//width = 8;
			fixed_width = true;
			}
}

	
		ok_cancel;
}


//=============
//Cetak
Cetak : dialog {
	label = "Long&Cross Printing";
	:row {
		:radio_button {
			label = "Ploter";
			mnemonic = "P";
			key = "pl";
			//value = "1";
			}
		:radio_button {
			label = "Printer";
			mnemonic = "t";
			key = "pr";
			//value = "1";
			}
		:radio_button {
			label = "PDF";
			mnemonic = "F";
			key = "pd";
			//value = "1";
			}
		}
	:row {
		label = "Style :";
		:radio_button {
			label = "Hitam A1";
			mnemonic = "i";
			key = "HA1";
			//value = "1";
			}
		:radio_button {
			label = "Hitam A3";
			mnemonic = "a";
			key = "HA3";
			//value = "1";
			}
		:radio_button {
			label = "Warna A1";
			mnemonic = "W";
			key = "WN1";
			//value = "1";
			}
		:radio_button {
			label = "Warna A3";
			mnemonic = "r";
			key = "WN3";
			//value = "1";
			}
		}
	:row {
		:column {
			label = "Cross Section";
			:popup_list {
				label = "Skala ";
				key = "CS";	
				edit_width = 8;		
				list = "\n50\n100\n200\n500\n1000\n2000";
				}
			:edit_box {
				label = "Lembar ke ";
				key = "LC1";
				edit_width = 5;
				color = yellow;
				}
			:edit_box {
				label = "Sampai lembar ";
				key = "LC2";
				edit_width = 5;
				color = yellow;
				}
			}
		:column {
			label = "Long Section";
				:popup_list {
				label = "Skala ";
				key = "LS";
				edit_width = 8;
				list = "\n500\n1000\n2000\n5000";
				}
			:edit_box {
				label = "Lembar ke ";
				key = "LL1";
				edit_width = 5;
				color = yellow;
				}
			:edit_box {
				label = "Sampai lembar ";
				key = "LL2";
				edit_width = 5;
				color = yellow;
				}
			}
			
			}
	:edit_box {
				label = "Nama File PDF ";
				key = "namafilepdf";
				edit_width = 30;
				color = yellow;
				}
				ok_cancel;
				}


//=============
//Option situasi
O_bangunan : dialog {
	label = "Option - Bangunan";
	:row {
	
	:column {
	label = "Setting Huruf";
	:popup_list {
		label = "Huruf Elevasi";
		key = "o_hele";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Huruf Dimensi ";
		key = "o_hdim";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	:popup_list {
		label = "Huruf Pot. Denah ";
		key = "o_hpoden";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	:popup_list {
		label = "Huruf Potongan ";
		key = "o_hpot";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";
		}
	:popup_list {
		label = "Huruf Judul";
		key = "o_hjudul";	
		edit_width = 6;		
		list = "\nF18\nF20\nF25\nF30\nF35\nF50\nF70\nF100\nF150";						
		}
	}

	:column {
	label = "Setting Tebal Garis";	
	:popup_list {
		label = "Garis Utama";
		key = "o_wuta";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "Garis Terhalang";
		key = "o_whalang";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "Garis lining";
		key = "o_wlin";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	:popup_list {
		label = "Garis dimensi";
		key = "o_wdim";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}	
	:popup_list {
		label = "Garis Potongan";
		key = "o_wpot";	
		edit_width = 6;		
		list = "\n \n0.1\n0.2\n0.3\n0.4\n0.5\n0.6\n0.7\n0.8\n0.9\n1.0";
		}
	}

	}

	:text { label = "";}
		ok_cancel;
	}



//=============
//Bantuan
Bantuan : dialog {
	label = "JackCAD Help";
	:column {

			: button {			
			label = "Website";			
			key = "WebJ";			
			width = 20;
			height = 5;
			}
	:text { label = "Manual JackCAD";}
	:row {
			: button {			
			label = "Install";			
			key = "Min";			
			width = 7;
			//height = 5;
			}
			: button {			
			label = "Proyek";			
			key = "Mpro";			
			width = 7;
			//height = 5;
			}
			: button {			
			label = "Topografi";			
			key = "Mtop";			
			width = 7;
			//height = 5;
			}
			}
	:row {
			: button {			
			label = "Canal Design";			
			key = "Mcan";			
			width = 7;
			//height = 5;
			}
			: button {			
			label = "Structure";			
			key = "Mstru";			
			width = 7;
			//height = 5;
			}
			: button {			
			label = "Tools";			
			key = "Mtol";			
			width = 7;
			//height = 5;
			}
			}
//			: button {
//			label = "Tutorial Video";			
//			key = "Vitut";			
//			width = 20;
//			height = 5;			
//			}
			: button {
			label = "Click here to order JackCAD and HeriAds";
			key = "pesanan";			
			width = 20;
			height = 5;
			
			}
		}
		:column {
label = "Contact :";
:text { label = "Email : jackcad.id@gmail.com";}
:text { label = "Bima (Admin) +6285135637931";}
:text { label = "Heri (Technical Support) +6289610500987";}
}
		:text { label = "";}
		ok_cancel;

	}
	

////=============
//Manual Drawing
//Manualstruct : dialog {
//	label = "Drawing Manual";
//	:row {
//		:text { label = "Saluran";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "Salplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "Salcros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "Sallong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//
//	:row {
//		:text { label = "Peralihan";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "alihplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "alihcros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "alihlong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//	:row {
//		:text { label = "Pintu";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "pintuplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "pintucros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "pintulong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//
//	:row {
//		:text { label = "Belokan";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "belokplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "belokcros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "beloklong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//
//	:row {
//		:text { label = "Gorong-gorong";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "gorplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "gorcros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "gorlong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//
//	:row {
//		:text { label = "Bangunan Ukur";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "ukurplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "ukurcros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "ukurlong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//
//	:row {
//		:text { label = "Terjun Tegak";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "terjunplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "terjuncros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "terjunlong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//
//	
//	:row {
//		:text { label = "Terjun Miring";width = 15;}
//		: button {			
//			label = "Plan";			
//			key = "vlugterplan";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Cross";			
//			key = "vlugtercros";			
//			width = 7;
//			//height = 5;
//			}
//		: button {			
//			label = "Long";			
//			key = "vlugterlong";			
//			width = 7;
//			//height = 5;
//			}
//			}
//
//		:text { label = "";}
//		ok_cancel;
//
//	}
	
