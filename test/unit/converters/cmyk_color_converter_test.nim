import ../../../src/service/cmyk_color_service/cmyk_color_converter
import ../../../src/values/color/hex_color
import ../../../src/values/color/cmyk_color
import ../../../src/values/color/rgb_color
import unittest

suite "check CmykColorConverter":
  test "should convert to cmyk":
    var cmyk = createCmykColor(100, 100, 0, 0)
    var cmyk_color_converter = createCmykColorConverter(cmyk)
    
    check 100 == cmyk_color_converter.toCmyk().getCyanColor()
    check 100 == cmyk_color_converter.toCmyk().getMagentaColor()
    check 0 == cmyk_color_converter.toCmyk().getYellowColor()
    check 0 == cmyk_color_converter.toCmyk().getBlackColor()

  test "should convert to rgb":
    var cmyk = createCmykColor(100, 100, 0, 0)
    var cmyk_color_converter = createCmykColorConverter(cmyk)
    var rgb = cmyk_color_converter.toRgb

    check 0 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 255 == rgb.getBlueColor

    cmyk = createCmykColor(100, 100, 100, 100)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    rgb = cmyk_color_converter.toRgb

    check 0 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 0 == rgb.getBlueColor

    cmyk = createCmykColor(42, 39, 41, 40)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    rgb = cmyk_color_converter.toRgb

    check 89 == rgb.getRedColor
    check 93 == rgb.getGreenColor
    check 90 == rgb.getBlueColor

  test "should convert to hex":
    var cmyk = createCmykColor(100, 100, 0, 0)
    var cmyk_color_converter = createCmykColorConverter(cmyk)
    var hex = cmyk_color_converter.toHex()

    check "0000FF" == hex.getColor()

    cmyk = createCmykColor(100, 100, 100, 100)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    hex = cmyk_color_converter.toHex()

    check "000000" == hex.getColor()

    cmyk = createCmykColor(42, 39, 41, 40)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    hex = cmyk_color_converter.toHex()

    check "595D5A" == hex.getColor()