import ../../../src/values/color/hsl_color
import unittest

suite "check hslColor":
  test "should create hslColor":
    let hsl = createHslColor(1, 2, 3)
    check 1 == hsl.getH
    check 2 == hsl.getS
    check 3 == hsl.getL