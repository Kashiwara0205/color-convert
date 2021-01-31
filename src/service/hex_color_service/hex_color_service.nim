import ../base_service/base_service
import ./hex_color_converter
import ../../values/color/cmyk_color
import ../../values/color/hex_color
import ../../values/color/rgb_color

type HexCollorService* = ref object of BaseService

proc createConverter(hex_color_text: string): HexCollorConverter =
  var color = createHexCollor(hex_color_text)
  return createHexCollorConverter(color)

method toHex*(service: HexCollorService, hex_color_text: string): HexCollor =
  var hex_color_converter = createConverter(hex_color_text)
  return hex_color_converter.toHex()

method toRgb*(service: HexCollorService, hex_color_text: string): RgbColor =
  var hex_color_converter = createConverter(hex_color_text)
  return hex_color_converter.toRgb()

method toCmyk*(service: HexCollorService, hex_color_text: string): CmykColor =
  var hex_color_converter = createConverter(hex_color_text)
  return hex_color_converter.toCmyk()