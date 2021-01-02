import ../src/converting/hex_converter
import ../src/color/rgb_color

block test:
  # outline: should get rgb from hex
  # expected: - red color is 123
  #           - green color is 45
  #           - blue color is 67
  var hexConverter = createHexConverter("7B2D43")
  var rgb = hexConverter.toRgb
  assert 123 == rgb.getRedColor
  assert 45 == rgb.getGreenColor
  assert 67 == rgb.getBlueColor

  # outline: sgould get hex from hex
  # expected - 7B2D43
  hexConverter = createHexConverter("7B2D43")
  assert "7B2D43" == hexConverter.toHex