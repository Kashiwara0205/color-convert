import strutils

type ColorOption* = object
  input*: string
  colorText*: string
  output*: string
  
func createColorOption*(input: string, output: string): ColorOption = 
  let splitedinput = input.split(":")
  return ColorOption(input: splitedinput[0], colorText: splitedinput[1], output: output)
