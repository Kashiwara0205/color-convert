import strutils
import ../../values/color/rgb_color
import ../../values/color/hex_color
import ../../values/color/cmyk_color
import ../rgb_color_service/rgb_color_converter

type HexCollorConverter* = object
  color: HexCollor

proc createHexCollorConverter*(color: HexCollor): HexCollorConverter =
  return HexCollorConverter(color: color)

proc toHex*(converterObj: HexCollorConverter): HexCollor = 
  return converterObj.color

proc toRgb*(converterObj: HexCollorConverter): RgbColor = 
  let color = converterObj.color.getColor
  let r = color[0] & color[1]
  let g = color[2] & color[3]
  let b = color[4] & color[5]

  return createRgb(fromHex[uint](r), fromHex[uint](g), fromHex[uint](b))

proc toCmyk*(converterObj: HexCollorConverter): CmykColor  =  
  let rgb_color_converter = createRgbColorConverter(converterObj.toRgb())
  return rgb_color_converter.toCmyk()