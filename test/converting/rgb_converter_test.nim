import ../../src/converting/rgb_converter
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for rgbConverter":

  test "should convert to rgb":
    var rgbConverter = createRgbConverter(createRgb(123, 45, 67))
    var rgb = rgbConverter.toRgb
    check 123 == rgb.getRedColor
    check 45 == rgb.getGreenColor
    check 67 == rgb.getBlueColor

  test "should convert to hex":
    var rgbConverter = createRgbConverter(createRgb(123, 45, 67))
    doAssert "7B2D43" == rgbConverter.toHex.getColor