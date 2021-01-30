import ../../../src/option/color_option
import unittest

suite "description for colorOption":

  test "should create colorOption":
    var option = createColorOption("--iHex:7B2D43", "--oHex")
    check "--iHex" == option.input
    check "7B2D43" == option.colorValue
    check "--oHex" == option.output

  test "make sure validInputOptionForm":
    try:
      discard createColorOption("--iHex", "--oHex")
    except:
      check "Wrong input form" == getCurrentExceptionMsg()

  test "make sure validInputOptionName":
    try:
      discard createColorOption("--iAbc:7B2D43", "--oHex")
    except:
      check "Not Exists Input Option" == getCurrentExceptionMsg()

  test "make sure validOutputOptionName":
    try:
      discard createColorOption("--iHex:7B2D43", "--oAbc")
    except:
      check "Not Exists Output Option" == getCurrentExceptionMsg()