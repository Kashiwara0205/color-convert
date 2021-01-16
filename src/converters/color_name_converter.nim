import rgb_color_converter
import ../color/color_name
import ../color/rgb_color
import ../color/hex_color
import ../constants/color_name as const_color_name

type ColorNameConverter* = object
  color*: ColorName

func createColorNameConverter*(color: ColorName): ColorNameConverter =
  return ColorNameConverter(color: color)

proc toRgb*(converterObj: ColorNameConverter): RgbColor = 
  case converterObj.color.getColorName:
  of RED: return createRgb(230, 0, 18)
  of GREEN: return createRgb(0, 153, 68)
  of BLUE: return createRgb(29, 32, 136)
  of YELLOW: return createRgb(255, 255, 0)
  of BLACK: return createRgb(0, 0, 0)
  of WHITE: return createRgb(255, 255, 255)

proc toHex*(converterObj: ColorNameConverter): HexColor = 
  case converterObj.color.getColorName:
  of RED: return createRgbColorConverter(createRgb(230, 0, 18)).toHex
  of GREEN: return createRgbColorConverter(createRgb(0, 153, 68)).toHex
  of BLUE: return createRgbColorConverter(createRgb(29, 32, 136)).toHex
  of YELLOW: return createRgbColorConverter(createRgb(255, 255, 0)).toHex
  of BLACK: return createRgbColorConverter(createRgb(0, 0, 0)).toHex
  of WHITE: return createRgbColorConverter(createRgb(255, 255, 255)).toHex