from strformat import fmt
import ../../values/color/cmyk_color
import ../../values/color/hex_color
import ../../values/color/rgb_color
import ../../values/color/hsl_color

type TerminalText = string

type TerminalTextCreater* = object

proc createHexText*(creater: TerminalTextCreater, color: HexCollor): TerminalText =
  let hex_color = color.getColor()
  let terminal_text: TerminalText = fmt"[ { hex_color } ]"

  return terminal_text

proc createRgbText*(creater: TerminalTextCreater, color: RgbColor): TerminalText =
  let red_color = color.getRedColor()
  let green_color = color.getGreenColor()
  let blue_color = color.getBlueColor()

  let terminal_text: TerminalText = fmt"[ R: { red_color } G: { green_color } B: { blue_color } ]"

  return terminal_text

proc createCmykText*(creater:TerminalTextCreater, color: CmykColor): TerminalText =
  let cyan = color.getCyanColor()
  let magenda = color.getMagentaColor()
  let yellow = color.getYellowColor()
  let black = color.getBlackColor()

  let terminal_text: TerminalText = fmt"[ C: { cyan }% M: { magenda }% Y: { yellow }% B: { black }% ]"

  return terminal_text

proc createHslText*(creater:TerminalTextCreater, color: HslCOlor): TerminalText =
  let h = color.getH()
  let s = color.getS()
  let L = color.getL()

  let terminal_text: TerminalText = fmt"[ H: { h }° S: { s }% L: { L }% ]"

  return terminal_text