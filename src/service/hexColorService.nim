import ../converting/hex_converter
import ../color/hex_color
import ../terminal_text/terminal_text

type hexColorService* = object

proc toHex*(service: hexColorService, colorText: string): void =
  var color = createHexColor(colorText)
  var colorConverter = createHexConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())