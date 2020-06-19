*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${user_patient}         vasinz
${password_patient}     m12345678

*** Keywords ***
Open Dhi Patient
    Open Browser            ${url_patient}              ${browser}
    Maximize Browser Window
    Wait Until Page Contains            ปรึกษาอาการป่วยเบื้องต้น         timeout=15s

Login with user patient
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${f_login}
    Wait Until Page Contains            เข้าสู่ระบบ                    timeout=15s
    sleep   2s
    Input Text              ${username}                 ${user_patient}
    Input Text              ${password}                 ${password_patient}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${login_button}
    Wait Until Page Contains            ปรึกษาอาการป่วยเบื้องต้น         timeout=15s

Register New user
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${f_register}
    Wait Until Page Contains            ลงทะเบียน                    timeout=15s
    sleep   2s