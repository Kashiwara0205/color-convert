type RgbColor* = object
  r*: uint
  g*: uint
  b*: uint

proc getRedColor*(rgb: RgbColor): uint = rgb.r

proc getGreenColor*(rgb: RgbColor): uint = rgb.g

proc getBlueColor*(rgb: RgbColor): uint =  rgb.b

func createRgb*(r: uint, g: uint, b:uint): RgbColor = 
  return RgbColor(r: r, g: g, b: b)