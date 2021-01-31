type HexCollor* = object
  color_code: string

proc getColor*(color: HexCollor): string = 
  return color.color_code

proc createHexCollor*(color_code: string): HexCollor = 
  return HexCollor(color_code: color_code)