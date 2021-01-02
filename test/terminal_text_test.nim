import ../src/terminal_text
import ../src/color/hex_color

block test:
  var hex_color: HexColor = "7B2D43"
  var creater = TerminalTextCreater()
  assert "[ 7B2D43 ]" == creater.createHexText(hex_color)
