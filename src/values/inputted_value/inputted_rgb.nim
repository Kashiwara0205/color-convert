import strutils

proc validInputtedRgb(value: string) =
  let rgb_value = value.split(",")

  if rgb_value.len != 3:
    raise Exception.newException("Not enough arguments") 

type InputtedRgb* = object
  value: seq[string]

proc getInputValue*(inputed: InputtedRgb): seq[string] =
  return inputed.value

proc createInputtedRgb*(value: string): InputtedRgb = 
  validInputtedRgb(value)
  return InputtedRgb(value: value.split(",") )