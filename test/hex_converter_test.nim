import ../src/hex_converter

block test:
  var hexConverter = createHexConverter("7B2D43")
  var rgb = hexConverter.toRgb
  assert 123 == rgb[0]
  assert 45 == rgb[1]
  assert 67 == rgb[2]