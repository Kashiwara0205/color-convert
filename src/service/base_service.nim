type BaseService* = ref object of RootObj
proc toHex*(service: BaseService, hex_color_text: string): void = discard
proc toRgb*(service: BaseService, hex_color_text: string): void = discard
proc toCmyk*(service: BaseService, hex_color_text: string): void = discard