import ../../../src/utils/terminal_text/terminal_text
import ../../../src/values/color/hex_color
import ../../../src/values/color/rgb_color
import ../../../src/values/color/cmyk_color
import ../../../src/values/color/hsl_color

import unittest

suite "check terminal text creater":

  test "should create hex text":
    var hex_color = createHexCollor("7B2D43")
    var creater = TerminalTextCreater()
    check "[ 7B2D43 ]" == creater.createHexText(hex_color)

  test "should create rgb text":
    let rgb = createRgb(1, 2, 3)
    var creater = TerminalTextCreater()
    check "[ R: 1 G: 2 B: 3 ]" == creater.createRgbText(rgb)

  test "should create cmyk text":
    let cmyk = createCmykColor(0.01, 0.02, 0.03, 0.04)
    var creater = TerminalTextCreater()
    check "[ C: 0.01 M: 0.02 Y: 0.03 B: 0.04 ]" == creater.createCmykText(cmyk)

  test "should create hsl text":
    let hsl = createHslColor(1, 0.02, 0.034)
    var creater = TerminalTextCreater()
    check "[ H: 1° S: 0.02 L: 0.034 ]" == creater.createHslText(hsl)