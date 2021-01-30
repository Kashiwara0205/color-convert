import math
import rgb_color_converter
import ../color/hex_color
import ../color/rgb_color
import ../color/cmyk_color

type CmykColorConverter* = object
  color: CmykColor

func createCmykColorConverter*(color: CmykColor): CmykColorConverter =
  return CmykColorConverter(color: color)

proc toRgb*(converterObj: CmykColorConverter): RgbColor = 
  let c_percentage = 1 - ( float64( converterObj.color.getCyanColor ) * 0.01 )
  let m_percentage = 1 - ( float64( converterObj.color.getMagentaColor ) * 0.01 )
  let y_percentage = 1 - ( float64( converterObj.color.getYellowColor ) * 0.01 )
  let k_percentage = 1 - ( float64( converterObj.color.getBlackColor ) * 0.01 )

  let r = uint( round(255 * c_percentage * k_percentage) )
  let g = uint( round(255 * m_percentage * k_percentage) )
  let b = uint( round(255 * y_percentage * k_percentage) )

  return createRgb(r, g, b)

proc toCmyk*(converterObj: CmykColorConverter): CmykColor = 
  return converterObj.color

proc toHex*(converterObj: CmykColorConverter): HexColor =  
  let rgb_color_converter = createRgbColorConverter(converterObj.toRgb())
  return rgb_color_converter.toHex()