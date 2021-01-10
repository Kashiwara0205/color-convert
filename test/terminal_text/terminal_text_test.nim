import ../../src/terminal_text/terminal_text
import ../../src/color/hex_color
import unittest

suite "description for terminal text creater":
  test "should create hex text":
    var hex_color = createHexColor("7B2D43")
    var creater = TerminalTextCreater()
    check "[ 7B2D43 ]" == creater.createHexText(hex_color)
