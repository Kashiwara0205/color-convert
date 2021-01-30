import ../../src/converters/cmyk_color_converter
import ../../src/color/cmyk_color
import ../../src/color/rgb_color
import unittest

suite "check CmykColorConverter":
  test "should convert to rgb":
    var cmyk = createCmykColor(100, 100, 0, 0)
    var cmyk_color_converter = createCmykColorConverter(cmyk)
    var rgb = cmyk_color_converter.toRgb

    check 0 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 255 == rgb.getBlueColor

    cmyk = createCmykColor(100, 100, 100, 100)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    rgb = cmyk_color_converter.toRgb

    check 0 == rgb.getRedColor
    check 0 == rgb.getGreenColor
    check 0 == rgb.getBlueColor

    cmyk = createCmykColor(42, 39, 41, 40)
    cmyk_color_converter = createCmykColorConverter(cmyk)
    rgb = cmyk_color_converter.toRgb

    check 89 == rgb.getRedColor
    check 93 == rgb.getGreenColor
    check 90 == rgb.getBlueColor
