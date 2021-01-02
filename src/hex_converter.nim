import strutils
import rgb_color
import hex_color

type HexConverter* = object
  hexValue:string

func createHexConverter*(hexValue: string): HexConverter =
  return HexConverter(hexValue: hexValue)

proc toHex*(converterObj: HexConverter): HexColor = 
  return converterObj.hexValue

proc toRgb*(converterObj: HexConverter): RgbColor = 
  let r = converterObj.hexValue[0] & converterObj.hexValue[1]
  let g = converterObj.hexValue[2] & converterObj.hexValue[3]
  let b = converterObj.hexValue[4] & converterObj.hexValue[5]

  return createRgb(fromHex[int](r), fromHex[int](g), fromHex[int](b))