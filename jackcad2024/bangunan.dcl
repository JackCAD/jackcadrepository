
//=============
//Daftar Proyek
//Da_pro : dialog {
//	label = "Setting Proyek";
//	:column {
//		:edit_box {
//		label = "Nama Proyek Aktif";
//		key = "s_name";
//		edit_width = 50;
//		color = yellow;
//		}
//		:row {
//			:edit_box {
//			label = "Directory";
//			key = "s_dir";
//			edit_width = 50;
//			color = yellow;
//			}
//			: button {
//			label = "Browse";
//			key = "pil_dir";			
//			//width = 8;
//			fixed_width = true;
//			}
//		}
//		: list_box {
//		label = "Double klik Daftar Project di bawah ini untuk mengaktifkan proyek";
//                key = "d_pro";
//                color = yellow;
//                width = 50;
//                height = 20;
//                allow_accept = true;
//                }
//                :row {
//			: button {
//			label = "Edit";
//			key = "s_edit";			
//			//width = 8;
//			fixed_width = true;
//			}
//			: button {
//			label = "Delete";
//			key = "s_delete";			
//			//width = 8;
//			fixed_width = true;
//			}
//			: button {
//			label = "Add";
//			key = "s_add";			
//			//width = 8;
//			fixed_width = true;
//			}
//			: button {
//			label = "New";
//			key = "s_new";			
//			//width = 8;
//			fixed_width = true;
//			}
//		}
//		:text { label = "";}
//		ok_cancel;
//
//	}
//	
//}



////=============
//Manual Drawing
Manualstruct : dialog {
	label = "Drawing Manual";
	:row {
		:text { label = "Saluran";width = 15;}
		: button {			
			label = "Plan";			
			key = "Salplan";			
			//width = 5;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "Salcros";			
			//width = 5;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "Sallong";			
			//width = 5;
			//height = 5;
			}
			}

	:row {
		:text { label = "Peralihan";width = 15;}
		: button {			
			label = "Plan";			
			key = "alihplan";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "alihcros";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "alihlong";			
			width = 7;
			//height = 5;
			}
			}
	:row {
		:text { label = "Pintu";width = 15;}
		: button {			
			label = "Plan";			
			key = "pintuplan";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "pintucros";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "pintulong";			
			width = 7;
			//height = 5;
			}
			}

	:row {
		:text { label = "Belokan";width = 15;}
		: button {			
			label = "Plan";			
			key = "belokplan";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "belokcros";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "beloklong";			
			width = 7;
			//height = 5;
			}
			}

	:row {
		:text { label = "Gorong-gorong";width = 15;}
		: button {			
			label = "Plan";			
			key = "gorplan";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "gorcros";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "gorlong";			
			width = 7;
			//height = 5;
			}
			}

	:row {
		:text { label = "Bangunan Ukur";width = 15;}
		: button {			
			label = "Plan";			
			key = "ukurplan";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "ukurcros";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "ukurlong";			
			width = 7;
			//height = 5;
			}
			}

	:row {
		:text { label = "Terjun Tegak";width = 15;}
		: button {			
			label = "Plan";			
			key = "terjunplan";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "terjuncros";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "terjunlong";			
			width = 7;
			//height = 5;
			}
			}

	
	:row {
		:text { label = "Terjun Miring";width = 15;}
		: button {			
			label = "Plan";			
			key = "vlugterplan";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Cross";			
			key = "vlugtercros";			
			width = 7;
			//height = 5;
			}
		: button {			
			label = "Long";			
			key = "vlugterlong";			
			width = 7;
			//height = 5;
			}
			}

		:text { label = "";}
		ok_cancel;

	}

Salurancros : dialog {
	label = "Cross Saluran";

	: button {			
			label = "Lokasi (klik)";			
			key = "Sallok";			
			width = 5;
			//height = 5;
			}

	:edit_box {
			label = "Skala";
			key = "Salskala";
			edit_width = 5;
			}
			
	:edit_box {
			label = "Sudut";
			key = "Salsudut";
			edit_width = 5;
			}
	
	:edit_box {
			label = "b (m)";
			key = "Salb";
			edit_width = 5;
			}
	:edit_box {
			label = "h (m)";
			key = "Salh";
			edit_width = 5;
			}
	:edit_box {
			label = "m";
			key = "Salm";
			edit_width = 5;
			}
	:edit_box {
			label = "w (m)";
			key = "Salw";
			edit_width = 5;
			}
	:edit_box {
			label = "tgl kiri (m)";
			key = "Saltglki";
			edit_width = 5;
			}
	:edit_box {
			label = "tgl kanan (m)";
			key = "Saltglka";
			edit_width = 5;
			}
	:edit_box {
			label = "jln ki (m)";
			key = "Saljlki";
			edit_width = 5;
			}
	:edit_box {
			label = "jln ka (m)";
			key = "Saljlka";
			edit_width = 5;
			}
	:edit_box {
			label = "Elev m.a (m)";
			key = "Salema";
			edit_width = 5;
			}
	:edit_box {
			label = "Elev tanah (m)";
			key = "Saleta";
			edit_width = 5;
			}
	:edit_box {
			label = "Tipe sal";
			key = "Saltipe";
			edit_width = 5;
			}

			
		:text { label = "";}
		ok_cancel;

	}
