import ../../src/converting/hex_converter
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for rgbColor":
  # outline: should get rgb from hex
  # expected: - red color is 123
  #           - green color is 45
  #           - blue color is 67
  test "should convert to rgb":
    var hexColor = createHexColor("7B2D43")
    var hexConverter = createHexConverter(hexColor)
    var rgb = hexConverter.toRgb
    check 123 == rgb.getRedColor
    check 45 == rgb.getGreenColor
    check 67 == rgb.getBlueColor

  # outline: sgould get hex from hex
  # expected - 7B2D43
  test "should convert to hex":
    var hexColor = createHexColor("7B2D43")
    var hexConverter = createHexConverter(hexColor)
    doAssert "7B2D43" == hexConverter.toHex.getColor