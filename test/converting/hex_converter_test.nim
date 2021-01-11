import ../../src/converting/hex_converter
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for hexConverter":

  test "should convert to rgb":
    var hexColor = createHexColor("7B2D43")
    var hexConverter = createHexConverter(hexColor)
    var rgb = hexConverter.toRgb
    check 123 == rgb.getRedColor
    check 45 == rgb.getGreenColor
    check 67 == rgb.getBlueColor

  test "should convert to hex":
    var hexColor = createHexColor("7B2D43")
    var hexConverter = createHexConverter(hexColor)
    doAssert "7B2D43" == hexConverter.toHex.getColor