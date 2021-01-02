type RgbColor* = object
  r*: int
  g*: int
  b*: int

proc getRedColor*(rgb: RgbColor): int = rgb.r

proc getGreenColor*(rgb: RgbColor): int = rgb.g

proc getBlueColor*(rgb: RgbColor): int =  rgb.b

func createRgb*(r: int, g: int, b:int): RgbColor = 
  return RgbColor(r: r, g: g, b: b)