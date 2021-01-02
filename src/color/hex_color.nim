type HexColor* = object
  color_code: string

proc getColor*(color: HexColor): string = 
  return color.color_code

func createHexColor*(color_code: string): HexColor = 
  return HexColor(color_code: color_code)