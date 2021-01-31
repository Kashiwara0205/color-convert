import os

import 
  ../src/service/base_service/base_service,
  ../src/service/hex_color_service/hex_color_service,
  ../src/service/rgb_color_service/rgb_color_service,
  ../src/service/color_name_service/color_name_service,
  ../src/service/cmyk_color_service/cmyk_color_service

import 
  ../src/values/option/color_option

import 
  ../src/constants/option as const_option,
  ../src/constants/instructions,
  ../src/utils/terminal_text/terminal_text

proc notEnoughParamCount():bool = return paramCount() == 0 or paramCount() == 1

proc createColorConvertService(option: ColorOption): BaseService = 
  case option.input
  of I_OPTION_HEX:
    return HexCollorService()
  of I_OPTION_RGB:
    return RgbColorService()
  of I_OPTION_COLOR:
    return ColorNameService()
  of I_OPTION_CMYK:
    return CmykColorService()

proc convert(option: ColorOption): void =
  try:
    let terminal_text_creater = TerminalTextCreater()
    let convert_service = createColorConvertService(option)
    case option.output:
    of O_OPTION_HEX:
      echo terminal_text_creater.createHexText( convert_service.toHex(option.colorValue) )
    of O_OPTION_RGB:
      echo terminal_text_creater.createRgbText( convert_service.toRgb(option.colorValue) )
    of O_OPTION_CMYK:
      echo terminal_text_creater.createCmykText( convert_service.toCmyk(option.colorValue) )
  except:
    echo getCurrentExceptionMsg()

proc main(): void =
  if notEnoughParamCount():
    echo INSTRUCTIONS
    system.quit(QuitSuccess)

  let option = createColorOption(paramStr(1), paramStr(2))
  convert(option)

main()