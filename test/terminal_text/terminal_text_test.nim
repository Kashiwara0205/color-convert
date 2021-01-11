import ../../src/terminal_text/terminal_text
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for terminal text creater":

  test "should create hex text":
    var hex_color = createHexColor("7B2D43")
    var creater = TerminalTextCreater()
    check "[ 7B2D43 ]" == creater.createHexText(hex_color)

  test "should create rgb text":
    let rgb = createRgb(1, 2, 3)
    var creater = TerminalTextCreater()
    check "[ R: 1 G: 2 B: 3 ]" == creater.createRgbText(rgb)
