import ../../../src/values/inputted_value/inputted_cmyk
import unittest

suite "check InputtedCmyk":
  test "should create InputtedCmyk":
    let cmyk = createInputtedCmyk("1,2,3,4")
    check "1" == cmyk.getInputValue[0]
    check "2" == cmyk.getInputValue[1]
    check "3" == cmyk.getInputValue[2]
    check "4" == cmyk.getInputValue[3]

  test "should failed create InputtedCmyk when wrong arguments":

    try:
      discard createInputtedCmyk("1")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()

    try:
      discard createInputtedCmyk("1,2")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()

    try:
      discard createInputtedCmyk("1,2,3")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()

    try:
      discard createInputtedCmyk("1,2,3,4,5")
    except:
      check "Not enough arguments" == getCurrentExceptionMsg()