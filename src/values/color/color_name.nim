type ColorName* =  ref object of RootObj
  name: string

proc getColorName*(color: ColorName): string = 
  return color.name

proc createColorName*(name: string): ColorName = 
  return ColorName(name: name)