import ../../../src/converters/hex_color_converter
import ../../../src/color/hex_color
import ../../../src/color/rgb_color
import ../../../src/color/cmyk_color
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
    check "7B2D43" == HexColorConverter.toHex.getColor

  test "should convert to cmyk":
    var hexColor = createHexColor("7B2D43")
    var hexColorConverter = createHexColorConverter(hexColor)
    var cmyk = hexColorConverter.toCmyk()

    check 0 == cmyk.getCyanColor
    check 63 == cmyk.getMagentaColor
    check 46 == cmyk.getYellowColor
    check 52 == cmyk.getBlackColor

    hexColor = createHexColor("FFFFFF")
    hexColorConverter = createHexColorConverter(hexColor)
    cmyk = hexColorConverter.toCmyk()

    check 0 == cmyk.getCyanColor
    check 0 == cmyk.getMagentaColor
    check 0 == cmyk.getYellowColor
    check 0 == cmyk.getBlackColor

    hexColor = createHexColor("000000")
    hexColorConverter = createHexColorConverter(hexColor)

    cmyk = hexColorConverter.toCmyk()
    check 100 == cmyk.getCyanColor
    check 100 == cmyk.getMagentaColor
    check 100 == cmyk.getYellowColor
    check 100 == cmyk.getBlackColor
