import os

import 
  ../src/service/base_service,
  ../src/service/hex_color_service,
  ../src/service/rgb_color_service,
  ../src/service/color_name_service

import 
  ../src/option/color_option

import 
  ../src/constants/option as const_option,
  ../src/constants/instructions

proc shouldDispInstruction():bool = return paramCount() == 0 or paramCount() == 1

proc createColorConvertService(option: ColorOption): BaseService = 
  case option.input
  of I_HEX:
    return HexColorService()
  of I_RGB:
    return RgbColorService()
  of I_COLOR:
    return ColorNameService()

proc convert(input_option: string, output_option: string): void = 
  try:
    let option = createColorOption(input_option, output_option)
    let service = createColorConvertService(option)
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