import ../../src/converters/hex_color_converter
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for HexColorConverter":

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