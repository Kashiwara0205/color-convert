import ../base_service/base_service
import strutils
import ./rgb_color_converter
import ../../values/color/rgb_color
import ../../values/color/cmyk_color
import ../../values/color/hex_color
import ../../values/color/hsl_color
import ../../values/inputted_value/inputted_rgb

type RgbColorService* = ref object of BaseService

proc createConverter(color_value: string): RgbColorConverter =
  let inputted_rgb = createInputtedRgb(color_value)
  let rgb_values = inputted_rgb.getInputValue()

  var color = createRgb(rgb_values[0].parseUInt, rgb_values[1].parseUInt, rgb_values[2].parseUInt)
  var colorConverter = createRgbColorConverter(color)

  return colorConverter

method toHex*(service: RgbColorService, color_value: string): HexCollor =
  let rgb_color_converter =  createConverter(color_value)
  return rgb_color_converter.toHex()

method toRgb*(service: RgbColorService, color_value: string): RgbColor =
  let rgb_color_converter =  createConverter(color_value)
  return rgb_color_converter.toRgb()

method toCmyk*(service: RgbColorService, color_value: string): CmykColor =
  let rgb_color_converter =  createConverter(color_value)
  return rgb_color_converter.toCmyk()

method toHsl*(service: RgbColorService, color_value: string): HslColor =
  let rgb_color_converter =  createConverter(color_value)
  return rgb_color_converter.toHsl()