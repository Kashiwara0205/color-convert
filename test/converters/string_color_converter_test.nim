import ../../src/converters/string_color_converter
import ../../src/color/string_color
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for stringColorConverter":

  test "should convert to rgb red color":
    var stringColorConverter = createStringColorConverter(createStringColor("Red"))
    var rgb = stringColorConverter.toRgb
    check 230 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 18 == rgb.getBlueColor
