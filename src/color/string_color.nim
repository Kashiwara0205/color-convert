type StringColor* =  ref object of RootObj
  color_name: string

proc getColorName*(color: StringColor): string = 
  return color.color_name

func createStringColor*(color_name: string): StringColor = 
  return StringColor(color_name: color_name)