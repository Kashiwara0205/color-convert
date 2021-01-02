import ../src/color/rgb_color

block test:
  let rgb = createRgb(1, 2, 3)
  assert 1 == rgb.getRedColor
  assert 2 == rgb.getGreenColor
  assert 3 == rgb.getBlueColor