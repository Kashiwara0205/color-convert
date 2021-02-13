import strutils

proc validInputtedHsl(value: string) =
  let hsl_value = value.split(",")

  if hsl_value.len != 3:
    raise Exception.newException("Not enough arguments") 

type InputtedHsl* = object
  value: seq[string]

proc getInputValue*(inputed: InputtedHsl): seq[string] =
  return inputed.value

proc createInputtedHsl*(value: string): InputtedHsl = 
  validInputtedHsl(value)
  return InputtedHsl(value: value.split(",") )