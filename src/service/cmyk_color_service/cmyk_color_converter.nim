import math
import ../rgb_color_service/rgb_color_converter
import ../../values/color/hex_color
import ../../values/color/rgb_color
import ../../values/color/cmyk_color
import ../../values/color/hsl_color

type CmykColorConverter* = object
  color: CmykColor

proc createCmykColorConverter*(color: CmykColor): CmykColorConverter =
  return CmykColorConverter(color: color)

proc toRgb*(converterObj: CmykColorConverter): RgbColor = 
  let c_dush = 1 - ( float64( converterObj.color.getCyanColor ) * 0.01 )
  let m_dush = 1 - ( float64( converterObj.color.getMagentaColor ) * 0.01 )
  let y_dush = 1 - ( float64( converterObj.color.getYellowColor ) * 0.01 )
  let k_dush = 1 - ( float64( converterObj.color.getBlackColor ) * 0.01 )

  let r = uint( round(255 * c_dush * k_dush) )
  let g = uint( round(255 * m_dush * k_dush) )
  let b = uint( round(255 * y_dush * k_dush) )

  return createRgb(r, g, b)

proc toCmyk*(converterObj: CmykColorConverter): CmykColor = 
  return converterObj.color

proc toHex*(converterObj: CmykColorConverter): HexCollor =  
  let rgb_color_converter = createRgbColorConverter(converterObj.toRgb())
  return rgb_color_converter.toHex()

proc toHsl*(converterObj: CmykColorConverter): HslColor =  
  let rgb_color_converter = createRgbColorConverter(converterObj.toRgb())
  return rgb_color_converter.toHsl()