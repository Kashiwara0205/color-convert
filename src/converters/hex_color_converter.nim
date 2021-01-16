import strutils
import ../color/rgb_color
import ../color/hex_color

type HexColorConverter* = object
  color: HexColor

func createHexColorConverter*(color: HexColor): HexColorConverter =
  return HexColorConverter(color: color)

proc toHex*(converterObj: HexColorConverter): HexColor = 
  return converterObj.color

proc toRgb*(converterObj: HexColorConverter): RgbColor = 
  let color = converterObj.color.getColor
  let r = color[0] & color[1]
  let g = color[2] & color[3]
  let b = color[4] & color[5]

  return createRgb(fromHex[uint](r), fromHex[uint](g), fromHex[uint](b))