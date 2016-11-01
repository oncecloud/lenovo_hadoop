package edu.duke.starfish.visualizer.view;

import javafx.scene.text.Font;


/**
 * @author dongfei
 */
package def STAGE_WIDTH = 760;
package def STAGE_HEIGHT = 650;
// css. Unfortunately, JavaFX 1.2 does not support
package def stylesheets = "{__DIR__}images/main.css" ;
package def backgroundImage = "{__DIR__}images/starfish.jpg";

package def colors = [
       "ALICEBLUE", "ANTIQUEWHITE", "AQUA", "AQUAMARINE", "AZURE", "BEIGE",
       "BISQUE", "BLACK", "BLANCHEDALMOND", "BLUE", "BLUEVIOLET", "BROWN",
       "BURLYWOOD", "CADETBLUE", "CHARTREUSE", "CHOCOLATE", "CORAL",
       "CORNFLOWERBLUE", "CORNSILK", "CRIMSON", "CYAN", "DARKBLUE", "DARKCYAN",
       "DARKGOLDENROD", "DARKGREEN", "DARKGREY", "DARKKHAKI",
       "DARKMAGENTA","DARKOLIVEGREEN", "DARKORANGE", "DARKORCHID", "DARKRED",
       "DARKSALMON", "DARKSEAGREEN", "DARKSLATEBLUE",
       "DARKSLATEGREY", "DARKTURQUOISE", "DARKVIOLET", "DEEPPINK", "DEEPSKYBLUE",
       "DIMGREY", "DODGERBLUE", "FIREBRICK", "FLORALWHITE",
       "FORESTGREEN", "FUCHSIA", "GAINSBORO", "GHOSTWHITE", "GOLD", "GOLDENROD",
       "GREEN", "GREENYELLOW", "GREY", "HONEYDEW", "HOTPINK", "INDIANRED",
       "INDIGO", "IVORY", "KHAKI", "LAVENDER", "LAVENDERBLUSH", "LAWNGREEN",
       "LEMONCHIFFON", "LIGHTBLUE", "LIGHTCORAL", "LIGHTCYAN",
       "LIGHTGOLDENRODYELLOW", "LIGHTGREEN", "LIGHTGREY", "LIGHTPINK",
       "LIGHTSALMON", "LIGHTSEAGREEN", "LIGHTSKYBLUE",
       "LIGHTSLATEGREY", "LIGHTSTEELBLUE", "LIGHTYELLOW", "LIME", "LIMEGREEN",
       "LINEN", "MAGENTA", "MAROON", "MEDIUMAQUAMARINE", "MEDIUMBLUE",
       "MEDIUMORCHID", "MEDIUMPURPLE", "MEDIUMSEAGREEN", "MEDIUMSLATEBLUE",
       "MEDIUMSPRINGGREEN", "MEDIUMTURQUOISE", "MEDIUMVIOLETRED", "MIDNIGHTBLUE",
       "MINTCREAM", "MISTYROSE", "MOCCASIN", "NAVAJOWHITE", "NAVY", "OLDLACE",
       "OLIVE", "OLIVEDRAB", "ORANGE", "ORANGERED", "ORCHID", "PALEGOLDENROD",
       "PALEGREEN", "PALETURQUOISE", "PALEVIOLETRED", "PAPAYAWHIP", "PEACHPUFF",
       "PERU", "PINK", "PLUM", "POWDERBLUE", "PURPLE", "RED", "ROSYBROWN",
       "ROYALBLUE", "SADDLEBROWN", "SALMON", "SANDYBROWN", "SEAGREEN", "SEASHELL",
       "SIENNA", "SILVER", "SKYBLUE", "SLATEBLUE", "SLATEGREY",
       "SNOW", "SPRINGGREEN", "STEELBLUE", "TAN", "TEAL", "THISTLE", "TOMATO",
       "TURQUOISE", "VIOLET", "WHEAT", "WHITE", "WHITESMOKE", "YELLOW",
       "YELLOWGREEN" ];

package def COMMON_FONT_11 : Font = Font {size : 11};
package def COMMON_FONT_12 : Font = Font {size : 12};
package def COMMON_FONT_13 : Font = Font {size : 13};
package def COMMON_FONT_14 : Font = Font {size : 14};
package def COMMON_FONT_16 : Font = Font {size : 16};
package def COMMON_FONT_18 : Font = Font {size : 18};