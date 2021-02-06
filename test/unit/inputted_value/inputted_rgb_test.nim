import ../../../src/values/inputted_value/inputted_rgb
import unittest

suite "check InputtedRgb":
  test "should create InputtedRgb":
    let cmyk = createInputtedRgb("1,2,3")
    check "1" == cmyk.getInputValue[0]
    check "2" == cmyk.getInputValue[1]
    check "3" == cmyk.getInputValue[2]

  test "should failed create InputtedRgb when wrong arguments":

    try:
      discard createInputtedRgb("1")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()

    try:
      discard createInputtedRgb("1,2")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()

    try:
      discard createInputtedRgb("1,2,3,4")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()