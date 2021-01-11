import os
import ../src/service/hexColorService
import ../src/option/color_option
import ../src/constants/constants

proc shouldDispInstruction():bool = return paramCount() == 0 or paramCount() == 1

proc convert(input: string, output: string): void = 
  try:
    let option = createColorOption(input, output)
    case option.input
    of I_HEX:
      let service = hexColorService()
      case option.output:
      of O_HEX:
        service.toHex(option.colorValue)
      of O_RGB:
        service.toRgb(option.colorValue)
  except:
    echo getCurrentExceptionMsg()

if shouldDispInstruction():
  echo INSTRUCTIONS
  system.quit(QuitSuccess)

convert(paramStr(1), paramStr(2))