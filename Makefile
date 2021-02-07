build:
	nim c -o:test_result/hex_color_converter_test -r test/unit/converters/hex_color_converter_test.nim
	nim c -o:test_result/rgb_color_converter_test -r test/unit/converters/rgb_color_converter_test.nim
	nim c -o:test_result/color_name_converter_test -r test/unit/converters/color_name_converter_test.nim
	nim c -o:test_result/cmyk_color_converter_test -r test/unit/converters/cmyk_color_converter_test.nim

	nim c -o:test_result/rgb_color_test -r test/unit/color/rgb_color_test.nim
	nim c -o:test_result/hex_color_test -r test/unit/color/hex_color_test.nim
	nim c -o:test_result/color_name_test -r test/unit/color/color_name_test.nim
	nim c -o:test_result/cmyk_color_test -r test/unit/color/cmyk_color_test.nim
	nim c -o:test_result/hsl_color_test -r test/unit/color/hsl_color_test.nim

	nim c -o:test_result/terminal_text_test -r test/unit/terminal_text/terminal_text_test.nim
	nim c -o:test_result/color_option_test -r test/unit/option/color_option_test.nim

	nim c -o:test_result/inputted_cmyk_test -r test/unit/inputted_value/inputted_cmyk_test.nim
	nim c -o:test_result/inputted_rgb_test -r test/unit/inputted_value/inputted_rgb_test.nim

	nim c -o:bin/color_convert src/main.nim

	sh test/system/test.sh

rgb_color_converter_test:
	nim c -o:test_result/rgb_color_converter_test -r test/unit/converters/rgb_color_converter_test.nim

unit_color_option:
	nim c -o:test_result/color_option_test -r test/unit/option/color_option_test.nim