import ../converting/hex_converter
import ../color/hex_color
import ../terminal_text


type hexColorService* = object

proc toHex*(service: hexColorService, iOption: string): void =
  let terminalTextGetter = TerminalTextGetter()
  let hexColorText = terminalTextGetter.getColorTextFromOption(iOption)
  var color = createHexColor(hexColorText)
  var colorConverter = createHexConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())