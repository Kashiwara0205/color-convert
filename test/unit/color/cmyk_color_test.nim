import ../../../src/color/cmyk_color
import unittest

suite "check cmykColor":
  test "should create cmykColor":
    let cmyk = createCmykColor(1, 2, 3, 4)
    check 1 == cmyk.getCyanColor
    check 2 == cmyk.getMagentaColor
    check 3 == cmyk.getYellowColor
    check 4 == cmyk.getBlackColor