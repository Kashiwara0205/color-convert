type HslColor* = object
  h*: uint
  s*: float
  L*: float # Nim warning " 'l' should not be used as an identifier; may look like '1' (one)  "

proc getH*(hsl: HslColor): uint = hsl.h

proc getS*(hsl: HslColor): float = hsl.s

proc getL*(hsl: HslColor): float = hsl.L

proc createHslColor*(h: uint, s: float, L: float): HslColor = 
  return HslColor(h: h, s: s, L: L)