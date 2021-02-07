import strutils
import  math
from strformat import fmt
import ./rgb_to_hsl_caliculator
import ../../values/color/rgb_color
import ../../values/color/hex_color
import ../../values/color/cmyk_color
import ../../values/color/hsl_color

type RgbColorConverter* = object
  color: RgbColor

proc createRgbColorConverter*(color: RgbColor): RgbColorConverter =
  return RgbColorConverter(color: color)

proc toHex*(converterObj: RgbColorConverter): HexCollor =  
  let r = converterObj.color.getRedColor().toHex(2)
  let g = converterObj.color.getGreenColor().toHex(2)
  let b = converterObj.color.getBlueColor().toHex(2)
  
  return createHexCollor(fmt"{r}{g}{b}")

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

  return createCmykColor(round(c, 2), round(m, 2), round(y, 2), round(k, 2))

proc toRgb*(converterObj: RgbColorConverter): RgbColor = 
  return converterObj.color

proc toHsl*(converterObj: RgbColorConverter): HslColor =
  let calculator = RgbtoHslCaliculator()
  return calculator.calc(converterObj.color)