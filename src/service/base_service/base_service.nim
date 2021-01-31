import ../../values/color/cmyk_color
import ../../values/color/hex_color
import ../../values/color/rgb_color

type BaseService* = ref object of RootObj
method toHex*(service: BaseService, hex_color_text: string): HexCollor {.base.}= discard
method toRgb*(service: BaseService, hex_color_text: string): RgbColor {.base.}= discard
method toCmyk*(service: BaseService, hex_color_text: string): CmykColor {.base.}= discard