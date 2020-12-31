type HexConverter* = object
  hexValue: string

proc createHexConverter*(hexValue: string): HexConverter =
  return HexConverter(hexValue: hexValue)

proc toRgb*(converterObj: HexConverter): array[3, int] = 
  return [1, 1, 1]