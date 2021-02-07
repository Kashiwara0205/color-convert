import ../../values/color/hsl_color
import ../../values/color/rgb_color

type RgbtoHslCaliculator* = object

proc calcH(Calculator: RgbtoHslCaliculator, delta: float, r_dush: float, b_dush: float, g_dush: float, c_max: float): uint =
  if delta == 0: return 0
  
  if c_max == r_dush: 
    return uint( 60 * ( ( ( g_dush - b_dush ) / delta + float(if g_dush < b_dush: 6 else: 0 )) ) )

  if c_max == g_dush:
    return uint( 60 * ( ( b_dush - r_dush ) / delta + 2 ) )

  return uint( 60 * ( ( r_dush - g_dush ) / delta + 4 ))

proc calcS(Calculator: RgbtoHslCaliculator, L: float, delta: float): float =
  if delta == 0: return 0
  return delta / ( 1 - abs(2 * L - 1) )

proc calcL(Calculator: RgbtoHslCaliculator, c_max: float, c_min: float): float =
  return (c_max + c_min) / 2

proc calc*(Calculator: RgbtoHslCaliculator, color: RgbColor): HslColor = 
  let r_dush = float( color.getRedColor() ) / 255
  let g_dush = float( color.getBlueColor() ) / 255
  let b_dush = float( color.getGreenColor() ) / 255

  let c_max = max([r_dush, g_dush, b_dush])
  let c_min = min([r_dush, g_dush, b_dush])

  let delta = c_max - c_min

  let h = Calculator.calcH(delta, r_dush, g_dush, b_dush, c_max)
  let L = Calculator.calcL(c_max, c_min)
  let s = Calculator.calcS(L, delta)
  
  return createHslColor(h, s, L)