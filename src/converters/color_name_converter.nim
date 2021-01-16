import strutils
from strformat import fmt
import ../color/color_name
import ../color/rgb_color
import ../color/hex_color
import ../constants/color

type ColorNameConverter* = object
  color*: ColorName

func createColorNameConverter*(color: ColorName): ColorNameConverter =
  return ColorNameConverter(color: color)

proc toRgb*(converterObj: ColorNameConverter): RgbColor = 
  case converterObj.color.getColorName:
  of RED: return createRgb(230, 0, 18)