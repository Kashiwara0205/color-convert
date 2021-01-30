import ../../src/converters/hex_color_converter
import ../../src/color/hex_color
import ../../src/color/rgb_color
import ../../src/color/cmyk_color
import unittest

suite "check HexColorConverter":

  test "should convert to rgb":
    var hexColor = createHexColor("7B2D43")
    var HexColorConverter = createHexColorConverter(hexColor)
    var rgb = HexColorConverter.toRgb
    check 123 == rgb.getRedColor
    check 45 == rgb.getGreenColor
    check 67 == rgb.getBlueColor

  test "should convert to hex":
    var hexColor = createHexColor("7B2D43")
    var HexColorConverter = createHexColorConverter(hexColor)
    doAssert "7B2D43" == HexColorConverter.toHex.getColor

  test "should convert to cmyk":
    var hexColor = createHexColor("7B2D43")
    var hexColorConverter = createHexColorConverter(hexColor)
    var cmyk = hexColorConverter.toCmyk()

    doAssert 0 == cmyk.getCyanColor
    doAssert 63 == cmyk.getMagentaColor
    doAssert 46 == cmyk.getYellowColor
    doAssert 52 == cmyk.getBlackColor

    hexColor = createHexColor("FFFFFF")
    hexColorConverter = createHexColorConverter(hexColor)
    cmyk = hexColorConverter.toCmyk()

    doAssert 0 == cmyk.getCyanColor
    doAssert 0 == cmyk.getMagentaColor
    doAssert 0 == cmyk.getYellowColor
    doAssert 0 == cmyk.getBlackColor

    hexColor = createHexColor("000000")
    hexColorConverter = createHexColorConverter(hexColor)

    cmyk = hexColorConverter.toCmyk()
    doAssert 100 == cmyk.getCyanColor
    doAssert 100 == cmyk.getMagentaColor
    doAssert 100 == cmyk.getYellowColor
    doAssert 100 == cmyk.getBlackColor
