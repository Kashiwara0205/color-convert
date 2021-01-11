unit:
	nim c -o:test_result/hex_converter_test -r test/converting/hex_converter_test.nim
	nim c -o:test_result/rgb_converter_test -r test/converting/rgb_converter_test.nim
	nim c -o:test_result/rgb_color_test -r test/color/rgb_color_test.nim
	nim c -o:test_result/hex_color_test -r test/color/hex_color_test.nim
	nim c -o:test_result/terminal_text_test -r test/terminal_text/terminal_text_test.nim
	nim c -o:test_result/color_option_test -r test/option/color_option_test.nim
unit_color_option:
	nim c -o:test_result/color_option_test -r test/option/color_option_test.nim
build:
	nim c -o:bin/color_convert src/main.nim