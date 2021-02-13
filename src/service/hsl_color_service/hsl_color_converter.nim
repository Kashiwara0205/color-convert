import math
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

proc toRgb*(converterObj: HslCollorConverter): RgbColor =
  let h = converterObj.color.getH
  let s_dush = converterObj.color.getS * 0.01 
  let l_dush = converterObj.color.getL * 0.01 

  let c = (1 - ( abs(2 * l_dush - 1) )) * s_dush
  let x = c * ( float( 1 -  abs( int(h) / 60  mod 2 - 1 ) ) ) 

  let m = l_dush - c / 2

  var r_dush = 0'f
  var g_dush = 0'f
  var b_dush = 0'f

  if 0'u <= h and h < 60: 
    r_dush = c; g_dush = x; b_dush = 0;

  if 60'u <= h and h < 120: 
    r_dush = x; g_dush = c; b_dush = 0;

  if 120'u <= h and h < 180: 
    r_dush = 0; g_dush = c; b_dush = x;

  if 180'u <= h and h < 240:
    r_dush = 0; g_dush = x; b_dush = c;

  if 240'u <= h and h < 300: 
    r_dush = x; g_dush = 0; b_dush = c;

  if 300'u <= h and h < 360: 
    r_dush = c; g_dush = 0; b_dush = x;

  let r = uint( round( ( r_dush + m ) * 255 ) )
  let g = uint( round( ( g_dush + m ) * 255 ) )
  let b = uint( round( ( b_dush + m ) * 255 ) )

  return createRgb(r, g, b)

proc toCmyk*(converterObj: HslCollorConverter): CmykColor =
  let rgb_color_converter = createRgbColorConverter(converterObj.toRgb())
  return rgb_color_converter.toCmyk()

proc toHex*(converterObj: HslCollorConverter): HexCollor =
  let rgb_color_converter = createRgbColorConverter(converterObj.toRgb())
  return rgb_color_converter.toHex()