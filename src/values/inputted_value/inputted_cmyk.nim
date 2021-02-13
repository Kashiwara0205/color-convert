import strutils

proc validInputCmyk(value: string) =
  let cmyk_value = value.split(",")

  if cmyk_value.len != 4:
    raise Exception.newException("Not enough arguments") 

type InputtedCmyk* = object
  value: seq[string]

proc getInputValue*(inputed: InputtedCmyk): seq[string] =
  return inputed.value

proc createInputtedCmyk*(value: string): InputtedCmyk = 
  validInputCmyk(value)
  return InputtedCmyk(value: value.split(",") )