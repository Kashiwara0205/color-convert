type BaseService* = ref object of RootObj
method toHex*(service: BaseService, hex_color_text: string): void {.base.}= discard
method toRgb*(service: BaseService, hex_color_text: string): void {.base.}= discard
method toCmyk*(service: BaseService, hex_color_text: string): void {.base.}= discard