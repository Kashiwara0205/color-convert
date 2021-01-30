import strutils
import  math
from strformat import fmt
import ../color/rgb_color
import ../color/hex_color
import ../color/cmyk_color

type RgbColorConverter* = object
  color: RgbColor

func createRgbColorConverter*(color: RgbColor): RgbColorConverter =
  return RgbColorConverter(color: color)

proc toHex*(converterObj: RgbColorConverter): HexColor =  
  let r = converterObj.color.getRedColor().toHex(2)
  let g = converterObj.color.getGreenColor().toHex(2)
  let b = converterObj.color.getBlueColor().toHex(2)
  
  return createHexColor(fmt"{r}{g}{b}")

proc toCmyk*(converterObj: RgbColorConverter): CmykColor =  
  let r = converterObj.color.getRedColor()
  let g = converterObj.color.getGreenColor()
  let b = converterObj.color.getBlueColor()

  let r_dush = float(r) / 255
  let g_dush = float(g) / 255
  let b_dush = float(b) / 255

  let k = ( 1 - max([r_dush, g_dush, b_dush]) )

  let c = if k == 1: 1.0 else: (1 - r_dush - k) / (1 - k)
  let m = if k == 1: 1.0 else: (1 - g_dush - k) / (1 - k)
  let y = if k == 1: 1.0 else: (1 - b_dush - k) / (1 - k)

  return createCmykColor(uint(round(c * 100)), uint(round(m * 100)), 
                         uint(round(y * 100)), uint(round(k * 100)))

proc toRgb*(converterObj: RgbColorConverter): RgbColor = 
  return converterObj.color