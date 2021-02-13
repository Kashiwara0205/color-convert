import ../../../src/service/hsl_color_service/hsl_color_converter
import ../../../src/values/color/hex_color
import ../../../src/values/color/rgb_color
import ../../../src/values/color/cmyk_color
import ../../../src/values/color/hsl_color

import unittest

suite "check HslColorConverter":
  test "should convert to rgb":

    var hslColor = createHslColor(0, 22, 7)
    var hslColorConverter = createHslColorConverter(hslColor)

    var rgb = hslColorConverter.toRgb
    check 22'u == rgb.getRedColor
    check 14'u == rgb.getGreenColor
    check 14'u == rgb.getBlueColor

    hslColor = createHslColor(1, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 22'u == rgb.getRedColor
    check 14'u == rgb.getGreenColor
    check 14'u == rgb.getBlueColor

    hslColor = createHslColor(60, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 22'u == rgb.getRedColor
    check 22'u == rgb.getGreenColor
    check 14'u == rgb.getBlueColor

    hslColor = createHslColor(61, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 22'u == rgb.getRedColor
    check 22'u == rgb.getGreenColor
    check 14'u == rgb.getBlueColor

    hslColor = createHslColor(120, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 14'u == rgb.getRedColor
    check 22'u == rgb.getGreenColor
    check 14'u == rgb.getBlueColor

    hslColor = createHslColor(121, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 14'u == rgb.getRedColor
    check 22'u == rgb.getGreenColor
    check 14'u == rgb.getBlueColor

    hslColor = createHslColor(180, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 14'u == rgb.getRedColor
    check 22'u == rgb.getGreenColor
    check 22'u == rgb.getBlueColor

    hslColor = createHslColor(181, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 14'u == rgb.getRedColor
    check 22'u == rgb.getGreenColor
    check 22'u == rgb.getBlueColor

    hslColor = createHslColor(240, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 14'u == rgb.getRedColor
    check 14'u == rgb.getGreenColor
    check 22'u == rgb.getBlueColor

    hslColor = createHslColor(241, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 14'u == rgb.getRedColor
    check 14'u == rgb.getGreenColor
    check 22'u == rgb.getBlueColor

    hslColor = createHslColor(300, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 22'u == rgb.getRedColor
    check 14'u == rgb.getGreenColor
    check 22'u == rgb.getBlueColor

    hslColor = createHslColor(301, 22, 7)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 22'u == rgb.getRedColor
    check 14'u == rgb.getGreenColor
    check 22'u == rgb.getBlueColor

    hslColor = createHslColor(0, 100, 0)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 0'u == rgb.getRedColor
    check 0'u == rgb.getGreenColor
    check 0'u == rgb.getBlueColor

    hslColor = createHslColor(212, 43, 73)
    hslColorConverter = createHslColorConverter(hslColor)

    rgb = hslColorConverter.toRgb
    check 157'u == rgb.getRedColor
    check 184'u == rgb.getGreenColor
    check 216'u == rgb.getBlueColor

  test "should convert to hsl":
    var hslColor = createHslColor(1, 2, 3)
    var hslColorConverter = createHslColorConverter(hslColor)
    check 1'u == hslColorConverter.toHsl.getH
    check 2 == hslColorConverter.toHsl.getS
    check 3 == hslColorConverter.toHsl.getL

  test "should convert to hex":
    var hslColor = createHslColor(0, 22, 7)
    var hslColorConverter = createHslColorConverter(hslColor)

    var hex = hslColorConverter.toHex
    check "160E0E" == hex.getColor

  test "should convert to cmyk":
    var hslColor = createHslColor(0, 22, 7)
    var hslColorConverter = createHslColorConverter(hslColor)

    var cmyk = hslColorConverter.toCmyk
    check 0 == cmyk.getCyanColor
    check 0.36 == cmyk.getMagentaColor
    check 0.36 == cmyk.getYellowColor
    check 0.91 == cmyk.getBlackColor