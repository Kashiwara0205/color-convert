import ../src/service/hexColorService
import ../src/option/color_option
import ../src/constants/constants

let option = createColorOption("--iHex:7B2D43", "--oRgb")
case option.input
of I_HEX:
  let service = hexColorService()
  case option.output:
  of O_HEX:
    service.toHex(option.colorValue)
  of O_RGB:
    service.toRgb(option.colorValue)