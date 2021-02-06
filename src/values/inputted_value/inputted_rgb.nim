import strutils

proc valudInputCmyk(value: string) =
  let cmyk_value = value.split(",")

  if cmyk_value.len != 3:
    raise Exception.newException("Not enough arguments") 

type InputtedRgb* = object
  value: seq[string]

proc getInputValue*(inputed: InputtedRgb): seq[string] =
  return inputed.value

proc createInputtedRgb*(value: string): InputtedRgb = 
  valudInputCmyk(value)
  return InputtedRgb(value: value.split(",") )