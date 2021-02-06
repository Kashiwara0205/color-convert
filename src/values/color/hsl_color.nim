type HslColor* = object
  h*: uint
  s*: uint
  L*: uint # Nim warning " 'l' should not be used as an identifier; may look like '1' (one)  "

proc getH*(hsl: HslColor): uint = hsl.h

proc getS*(hsl: HslColor): uint = hsl.s

proc getL*(hsl: HslColor): uint = hsl.L

proc createHslColor*(h: uint, s: uint, L: uint): HslColor = 
  return HslColor(h: h, s: s, L: L)