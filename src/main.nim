import ../src/service/hexColorService
let outOption = "--oHex"

case outOption
of "--oHex":
  let service = hexColorService()
  service.toHex("--iHex:7B2D43")
