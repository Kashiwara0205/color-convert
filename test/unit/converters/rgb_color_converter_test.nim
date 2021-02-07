import ../../../src/service/rgb_color_service/rgb_color_converter
import ../../../src/values/color/hex_color
import ../../../src/values/color/rgb_color
import ../../../src/values/color/cmyk_color
import ../../../src/values/color/hsl_color

import unittest

suite "check RgbColorConverter":

  test "should convert to rgb":
    var RgbColorConverter = createRgbColorConverter(createRgb(123, 45, 67))
    var rgb = RgbColorConverter.toRgb
    check uint(123) == rgb.getRedColor
    check uint(45) == rgb.getGreenColor
    check uint(67) == rgb.getBlueColor

  test "should convert to hex":
    var RgbColorConverter = createRgbColorConverter(createRgb(123, 45, 67))
    check "7B2D43" == RgbColorConverter.toHex.getColor

  test "should convert to cmyk":
    var rgbColorConverter = createRgbColorConverter(createRgb(255, 0, 0))
    var cmyk = rgbColorConverter.toCmyk
    check 0 == cmyk.getCyanColor
    check 1 == cmyk.getMagentaColor
    check 1 == cmyk.getYellowColor
    check 0 == cmyk.getBlackColor

    rgbColorConverter = createRgbColorConverter(createRgb(0, 0, 0))
    cmyk = rgbColorConverter.toCmyk
    check 1 == cmyk.getCyanColor
    check 1 == cmyk.getMagentaColor
    check 1 == cmyk.getYellowColor
    check 1 == cmyk.getBlackColor

    rgbColorConverter = createRgbColorConverter(createRgb(255, 255, 0))
    cmyk = rgbColorConverter.toCmyk
    check 0 == cmyk.getCyanColor
    check 0 == cmyk.getMagentaColor
    check 1 == cmyk.getYellowColor
    check 0 == cmyk.getBlackColor

    rgbColorConverter = createRgbColorConverter(createRgb(198, 42, 27))
    cmyk = rgbColorConverter.toCmyk
    check 0 == cmyk.getCyanColor
    check 0.79 == cmyk.getMagentaColor
    check 0.86 == cmyk.getYellowColor
    check 0.22 == cmyk.getBlackColor

  test "should convert to hsl":
    var rgbColorConverter = createRgbColorConverter(createRgb(48, 45, 67))
    var hsl = rgbColorConverter.toHsl

    check uint(248) == hsl.getH
    check 0.196 == hsl.getS()
    check 0.220 == hsl.getL()

    rgbColorConverter = createRgbColorConverter(createRgb(48, 100, 67))
    hsl = rgbColorConverter.toHsl

    check uint(141) == hsl.getH
    check 0.351 == hsl.getS()
    check 0.290 == hsl.getL()

    rgbColorConverter = createRgbColorConverter(createRgb(48, 87, 67))
    hsl = rgbColorConverter.toHsl

    check uint(149) == hsl.getH
    check 0.289 == hsl.getS()
    check 0.265 == hsl.getL()

    rgbColorConverter = createRgbColorConverter(createRgb(0, 0, 0))
    hsl = rgbColorConverter.toHsl

    check uint(0) == hsl.getH
    check 0.0 == hsl.getS()
    check 0.0 == hsl.getL()

    rgbColorConverter = createRgbColorConverter(createRgb(24, 3, 4))
    hsl = rgbColorConverter.toHsl

    check uint(357) == hsl.getH
    check 0.778 == hsl.getS()
    check 0.053 == hsl.getL()