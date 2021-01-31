import ../../../src/converters/rgb_color_converter
import ../../../src/values/color/hex_color
import ../../../src/values/color/rgb_color
import ../../../src/values/color/cmyk_color
import unittest

suite "check RgbColorConverter":

  test "should convert to rgb":
    var RgbColorConverter = createRgbColorConverter(createRgb(123, 45, 67))
    var rgb = RgbColorConverter.toRgb
    check 123 == rgb.getRedColor
    check 45 == rgb.getGreenColor
    check 67 == rgb.getBlueColor

  test "should convert to hex":
    var RgbColorConverter = createRgbColorConverter(createRgb(123, 45, 67))
    check "7B2D43" == RgbColorConverter.toHex.getColor

  test "should convert to cmyk":
    var rgbColorConverter = createRgbColorConverter(createRgb(255, 0, 0))
    var cmyk = rgbColorConverter.toCmyk
    check 0 == cmyk.getCyanColor
    check 100 == cmyk.getMagentaColor
    check 100 == cmyk.getYellowColor
    check 0 == cmyk.getBlackColor

    rgbColorConverter = createRgbColorConverter(createRgb(0, 0, 0))
    cmyk = rgbColorConverter.toCmyk
    check 100 == cmyk.getCyanColor
    check 100 == cmyk.getMagentaColor
    check 100 == cmyk.getYellowColor
    check 100 == cmyk.getBlackColor

    rgbColorConverter = createRgbColorConverter(createRgb(255, 255, 0))
    cmyk = rgbColorConverter.toCmyk
    check 0 == cmyk.getCyanColor
    check 0 == cmyk.getMagentaColor
    check 100 == cmyk.getYellowColor
    check 0 == cmyk.getBlackColor

    rgbColorConverter = createRgbColorConverter(createRgb(198, 42, 27))
    cmyk = rgbColorConverter.toCmyk
    check 0 == cmyk.getCyanColor
    check 79 == cmyk.getMagentaColor
    check 86 == cmyk.getYellowColor
    check 22 == cmyk.getBlackColor