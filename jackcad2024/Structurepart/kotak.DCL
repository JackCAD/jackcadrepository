box_dialog : dialog {
    label = "Draw Box";
    : column {
        : row {
            : text { label = "Width:"; }
            : edit_box {
                key = "width_box";
                value = "100";
            }
        }
        : row {
            : text { label = "Height:"; }
            : edit_box {
                key = "height_box";
                value = "100";
            }
        }
      
		:text { label = "";}
		ok_cancel;

    }
}