import rgb_color_converter
import ../values/color/color_name
import ../values/color/rgb_color
import ../values/color/hex_color
import ../values/color/cmyk_color
import ../constants/color as const_color_name

type ColorNameConverter* = object
  color*: ColorName

func createColorNameConverter*(color: ColorName): ColorNameConverter =
  return ColorNameConverter(color: color)

proc toRgb*(converterObj: ColorNameConverter): RgbColor = 
  case converterObj.color.getColorName:
  of RED: return createRgb(RED_RGB[0], RED_RGB[1], RED_RGB[2])
  of GREEN: return createRgb(GREEN_RGB[0], GREEN_RGB[1], GREEN_RGB[2])
  of BLUE: return createRgb(BLUE_RGB[0], BLUE_RGB[1], BLUE_RGB[2])
  of YELLOW: return createRgb(YELLOW_RGB[0], YELLOW_RGB[1], YELLOW_RGB[2])
  of BLACK: return createRgb(BLACK_RGB[0], BLACK_RGB[1], BLACK_RGB[2])
  of WHITE: return createRgb(WHITE_RGB[0], WHITE_RGB[1], WHITE_RGB[2])

proc toHex*(converterObj: ColorNameConverter): HexColor = 
  case converterObj.color.getColorName:
  of RED: return createRgbColorConverter(createRgb(RED_RGB[0], RED_RGB[1], RED_RGB[2])).toHex
  of GREEN: return createRgbColorConverter(createRgb(GREEN_RGB[0], GREEN_RGB[1], GREEN_RGB[2])).toHex
  of BLUE: return createRgbColorConverter(createRgb(BLUE_RGB[0], BLUE_RGB[1], BLUE_RGB[2])).toHex
  of YELLOW: return createRgbColorConverter(createRgb(YELLOW_RGB[0], YELLOW_RGB[1], YELLOW_RGB[2])).toHex
  of BLACK: return createRgbColorConverter(createRgb(BLACK_RGB[0], BLACK_RGB[1], BLACK_RGB[2])).toHex
  of WHITE: return createRgbColorConverter(createRgb(WHITE_RGB[0], WHITE_RGB[1], WHITE_RGB[2])).toHex

proc toCmyk*(converterObj: ColorNameConverter): CmykColor = 
  case converterObj.color.getColorName:
  of RED: return createRgbColorConverter(createRgb(RED_RGB[0], RED_RGB[1], RED_RGB[2])).toCmyk
  of GREEN: return createRgbColorConverter(createRgb(GREEN_RGB[0], GREEN_RGB[1], GREEN_RGB[2])).toCmyk
  of BLUE: return createRgbColorConverter(createRgb(BLUE_RGB[0], BLUE_RGB[1], BLUE_RGB[2])).toCmyk
  of YELLOW: return createRgbColorConverter(createRgb(YELLOW_RGB[0], YELLOW_RGB[1], YELLOW_RGB[2])).toCmyk
  of BLACK: return createRgbColorConverter(createRgb(BLACK_RGB[0], BLACK_RGB[1], BLACK_RGB[2])).toCmyk
  of WHITE: return createRgbColorConverter(createRgb(WHITE_RGB[0], WHITE_RGB[1], WHITE_RGB[2])).toCmyk