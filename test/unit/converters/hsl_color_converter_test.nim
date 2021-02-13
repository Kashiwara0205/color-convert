import ../../../src/service/hsl_color_service/hsl_color_converter
import ../../../src/values/color/hex_color
import ../../../src/values/color/rgb_color
import ../../../src/values/color/cmyk_color
import ../../../src/values/color/hsl_color

import unittest

suite "check HslColorConverter":

  test "should convert to hsl":
    var hslColor = createHslColor(1, 2, 3)
    var hslColorConverter = createHslColorConverter(hslColor)
    check uint(1) == hslColorConverter.toHsl.getH
    check 2 == hslColorConverter.toHsl.getS
    check 3 == hslColorConverter.toHsl.getL