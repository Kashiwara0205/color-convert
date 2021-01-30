import ./base_service
import ../converters/hex_color_converter
import ../color/hex_color
import ../terminal_text/terminal_text

type HexColorService* = ref object of BaseService

proc toHex*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

proc toRgb*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())

proc toCmyk*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createCmykText(colorConverter.toCmyk())