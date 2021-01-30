import ./base_service
import ../converters/color_name_converter
import ../color/color_name
import ../terminal_text/terminal_text

type ColorNameService* = ref object of BaseService

proc toHex*(service: ColorNameService, color_name: string): void =
  var colorConverter = 
    createColorNameConverter(createColorName(color_name))

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

proc toRgb*(service: ColorNameService, color_name: string): void =
  var colorConverter = 
    createColorNameConverter(createColorName(color_name))

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())

proc toCmyk*(service: ColorNameService, color_name: string): void =
  var colorConverter = 
    createColorNameConverter(createColorName(color_name))

  var textCreater = TerminalTextCreater()
  echo textCreater.createCmykText(colorConverter.toCmyk())