import ../../../src/color/hex_color
import unittest

suite "description for hexColor":
  test "should create hexColor":
    let color = createHexColor("7B2D43")
    check "7B2D43" == color.getColor