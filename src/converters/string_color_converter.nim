import strutils
from strformat import fmt
import ../color/string_color
import ../color/rgb_color
import ../color/hex_color
import ../constants/color

type StringColorConverter* = object
  color*: StringColor

func createStringColorConverter*(color: StringColor): StringColorConverter =
  return StringColorConverter(color: color)

proc toRgb*(converterObj: StringColorConverter): RgbColor = 
  case converterObj.color.getColorName:
  of RED: return createRgb(230, 0, 18)