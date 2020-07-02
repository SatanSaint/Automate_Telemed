robot Automate_patient/testsuite/patient.robot

mypass=$(echo 'cat //statistics/suite/stat[1]/@pass' | xmllint --shell output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')
echo $mypass

myfail=$(echo 'cat //statistics/suite/stat[1]/@fail' | xmllint --shell output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')
echo $myfail

# LINE_ACCESSTOKEN="FOQXpwkxyVbbe0NU2biVfPEJ2ceIO8X25iT2neEvTZ5"
ONE_ACCESSTOKEN="A63ffb5e3034b502e93df2f3a55a1fbcc0bd0c1e82b824de1a0f6a14fc57a0d4360e17bf2587f4fcfafae449b816ff9ac"
MESSAGE_Result="PASS=$mypass And FAIL=$myfail"


# curl -X POST https://notify-api.line.me/api/notify \
#  -H "Authorization: Bearer $LINE_ACCESSTOKEN" \
#  -H "Content-Type: application/x-www-form-urlencoded" \
#  -d "message=$MESSAGE_Result"

  curl -X POST https://chat-api.one.th/message/api/v1/push_message  \
    -H "Authorization: Bearer $ONE_ACCESSTOKEN" \
    -H "Content-Type: application/json" \
    -d '{"to" : "Ue9fb1be7c1f55981a9533cbc51e64978", "bot_id" : "Bf0af7bfe1c715ea6a8a9758e23bb18f6", "type" : "text", "message" : "'"$MESSAGE_Result"'", "custom_notification" : "เปิดอ่านข้อความใหม่จากทางเรา"}'