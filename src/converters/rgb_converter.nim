import strutils
from strformat import fmt
import ../color/rgb_color
import ../color/hex_color

type RgbConverter* = object
  color: RgbColor

func createRgbConverter*(color: RgbColor): RgbConverter =
  return RgbConverter(color: color)

proc toHex*(converterObj: RgbConverter): HexColor =  
  let r = converterObj.color.getRedColor().toHex(2)
  let g = converterObj.color.getGreenColor().toHex(2)
  let b = converterObj.color.getBlueColor().toHex(2)
  
  return createHexColor(fmt"{r}{g}{b}")

proc toRgb*(converterObj: RgbConverter): RgbColor = 
  return converterObj.color