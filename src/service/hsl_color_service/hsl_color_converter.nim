import strutils
import ../../values/color/rgb_color
import ../../values/color/hex_color
import ../../values/color/cmyk_color
import ../../values/color/hsl_color
import ../rgb_color_service/rgb_color_converter

type HslCollorConverter* = object
  color: HslColor

proc createHslColorConverter*(color: HslColor): HslCollorConverter =
  return HslCollorConverter(color: color)

proc toHsl*(converterObj: HslCollorConverter): HslColor =
  return converterObj.color