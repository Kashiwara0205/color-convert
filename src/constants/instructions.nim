const INSTRUCTIONS* = """
[ Instructions ]

Example: 

color_convert --iHex:7B2D43 --oRgb
=> [ R: 123 G: 45 B: 67 ]

color_convert --iRgb:123,45,67 --oHex
=> [ 7B2D43 ]

----------------------------------------------------
Input option     | description
----------------------------------------------------
--iRgb:{value}   | Input RgbCode. example: 123,45,67
--iHex:{value}   | Input Hexadecimal. example: 7B2D43
--iColor:{value} | Input ColorName. example: Red
--iCmyk:{value}  | Input Cmyk. example: 1,2,3,4
--iHsl:{value}   | Input Hsl. example: 212, 43, 73
----------------------------------------------------

---------------------------------------------------
Out Option     | description
---------------------------------------------------
--oRgb         | Output in Rgb 
--oHex         | Output in Hexadecimal
--oCmyk        | Output in Cmyk
--oHsl         | Output in Hsl
---------------------------------------------------
"""