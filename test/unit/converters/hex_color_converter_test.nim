import ../../../src/service/hex_color_service/hex_color_converter
import ../../../src/values/color/hex_color
import ../../../src/values/color/rgb_color
import ../../../src/values/color/cmyk_color
import ../../../src/values/color/hsl_color

import unittest

suite "check HexCollorConverter":

  test "should convert to rgb":
    var HexCollor = createHexCollor("7B2D43")
    var HexCollorConverter = createHexCollorConverter(HexCollor)
    var rgb = HexCollorConverter.toRgb
    check uint(123) == rgb.getRedColor
    check uint(45) == rgb.getGreenColor
    check uint(67) == rgb.getBlueColor

  test "should convert to hex":
    var HexCollor = createHexCollor("7B2D43")
    var HexCollorConverter = createHexCollorConverter(HexCollor)
    check "7B2D43" == HexCollorConverter.toHex.getColor

  test "should convert to cmyk":
    var HexCollor = createHexCollor("7B2D43")
    var HexCollorConverter = createHexCollorConverter(HexCollor)
    var cmyk = HexCollorConverter.toCmyk()

    check 0 == cmyk.getCyanColor
    check 0.63 == cmyk.getMagentaColor
    check 0.46 == cmyk.getYellowColor
    check 0.52 == cmyk.getBlackColor

    HexCollor = createHexCollor("FFFFFF")
    HexCollorConverter = createHexCollorConverter(HexCollor)
    cmyk = HexCollorConverter.toCmyk()

    check 0 == cmyk.getCyanColor
    check 0 == cmyk.getMagentaColor
    check 0 == cmyk.getYellowColor
    check 0 == cmyk.getBlackColor

    HexCollor = createHexCollor("000000")
    HexCollorConverter = createHexCollorConverter(HexCollor)

    cmyk = HexCollorConverter.toCmyk()
    check 1 == cmyk.getCyanColor
    check 1 == cmyk.getMagentaColor
    check 1 == cmyk.getYellowColor
    check 1 == cmyk.getBlackColor

  test "should convert to hsl":
    var HexCollor = createHexCollor("7B2D43")
    var HexCollorConverter = createHexCollorConverter(HexCollor)
    var hsl = HexCollorConverter.toHsl()

    check uint(343) == hsl.getH
    check 0.464 == hsl.getS
    check 0.329 == hsl.getL

    HexCollor = createHexCollor("FFFFFF")
    HexCollorConverter = createHexCollorConverter(HexCollor)
    hsl = HexCollorConverter.toHsl()

    check uint(0) == hsl.getH
    check 0 == hsl.getS
    check 1 == hsl.getL

    HexCollor = createHexCollor("000000")
    HexCollorConverter = createHexCollorConverter(HexCollor)
    hsl = HexCollorConverter.toHsl()

    check uint(0) == hsl.getH
    check 0 == hsl.getS
    check 0 == hsl.getL