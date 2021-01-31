import ./base_service
import ../converters/hex_color_converter
import ../values/color/hex_color
import ../terminal_text/terminal_text

type HexColorService* = ref object of BaseService

method toHex*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

method toRgb*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())

method toCmyk*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createCmykText(colorConverter.toCmyk())