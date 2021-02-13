import sequtils
import strutils
import ../../constants/option as const_option

proc validInputOptionForm(input: string): bool = 
  if input.find(":") == -1: return false

  let splitedinput = input.split(":")
  if splitedinput.len != 2: return false

  return true

proc validInputOptionName(input: string): bool = 
  let splitedinput = input.split(":")
  return @[I_OPTION_RGB, I_OPTION_HEX, I_OPTION_COLOR, I_OPTION_CMYK, I_OPTION_HSL].anyIt(it == splitedinput[0])

proc validOutputOptionName(output: string): bool = 
  return @[O_OPTION_RGB, O_OPTION_HEX, O_OPTION_CMYK, O_OPTION_HSL].anyIt(it == output)

proc validOption(input: string, output: string): void = 
  if not validInputOptionForm(input): raise Exception.newException("Wrong input form")
  if not validInputOptionName(input): raise Exception.newException("Not Exists Input Option")
  if not validOutputOptionName(output): raise Exception.newException("Not Exists Output Option")

type ColorOption* = object
  input*: string
  colorValue*: string
  output*: string

proc createColorOption*(input: string, output: string): ColorOption = 
  validOption(input, output)
  let splitedinput = input.split(":")
  return ColorOption(input: splitedinput[0], colorValue: splitedinput[1], output: output)
