#!/bin/sh

dispTitle () {
  echo "--------------------------"
  echo "About: [ $1 ]"
  echo "--------------------------"
  echo ""
}

checkExecutetion () {
  test_result=$?
  echo "Test:[ $1 ]"
  if [ 0 -eq $test_result ]; then
    echo "=> SUCCESS" 
  else
    echo "=> FAILED"
    exit 1
  fi
  echo ""
}

# check 
dispTitle "Disp introduction"
./bin/color_convert --iRgb:90,45,67 > /dev/null 2>&1
checkExecutetion "wrong argument number(--iRgb:90,45,67)" 

./bin/color_convert > /dev/null 2>&1
checkExecutetion "wrong argument number()" 

./bin/color_convert --iRgb:90, 45, 67,30 --oRgb > /dev/null 2>&1
checkExecutetion "wrong argument number(--iRgb:90, 45, 67,30 --oRgb)" 

dispTitle "RgbConvert"

./bin/color_convert --iRgb:90,45,67 --oCmyk > /dev/null 2>&1
checkExecutetion "Rgb to Cmyk" 


./bin/color_convert --iRgb:90,45,67 --oHex > /dev/null 2>&1
checkExecutetion "Rgb to Hex" 

./bin/color_convert --iRgb:90,45,67 --oRgb > /dev/null 2>&1
checkExecutetion "Rgb to Rgb" 

./bin/color_convert --iRgb:90,45,67 --oHsl > /dev/null 2>&1
checkExecutetion "Rgb to Hsl" 

dispTitle "HexConvert"
./bin/color_convert --iHex:"FFFFFF" --oCmyk >/dev/null 2>&1
checkExecutetion "Hex to Cmyk" 

./bin/color_convert --iHex:"FFFFFF" --oHex > /dev/null 2>&1
checkExecutetion "Hex to Hex" 

./bin/color_convert --iHex:"FFFFFF" --oRgb > /dev/null 2>&1
checkExecutetion "Hex to Rgb" 

./bin/color_convert --iHex:"FFFFFF" --oHsl > /dev/null 2>&1
checkExecutetion "Hex to Hsl" 

dispTitle "ColorNameConvert"
./bin/color_convert --iColor:Red --oCmyk > /dev/null 2>&1
checkExecutetion "Color:Red to Cmyk" 

./bin/color_convert --iColor:Red --oHex > /dev/null 2>&1
checkExecutetion "Color:Red to Hex" 

./bin/color_convert --iColor:Red --oRgb > /dev/null 2>&1
checkExecutetion "Color:Red to Rgb" 

./bin/color_convert --iColor:Red --oHsl > /dev/null 2>&1
checkExecutetion "Color:Red to Hsl" 

dispTitle "CmykConvert"
./bin/color_convert --iCmyk:2,2,2,2 --oCmyk > /dev/null 2>&1
checkExecutetion "Cmyk to Cmyk" 

./bin/color_convert --iCmyk:2,2,2,2 --oHex > /dev/null 2>&1
checkExecutetion "Cmyk to Hex" 

./bin/color_convert --iCmyk:2,2,2,2 --oRgb > /dev/null 2>&1
checkExecutetion "Cmyk to Rgb" 

./bin/color_convert --iCmyk:2,2,2,2 --oHsl > /dev/null 2>&1
checkExecutetion "Cmyk to Hsl" 

dispTitle "HslConvert"
./bin/color_convert --iHsl:2,2,2 --oRgb > /dev/null 2>&1
checkExecutetion "Hsl to Rgb" 

./bin/color_convert --iHsl:2,2,2 --oCmyk > /dev/null 2>&1
checkExecutetion "Hsl to Cmyk" 

./bin/color_convert --iHsl:2,2,2 --oHex > /dev/null 2>&1
checkExecutetion "Hsl to Hex" 

./bin/color_convert --iHsl:2,2,2 --oHsl > /dev/null 2>&1
checkExecutetion "Hsl to Hsl" 