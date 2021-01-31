import strutils
import ./base_service
import ../converters/cmyk_color_converter
import ../values/color/cmyk_color
import ../terminal_text/terminal_text

type CmykColorService* = ref object of BaseService

method toHex*(service: CmykColorService, color_value: string): void =
  let cmyk_values = color_value.split(",")
  var cmyk = 
    createCmykColor(cmyk_values[0].parseUInt, cmyk_values[1].parseUInt, 
                    cmyk_values[2].parseUInt, cmyk_values[3].parseUInt)

  let color_converter = createCmykColorConverter(cmyk)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(color_converter.toHex())

method toRgb*(service: CmykColorService, color_value: string): void =
  let cmyk_values = color_value.split(",")
  var cmyk = 
    createCmykColor(cmyk_values[0].parseUInt, cmyk_values[1].parseUInt, 
                    cmyk_values[2].parseUInt, cmyk_values[3].parseUInt)

  let color_converter = createCmykColorConverter(cmyk)

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(color_converter.toRgb())

method toCmyk*(service: CmykColorService, color_value: string): void =
  let cmyk_values = color_value.split(",")
  var cmyk = 
    createCmykColor(cmyk_values[0].parseUInt, cmyk_values[1].parseUInt, 
                    cmyk_values[2].parseUInt, cmyk_values[3].parseUInt)

  let color_converter = createCmykColorConverter(cmyk)

  var textCreater = TerminalTextCreater()
  echo textCreater.createCmykText(color_converter.toCmyk())