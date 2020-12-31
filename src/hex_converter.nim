import strutils

type HexConverter* = object
  hexValue:string

proc createHexConverter*(hexValue: string): HexConverter =
  return HexConverter(hexValue: hexValue)

proc toRgb*(converterObj: HexConverter): array[3, int] = 
  let r = converterObj.hexValue[0] & converterObj.hexValue[1]
  let g = converterObj.hexValue[2] & converterObj.hexValue[3]
  let b = converterObj.hexValue[4] & converterObj.hexValue[5]

  return [fromHex[int](r), fromHex[int](g), fromHex[int](b)]