import ../src/hex_converter

block test:
  var hexConverter = createHexConverter("DEADBF")
  var rgb = hexConverter.toRgb
  assert 1 == rgb[0]
  assert 1 == rgb[1]
  assert 1 == rgb[2]