import ../../../src/color/rgb_color
import unittest

suite "description for rgbColor":
  test "should create rgbColor":
    let rgb = createRgb(1, 2, 3)
    check 1 == rgb.getRedColor
    check 2 == rgb.getGreenColor
    check 3 == rgb.getBlueColor