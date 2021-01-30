type CmykColor* = object
  c*: uint
  m*: uint
  y*: uint
  k*: uint

proc getCyanColor*(cmyk: CmykColor): uint = cmyk.c

proc getMagentaColor*(cmyk: CmykColor): uint = cmyk.m

proc getYellowColor*(cmyk: CmykColor): uint =  cmyk.y

proc getBlackColor*(cmyk: CmykColor): uint =  cmyk.k

proc createCmykColor*(c: uint, m: uint, y: uint, k: uint): CmykColor = 
  return CmykColor(c: c, m: m, y: y, k: k)