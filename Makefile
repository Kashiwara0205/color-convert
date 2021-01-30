unit:
	nim c -o:bin/color_convert src/main.nim
	nim c -o:test_result/hex_color_converter_test -r test/converters/hex_color_converter_test.nim
	nim c -o:test_result/rgb_color_converter_test -r test/converters/rgb_color_converter_test.nim
	nim c -o:test_result/color_name_converter_test -r test/converters/color_name_converter_test.nim
	nim c -o:test_result/cmyk_color_converter_test -r test/converters/cmyk_color_converter_test.nim

	nim c -o:test_result/rgb_color_test -r test/color/rgb_color_test.nim
	nim c -o:test_result/hex_color_test -r test/color/hex_color_test.nim
	nim c -o:test_result/color_name_test -r test/color/color_name_test.nim
	nim c -o:test_result/cmyk_color_test -r test/color/cmyk_color_test.nim

	nim c -o:test_result/terminal_text_test -r test/terminal_text/terminal_text_test.nim
	nim c -o:test_result/color_option_test -r test/option/color_option_test.nim

cmyk_color_converter_test:
	nim c -o:test_result/cmyk_color_converter_test -r test/converters/cmyk_color_converter_test.nim
	
unit_color_option:
	nim c -o:test_result/color_option_test -r test/option/color_option_test.nim
build:
	nim c -o:bin/color_convert src/main.nim