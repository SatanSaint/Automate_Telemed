*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${user_patient}         vasinz
${password_patient}     m12345678
${email}                vasin.ko@inet.co.th

${day}                              04
${month}                            05
${year}                             2539

${regis_username}                   test1
${regis_phone}                      0614181257
${regis_name}                       Mina
${regis_lastname}                   Romero
${regis_citizen}                    1131800813331
${regis_email}                      nemesisnumber5@gmail.com

*** Keywords ***
Open Dhi Patient
    Open Browser                            ${url_patient}              ${browser}
    Maximize Browser Window
    Wait Until Page Contains            ปรึกษาอาการป่วยเบื้องต้น         timeout=15s

Login with user patient
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${f_login}
    Wait Until Page Contains            เข้าสู่ระบบ                    timeout=15s
    sleep   2s
    Input Text                              ${username}                 ${user_patient}
    Input Text                              ${password}                 ${password_patient}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${login_button}
    Wait Until Page Contains            ปรึกษาอาการป่วยเบื้องต้น         timeout=15s

Register New user
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${f_register}
    Wait Until Page Contains            ลงทะเบียน                    timeout=15s
    sleep   2s
    Input Text                              ${r_username}               ${regis_username}
    Input Text                              ${r_phone}                  ${regis_phone}
    Input Text                              ${r_password}               ${password_patient}
    Input Text                              ${r_c_password}             ${password_patient}
    sleep   1s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${next_button}
    sleep   2s
    Input Text                              ${r_full_name}              ${regis_username}
    Input Text                              ${r_full_surname}           ${regis_phone}
    Select From List By Value               ${r_select_day}             ${day}   
    sleep   1s
    Select From List By Value               ${r_select_month}           ${month}   
    sleep   1s
    Select From List By Value               ${r_select_year}            ${year}   
    sleep   1s           
    Input Text                              ${r_email}                  ${regis_email}
    sleep   1s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${next_button}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${input_term}
    # Wait Until Keyword Succeeds     5x      3s      Click Element           ${next_button}

Forgot Password
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${f_login}
    Wait Until Page Contains            เข้าสู่ระบบ                    timeout=15s
    sleep   2s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${forgot_password}
    Wait Until Page Contains            ลืมรหัสผ่าน                    timeout=15s
    sleep   2s
    Input Text                              ${forgot_user}                  ${user_patient}
    Input Text                              ${forgot_email}                 ${email}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${cancel_forgot}
    # Wait Until Keyword Succeeds     5x      3s      Click Element           ${forgot_button}

Edit Profile
    Login with user patient
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Hamberger}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Profile}
    Wait Until Page Contains            ข้อมูลผู้ป่วย                    timeout=15s
    Clear Element Text                      ${disease}
    Input Text                              ${disease}                      test
    Clear Element Text                      ${drug_allergy}
    Input Text                              ${drug_allergy}                 test
    Clear Element Text                      ${food_allergy}
    Input Text                              ${food_allergy}                 test
    Clear Element Text                      ${alcohol}
    Input Text                              ${alcohol}                      test
    Clear Element Text                      ${smoking}
    Input Text                              ${smoking}                      test
    sleep   2s  
    Clear Element Text                      ${address}
    Input Text                              ${address}                      test
    Clear Element Text                      ${contract_name}
    Input Text                              ${contract_name}                Ora
    Clear Element Text                      ${contract_surname}
    Input Text                              ${contract_surname}             Griffith
    Clear Element Text                      ${contract_phone}
    Input Text                              ${contract_phone}               0987654321
    Clear Element Text                      ${contract_relation}
    Input Text                              ${contract_relation}            someone
    sleep   2s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${save_profile}
    Wait Until Page Contains Element        ${check_update_profile}         timeout=15s
    
Appointment doctor
    Login with user patient
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Hamberger}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${appoint}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${select_title}
    Scroll Element Into View                ${next_select}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${next_select}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${select_doctor}
    Wait Until Page Contains Element        ${check_select_doctor}          timeout=15s
    Scroll Element Into View                ${next_select_d}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${next_select_d}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${select_time}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${next_select_2}
    Input Text                              ${basic}                        test
    Input Text                              ${more_detail}                  test
    Clear Element Text                      ${weight}
    Input Text                              ${weight}                       80
    Clear Element Text                      ${hight}
    Input Text                              ${hight}                        168
    Scroll Element Into View                ${next_select_d}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${next_pay}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${confirm_2}
    sleep   10s
    Go to                                   ${url_patient}appointment/list

