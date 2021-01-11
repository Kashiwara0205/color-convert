import ../../src/option/color_option
import unittest


suite "description for colorOption":
  test "should create colorOption":
    var option = createColorOption("--iHex:7B2D43", "--oHex")
    check "--iHex" == option.input
    check "7B2D43" == option.colorValue
    check "--oHex" == option.output