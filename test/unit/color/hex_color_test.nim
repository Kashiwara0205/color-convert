import ../../../src/values/color/hex_color
import unittest

suite "description for HexCollor":
  test "should create HexCollor":
    let color = createHexCollor("7B2D43")
    check "7B2D43" == color.getColor