import ../base_service/base_service
import strutils
import ./hsl_color_converter
import ../../values/color/rgb_color
import ../../values/color/cmyk_color
import ../../values/color/hex_color
import ../../values/color/hsl_color
import ../../values/inputted_value/inputted_hsl

type HslColorService* = ref object of BaseService

proc createConverter(color_value: string): HslCollorConverter =
  let inputted_hsl = createInputtedHsl(color_value)
  let hsl_values = inputted_hsl.getInputValue()

  var color = createHslColor(hsl_values[0].parseUInt, hsl_values[1].parseFloat, hsl_values[2].parseFloat)
  var colorConverter = createHslColorConverter(color)

  return colorConverter

method toHsl*(service: HslColorService, hsl_color_text: string): HslColor =
  var hsl_color_converter = createConverter(hsl_color_text)
  return hsl_color_converter.toHsl()

method toRgb*(service: HslColorService, hsl_color_text: string): RgbColor =
  var hsl_color_converter = createConverter(hsl_color_text)
  return hsl_color_converter.toRgb()

method toCmyk*(service: HslColorService, hsl_color_text: string): CmykColor =
  var hsl_color_converter = createConverter(hsl_color_text)
  return hsl_color_converter.toCmyk()

method toHex*(service: HslColorService, hsl_color_text: string): HexCollor =
  var hsl_color_converter = createConverter(hsl_color_text)
  return hsl_color_converter.toHex()