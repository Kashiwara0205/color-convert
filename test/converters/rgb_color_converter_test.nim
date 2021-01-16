import ../../src/converters/rgb_color_converter
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for RgbColorConverter":

  test "should convert to rgb":
    var RgbColorConverter = createRgbColorConverter(createRgb(123, 45, 67))
    var rgb = RgbColorConverter.toRgb
    check 123 == rgb.getRedColor
    check 45 == rgb.getGreenColor
    check 67 == rgb.getBlueColor

  test "should convert to hex":
    var RgbColorConverter = createRgbColorConverter(createRgb(123, 45, 67))
    doAssert "7B2D43" == RgbColorConverter.toHex.getColor