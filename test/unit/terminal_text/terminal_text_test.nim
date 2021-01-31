import ../../../src/utils/terminal_text/terminal_text
import ../../../src/values/color/hex_color
import ../../../src/values/color/rgb_color
import ../../../src/values/color/cmyk_color
import unittest

suite "check terminal text creater":

  test "should create hex text":
    var hex_color = createHexColor("7B2D43")
    var creater = TerminalTextCreater()
    check "[ 7B2D43 ]" == creater.createHexText(hex_color)

  test "should create rgb text":
    let rgb = createRgb(1, 2, 3)
    var creater = TerminalTextCreater()
    check "[ R: 1 G: 2 B: 3 ]" == creater.createRgbText(rgb)

  test "should create cmyk text":
    let cmyk = createCmykColor(1, 2, 3, 4)
    var creater = TerminalTextCreater()
    check "[ C: 1% M: 2% Y: 3% B: 4% ]" == creater.createCmykText(cmyk)
