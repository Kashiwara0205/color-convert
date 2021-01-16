import ../../src/color/string_color
import unittest

suite "description for stringColor":
  test "should create stringColor":
    let string_color = createStringColor("Red")
    check "Red" == string_color.getColorName