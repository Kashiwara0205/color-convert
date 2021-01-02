from strformat import fmt
import color/hex_color

type TerminalText = string
type TerminalTextCreater* = object

proc createHexText*(creater: TerminalTextCreater, color: HexColor): TerminalText =
  let terminal_text: TerminalText = fmt"[ { color } ]"

  return terminal_text