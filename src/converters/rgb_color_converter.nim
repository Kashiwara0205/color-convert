import strutils
from strformat import fmt
import ../color/rgb_color
import ../color/hex_color

type RgbColorConverter* = object
  color: RgbColor

func createRgbColorConverter*(color: RgbColor): RgbColorConverter =
  return RgbColorConverter(color: color)

proc toHex*(converterObj: RgbColorConverter): HexColor =  
  let r = converterObj.color.getRedColor().toHex(2)
  let g = converterObj.color.getGreenColor().toHex(2)
  let b = converterObj.color.getBlueColor().toHex(2)
  
  return createHexColor(fmt"{r}{g}{b}")

proc toRgb*(converterObj: RgbColorConverter): RgbColor = 
  return converterObj.color