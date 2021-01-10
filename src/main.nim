import ../src/service/hexColorService
import ../src/option/color_option

let option = createColorOption("--iHex:7B2D43", "--oHex")
case option.input
of "--iHex":
  let service = hexColorService()
  case option.output:
  of "--oHex":
    service.toHex(option.colorText)