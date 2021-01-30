import ../../src/converters/cmyk_color_converter
import ../../src/color/hex_color
import ../../src/color/cmyk_color
import ../../src/color/rgb_color
import unittest

suite "check CmykColorConverter":
  test "should convert to cmyk":
    var cmyk = createCmykColor(100, 100, 0, 0)
    var cmyk_color_converter = createCmykColorConverter(cmyk)
    
    doAssert 100 == cmyk_color_converter.toCmyk().getCyanColor()
    doAssert 100 == cmyk_color_converter.toCmyk().getMagentaColor()
    doAssert 0 == cmyk_color_converter.toCmyk().getYellowColor()
    doAssert 0 == cmyk_color_converter.toCmyk().getBlackColor()

  test "should convert to rgb":
    var cmyk = createCmykColor(100, 100, 0, 0)
    var cmyk_color_converter = createCmykColorConverter(cmyk)
    var rgb = cmyk_color_converter.toRgb

    doAssert 0 == rgb.getRedColor
    doAssert 0 == rgb.getGreenColor
    doAssert 255 == rgb.getBlueColor

    cmyk = createCmykColor(100, 100, 100, 100)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    rgb = cmyk_color_converter.toRgb

    doAssert 0 == rgb.getRedColor
    doAssert 0 == rgb.getGreenColor
    doAssert 0 == rgb.getBlueColor

    cmyk = createCmykColor(42, 39, 41, 40)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    rgb = cmyk_color_converter.toRgb

    doAssert 89 == rgb.getRedColor
    doAssert 93 == rgb.getGreenColor
    doAssert 90 == rgb.getBlueColor

  test "should convert to hex":
    var cmyk = createCmykColor(100, 100, 0, 0)
    var cmyk_color_converter = createCmykColorConverter(cmyk)
    var hex = cmyk_color_converter.toHex()

    doAssert "0000FF" == hex.getColor()

    cmyk = createCmykColor(100, 100, 100, 100)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    hex = cmyk_color_converter.toHex()

    doAssert "000000" == hex.getColor()

    cmyk = createCmykColor(42, 39, 41, 40)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    hex = cmyk_color_converter.toHex()

    doAssert "595D5A" == hex.getColor()