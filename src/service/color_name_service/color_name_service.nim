import ../base_service/base_service
import ./color_name_converter
import ../../values/color/color_name
import ../../values/color/cmyk_color
import ../../values/color/hex_color
import ../../values/color/rgb_color
import ../../values/color/hsl_color
import ./color_name_converter

type ColorNameService* = ref object of BaseService

proc createConverter(color_value: string): ColorNameConverter =
  return createColorNameConverter(createColorName(color_value))

method toHex*(service: ColorNameService, color_name: string): HexCollor =
  var color_name_converter =  createConverter(color_name)
  return color_name_converter.toHex()

method toRgb*(service: ColorNameService, color_name: string): RgbColor =
  var color_name_converter =  createConverter(color_name)
  return color_name_converter.toRgb()

method toCmyk*(service: ColorNameService, color_name: string): CmykColor =
  var color_name_converter =  createConverter(color_name)
  return color_name_converter.toCmyk()

method toHsl*(service: ColorNameService, color_name: string): HslColor =
  var color_name_converter =  createConverter(color_name)
  return color_name_converter.toHsl()