type CmykColor* = object
  c*: float
  m*: float
  y*: float
  k*: float

proc getCyanColor*(cmyk: CmykColor): float = cmyk.c

proc getMagentaColor*(cmyk: CmykColor): float = cmyk.m

proc getYellowColor*(cmyk: CmykColor): float =  cmyk.y

proc getBlackColor*(cmyk: CmykColor): float =  cmyk.k

proc createCmykColor*(c: float, m: float, y: float, k: float): CmykColor = 
  return CmykColor(c: c, m: m, y: y, k: k)