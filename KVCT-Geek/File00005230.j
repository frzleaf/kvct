// -- LOCAL TEMPLATES -------------------------------------------------------
Frame "BACKDROP" "BoxedTextBackgroundTemplate" {
		DecorateFileNames, //Look-Up Names in some String table (for example gameinterface)
        BackdropTileBackground, //Tile mode enabled
		BackdropBackground  "ToolTipBackground", //BackgroundFile
        BackdropCornerFlags "UL|UR|BL|BR|T|L|B|R",
        BackdropCornerSize  0.008, //higher numbers make the corners bigger.
        BackdropBackgroundInsets 0.0022 0.0022 0.0022 0.0022, //makes the background smaller, from the outside.
        BackdropEdgeFile  "ToolTipBorder", //the border File
        BackdropBlendAll,
}
// -- Frames -------------------------------------------------------
Frame "BACKDROP" "BoxedText" INHERITS "BoxedTextBackgroundTemplate" {
	UseActiveContext,
	
	Frame "TEXT" "BoxedTextTitle" {
		UseActiveContext,
		DecorateFileNames,
		SetPoint TOPLEFT, "BoxedText", TOPLEFT, 0.005, -0.005, //Positionate "BoxedTextSimpleTitle"'s TOPLEFT to "BoxedText"'s TOPLEFT with an offset
		SetPoint TOPRIGHT, "BoxedText", TOPRIGHT, -0.005, -0.005,
		FontFlags "FIXEDSIZE",
		FrameFont "MasterFont", 0.012, "",
		FontColor 1.0 1.0 1.0 1.0, //Red Green Blue Alpha 0.0 to 1.0
		FontShadowColor 0.0 0.0 0.0 0.9,
		FontShadowOffset 0.001 -0.001,
	}
	
	Frame "TEXT" "BoxedTextValue" {
		UseActiveContext,
		DecorateFileNames,
		SetPoint TOPLEFT, "BoxedText", TOPLEFT, 0.005, -0.02,
		SetPoint BOTTOMRIGHT,  "BoxedText", BOTTOMRIGHT, -0.005, 0.005,
		FontFlags "FIXEDSIZE",
		FrameFont "MasterFont", 0.010, "",
		FontColor 1.0 1.0 1.0 1.0,
		FontShadowColor 0.0 0.0 0.0 0.9,
		FontShadowOffset 0.001 -0.001,
	}
}


String "MyBarTextTemplate" { 
	//FontColor 0.99 0.427 0.0705 1.0, //Red Green Blue Alpha 0.0 to 1.0
	FontColor 1.0 1.0 1.0 1.0,
	FontShadowColor 0.0 0.0 0.0 0.9,
	FontShadowOffset 0.001 -0.001,
	Font "MasterFont", 0.01, //MasterFont is only valid with "DecorateFileNames,"
}
Frame "SIMPLESTATUSBAR" "MyBarEx" {
	Width 0.07, //Default Width
	Height 0.012, //Default Height
	BarTexture "Replaceabletextures\Teamcolor\Teamcolor00.blp", //Default BarTexture
	Layer "BACKGROUND" { //A simpleFrames thing, where this is placed layer wise
		Texture "MyBarExBackground"{ //the BACKGROUND Texture named "MyBarExBackground" its also a frame and a child
			File "Replaceabletextures\Teamcolor\Teamcolor27.blp", //Default Texture for "MyBarExBackground"
		}
	}
	Frame "SIMPLEFRAME" "MyBarExFrame" { //Child of "MyBarEx"
		DecorateFileNames, //Lookup FileNames in a StringList
		SetAllPoints, //copy "MyBarEx"
		Layer "ARTWORK" {
			Texture "MyBarExBorder" {
				File "SimpleXpBarBorder", //Default Texture for "MyBarExBorder"
			}
			String "MyBarExText" INHERITS "MyBarTextTemplate" {
				Text "MyBarEx", //Default Text for "MyBarExText" which takes over Data from "MyBarTextTemplate"
			}
		}
	}
}

Frame "SIMPLESTATUSBAR" "MyBar" {
	Width 0.07,
	Height 0.012,
	BarTexture "Replaceabletextures\Teamcolor\Teamcolor00.blp",
	Layer "BACKGROUND" {
		Texture "MyBarBackground" {
			File "Replaceabletextures\Teamcolor\Teamcolor27.blp",
		}
	}
	Frame "SIMPLEFRAME" "MyBarFrame" {
		SetAllPoints,
		DecorateFileNames,
		Layer "ARTWORK" {
			String "MyBarText" INHERITS "MyBarTextTemplate" {
				Text "MyBar",
			}
		}
	}
}
Frame "SIMPLESTATUSBAR" "MySimpleBar" {
	Width 0.07,
	Height 0.012,
}

