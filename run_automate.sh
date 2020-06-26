robot Automate_patient/testsuite/patient.robot

mypass=$(echo 'cat //statistics/suite/stat[1]/@pass' | xmllint --shell output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')
echo $mypass

myfail=$(echo 'cat //statistics/suite/stat[1]/@fail' | xmllint --shell output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')
echo $myfail

LINE_ACCESSTOKEN="Cmg8RIWBqZ78V1kcM7MGKnDsH2OKjudq1I7bnqXmovO"
MESSAGE_Result="PASS=$mypass And FAIL=$myfail"


curl -X POST https://notify-api.line.me/api/notify \
 -H "Authorization: Bearer $LINE_ACCESSTOKEN" \
 -H "Content-Type: application/x-www-form-urlencoded" \
 -d "message=$MESSAGE_Result"