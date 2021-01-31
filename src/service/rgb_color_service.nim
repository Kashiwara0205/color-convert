import ./base_service
import strutils
import ../converters/rgb_color_converter
import ../values/color/rgb_color
import ../utils/terminal_text/terminal_text

type RgbColorService* = ref object of BaseService

method toHex*(service: RgbColorService, color_value: string): void =
  let rgb_values = color_value.split(",")
  var color = createRgb(rgb_values[0].parseUInt, rgb_values[1].parseUInt, rgb_values[2].parseUInt)
  var colorConverter = createRgbColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createHexText(colorConverter.toHex())

method toRgb*(service: RgbColorService, color_value: string): void =
  let rgb_values = color_value.split(",")
  var color = createRgb(rgb_values[0].parseUInt, rgb_values[1].parseUInt, rgb_values[2].parseUInt)
  var colorConverter = createRgbColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createRgbText(colorConverter.toRgb())

method toCmyk*(service: RgbColorService, color_value: string): void =
  let rgb_values = color_value.split(",")
  var color = createRgb(rgb_values[0].parseUInt, rgb_values[1].parseUInt, rgb_values[2].parseUInt)
  var colorConverter = createRgbColorConverter(color)

  var textCreater = TerminalTextCreater()
  echo textCreater.createCmykText(colorConverter.toCmyk())