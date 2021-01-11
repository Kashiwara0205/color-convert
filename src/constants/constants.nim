const I_HEX* = "--iHex"
const O_HEX* = "--oHex"
const I_RGB* = "--iRgb"
const O_RGB* = "--oRgb"

const INSTRUCTIONS* = """
[ Instructions ]

Example: color_convert --iHex:7B2D43 --oRgb
=> [ R: 123 G: 45 B: 67 ]


---------------------------------------------
Input option   | description
---------------------------------------------
--iHex:{value} | Input Hexadecimal
---------------------------------------------


---------------------------------------------
Out Option     | description
---------------------------------------------
--oRgb         | Output in Rgb 
--OHex         | Output in Hexadecimal
---------------------------------------------
"""