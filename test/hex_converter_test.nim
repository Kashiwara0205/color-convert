import ../src/hex_converter
import ../src/rgb_color

block test:
  var hexConverter = createHexConverter("7B2D43")
  var rgb = hexConverter.toRgb
  assert 123 == rgb.getRedColor
  assert 45 == rgb.getGreenColor
  assert 67 == rgb.getBlueColor