import strutils
import ../converters/rgb_converter
import ../color/hex_color
import ../color/rgb_color
import ../terminal_text/terminal_text

type RgbColorService* = object

proc toHex*(service: RgbColorService, color_value: string): void =
  let rgb_values = color_value.split(",")
  var color = createRgb(rgb_values[0].parseUInt, rgb_values[1].parseUInt, rgb_values[2].parseUInt)
  var colorConverter = createRgbConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

proc toRgb*(service: RgbColorService, color_value: string): void =
  let rgb_values = color_value.split(",")
  var color = createRgb(rgb_values[0].parseUInt, rgb_values[1].parseUInt, rgb_values[2].parseUInt)
  var colorConverter = createRgbConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())