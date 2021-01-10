import ../src/terminal_text/terminal_text
import ../src/color/hex_color

block test:
  var hex_color = createHexColor("7B2D43")
  var creater = TerminalTextCreater()
  assert "[ 7B2D43 ]" == creater.createHexText(hex_color)
