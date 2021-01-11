import ../src/service/hexColorService
import ../src/option/color_option
import ../src/constants/constants

let option = createColorOption("--iHex:7B2D43", "--oHex")
case option.input
of I_HEX:
  let service = hexColorService()
  case option.output:
  of O_HEX:
    service.toHex(option.colorValue)