unit:
	nim c -o:test_result/hex_converter_test -r test/converting/hex_converter_test.nim
	nim c -o:test_result/rgb_color_test -r test/color/rgb_color_test.nim
	nim c -o:test_result/terminal_text_test -r test/terminal_text/terminal_text_test.nim
build:
	nim c -o:bin/color_convert src/main.nim