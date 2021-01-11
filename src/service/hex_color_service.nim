import ../converting/hex_converter
import ../color/hex_color
import ../terminal_text/terminal_text

type HexColorService* = object

proc toHex*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

proc toRgb*(service: HexColorService, hex_color_text: string): void =
  var color = createHexColor(hex_color_text)
  var colorConverter = createHexConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())
