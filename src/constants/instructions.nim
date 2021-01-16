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
--iHex:{value}   | Input Hexadecimal. example: 7B2D43
--iRgb:{value}   | Input RgbCode. example: 123,45,67
--iColor:{value} | Input ColorName. example: Red
----------------------------------------------------

---------------------------------------------------
Out Option     | description
---------------------------------------------------
--oRgb         | Output in Rgb 
--oHex         | Output in Hexadecimal
---------------------------------------------------
"""