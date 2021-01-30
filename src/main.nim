import os

import 
  ../src/service/base_service,
  ../src/service/hex_color_service,
  ../src/service/rgb_color_service,
  ../src/service/color_name_service
  ../src/service/

import 
  ../src/option/color_option

import 
  ../src/constants/option as const_option,
  ../src/constants/instructions

proc notEnoughParamCount():bool = return paramCount() == 0 or paramCount() == 1

proc createColorConvertService(option: ColorOption): BaseService = 
  case option.input
  of I_OPTION_HEX:
    return HexColorService()
  of I_OPTION_RGB:
    return RgbColorService()
  of I_OPTION_COLOR:
    return ColorNameService()

proc convert(option: ColorOption): void = 
  try:
    let service = createColorConvertService(option)
    case option.output:
    of O_OPTION_HEX:
      service.toHex(option.colorValue)
    of O_OPTION_RGB:
      service.toRgb(option.colorValue)
  except:
    echo getCurrentExceptionMsg()

proc main(): void =
  if notEnoughParamCount():
    echo INSTRUCTIONS
    system.quit(QuitSuccess)

  let option = createColorOption(paramStr(1), paramStr(2))
  convert(option)

main()