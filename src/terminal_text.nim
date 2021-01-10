from strformat import fmt
import strutils
import color/hex_color

type TerminalText = string

type TerminalTextCreater* = object

proc createHexText*(creater: TerminalTextCreater, color: HexColor): TerminalText =
  let hex_color = color.getColor()
  let terminal_text: TerminalText = fmt"[ { hex_color } ]"

  return terminal_text


type TerminalTextGetter* = object

proc getColorTextFromOption*(getter: TerminalTextGetter, option: string): TerminalText =
  return option.split(":")[1]