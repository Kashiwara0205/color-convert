import strutils
import ../base_service/base_service
import ./cmyk_color_converter
import ../../values/color/cmyk_color
import ../../values/color/hex_color
import ../../values/color/rgb_color

type CmykColorService* = ref object of BaseService

proc createConverter(color_value: string): CmykColorConverter =
  let cmyk_values = color_value.split(",")
  var cmyk = 
    createCmykColor(cmyk_values[0].parseUInt, cmyk_values[1].parseUInt, 
                    cmyk_values[2].parseUInt, cmyk_values[3].parseUInt)

  return createCmykColorConverter(cmyk)

method toHex*(service: CmykColorService, color_value: string): HexCollor =
  let cmyk_color_converter = createConverter(color_value)
  return cmyk_color_converter.toHex()

method toRgb*(service: CmykColorService, color_value: string): RgbColor =
  let cmyk_color_converter = createConverter(color_value)
  return cmyk_color_converter.toRgb()

method toCmyk*(service: CmykColorService, color_value: string): CmykColor =
  let cmyk_color_converter = createConverter(color_value)
  return cmyk_color_converter.toCmyk()