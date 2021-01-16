import ../../src/converters/color_name_converter
import ../../src/color/color_name
import ../../src/color/hex_color
import ../../src/color/rgb_color
import unittest

suite "description for ColorNameConverter":

  test "should convert to rgb":
    var colorNameConverter = createColorNameConverter(createColorName("Red"))
    var rgb = colorNameConverter.toRgb
    check 255 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 0 == rgb.getBlueColor

    colorNameConverter = createColorNameConverter(createColorName("Green"))
    rgb = colorNameConverter.toRgb
    check 0 == rgb.getRedColor
    check 255 == rgb.getGreenColor
    check 0 == rgb.getBlueColor

    colorNameConverter = createColorNameConverter(createColorName("Blue"))
    rgb = colorNameConverter.toRgb
    check 0 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 255 == rgb.getBlueColor

    colorNameConverter = createColorNameConverter(createColorName("Yellow"))
    rgb = colorNameConverter.toRgb
    check 255 == rgb.getRedColor
    check 255 == rgb.getGreenColor
    check 0 == rgb.getBlueColor

    colorNameConverter = createColorNameConverter(createColorName("Black"))
    rgb = colorNameConverter.toRgb
    check 0 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 0 == rgb.getBlueColor

    colorNameConverter = createColorNameConverter(createColorName("White"))
    rgb = colorNameConverter.toRgb
    check 255 == rgb.getRedColor
    check 255 == rgb.getGreenColor
    check 255 == rgb.getBlueColor

  test "should convert to hex":
    var colorNameConverter = createColorNameConverter(createColorName("Red"))
    check "FF0000" == colorNameConverter.toHex.getColor

    colorNameConverter = createColorNameConverter(createColorName("Green"))
    check "00FF00" == colorNameConverter.toHex.getColor
  
    colorNameConverter = createColorNameConverter(createColorName("Blue"))
    check "0000FF" == colorNameConverter.toHex.getColor

    colorNameConverter = createColorNameConverter(createColorName("Yellow"))
    check "FFFF00" == colorNameConverter.toHex.getColor

    colorNameConverter = createColorNameConverter(createColorName("Black"))
    check "000000" == colorNameConverter.toHex.getColor

    colorNameConverter = createColorNameConverter(createColorName("White"))
    check "FFFFFF" == colorNameConverter.toHex.getColor