import ../converting/hex_converter
import ../color/hex_color
import ../terminal_text/terminal_text

type hexColorService* = object

proc toHex*(service: hexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

proc toRgb*(service: hexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())
