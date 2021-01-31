import ./base_service
import ../converters/color_name_converter
import ../values/color/color_name
import ../utils/terminal_text/terminal_text

type ColorNameService* = ref object of BaseService

method toHex*(service: ColorNameService, color_name: string): void =
  var colorConverter = 
    createColorNameConverter(createColorName(color_name))

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

method toRgb*(service: ColorNameService, color_name: string): void =
  var colorConverter = 
    createColorNameConverter(createColorName(color_name))

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())

method toCmyk*(service: ColorNameService, color_name: string): void =
  var colorConverter = 
    createColorNameConverter(createColorName(color_name))

  var textCreater = TerminalTextCreater()
  echo textCreater.createCmykText(colorConverter.toCmyk())