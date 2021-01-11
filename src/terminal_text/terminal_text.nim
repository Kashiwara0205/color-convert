from strformat import fmt
import ../color/hex_color
import ../color/rgb_color

type TerminalText = string

type TerminalTextCreater* = object

proc createHexText*(creater: TerminalTextCreater, color: HexColor): TerminalText =
  let hex_color = color.getColor()
  let terminal_text: TerminalText = fmt"[ { hex_color } ]"

  return terminal_text

proc createRgbText*(creater: TerminalTextCreater, color: RgbColor): TerminalText =
  let red_color = color.getRedColor()
  let green_color = color.getGreenColor()
  let blue_color = color.getBlueColor()

  let terminal_text: TerminalText = fmt"[ R: { red_color } G: { green_color } B: { blue_color }]"

  return terminal_text
