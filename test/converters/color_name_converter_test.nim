import ../../src/converters/color_name_converter
import ../../src/color/color_name
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for ColorNameConverter":

  test "should convert to rgb red color":
    var ColorNameConverter = createColorNameConverter(createColorName("Red"))
    var rgb = ColorNameConverter.toRgb
    check 230 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 18 == rgb.getBlueColor
