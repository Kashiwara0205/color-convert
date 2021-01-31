import ../../../src/values/color/color_name
import unittest

suite "description for ColorName":
  test "should create ColorName":
    let color_name = createColorName("Red")
    check "Red" == color_name.getColorName