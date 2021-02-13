import ../../../src/values/inputted_value/inputted_hsl
import unittest

suite "check InputtedHsl":
  test "should create InputtedHsl":
    let hsl = createInputtedHsl("1,2,3")
    check "1" == hsl.getInputValue[0]
    check "2" == hsl.getInputValue[1]
    check "3" == hsl.getInputValue[2]

  test "should failed create InputtedHsl when wrong arguments":

    try:
      discard createInputtedHsl("1")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()

    try:
      discard createInputtedHsl("1,2")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()

    try:
      discard createInputtedHsl("1,2,3,4")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()