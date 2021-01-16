import strutils
import ../color/rgb_color
import ../color/hex_color

type HexConverter* = object
  color: HexColor

func createHexConverter*(color: HexColor): HexConverter =
  return HexConverter(color: color)

proc toHex*(converterObj: HexConverter): HexColor = 
  return converterObj.color

proc toRgb*(converterObj: HexConverter): RgbColor = 
  let color = converterObj.color.getColor
  let r = color[0] & color[1]
  let g = color[2] & color[3]
  let b = color[4] & color[5]

  return createRgb(fromHex[uint](r), fromHex[uint](g), fromHex[uint](b))