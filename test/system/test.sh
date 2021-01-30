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
dispTitle "RgbConvert"

./bin/color_convert --iRgb:90,45,67 --oCmyk > /dev/null 2>&1
checkExecutetion "Rgb to Cmyk" 


./bin/color_convert --iRgb:90,45,67 --oHex > /dev/null 2>&1
checkExecutetion "Rgb to Hex" 

./bin/color_convert --iRgb:90,45,67 --oRgb > /dev/null 2>&1
checkExecutetion "Rgb to Rgb" 

dispTitle "HexConvert"
./bin/color_convert --iHex:"FFFFFF" --oCmyk >/dev/null 2>&1
checkExecutetion "Hex to Cmyk" 

./bin/color_convert --iHex:"FFFFFF" --oHex > /dev/null 2>&1
checkExecutetion "Hex to Hex" 

./bin/color_convert --iHex:"FFFFFF" --oRgb > /dev/null 2>&1
checkExecutetion "Hex to Rgb" 

dispTitle "ColorNameConvert"
./bin/color_convert --iColor:Red --oCmyk > /dev/null 2>&1
checkExecutetion "Color:Red to Cmyk" 

./bin/color_convert --iColor:Red --oHex > /dev/null 2>&1
checkExecutetion "Color:Red to Hex" 

./bin/color_convert --iColor:Red --oRgb > /dev/null 2>&1
checkExecutetion "Color:Red to Rgb" 

dispTitle "CmykConvert"
./bin/color_convert --iCmyk:2,2,2,2 --oCmyk > /dev/null 2>&1
checkExecutetion "Cmyk to Cmyk" 

./bin/color_convert --iCmyk:2,2,2,2 --oHex > /dev/null 2>&1
checkExecutetion "Cmyk to Hex" 

./bin/color_convert --iCmyk:2,2,2,2 --oRgb > /dev/null 2>&1
checkExecutetion "Cmyk to Rgb" 