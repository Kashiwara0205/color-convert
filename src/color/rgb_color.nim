type RgbColor* = object
  r*: uint16
  g*: uint16
  b*: uint16

proc getRedColor*(rgb: RgbColor): uint16 = rgb.r

proc getGreenColor*(rgb: RgbColor): uint16 = rgb.g

proc getBlueColor*(rgb: RgbColor): uint16 =  rgb.b

func createRgb*(r: uint16, g: uint16, b:uint16): RgbColor = 
  return RgbColor(r: r, g: g, b: b)