*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
#################################################################################################
############################             Login             ######################################
#################################################################################################
Open Dhi Doctor
    Open Browser            ${url_doctor}               ${browser}
    Maximize Browser Window
    Wait Until Page Contains            เข้าสู่ระบ         timeout=15s

Login with user Doctor
    Open Dhi Doctor
    sleep   1s
    Input Text              ${username_doctor_L}                 ${user_doctor}
    Input Text              ${password_doctor_L}                 ${password_doctor}
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${login_button_docter}
    Wait Until Page Contains            แดชบอร์ด         timeout=15s

Open time Create Package
    Login with user Doctor
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Create_Package_menu}
    sleep      0.5s
    Wait Until Page Contains            ข้อมูลกำหนดค่าบริการ         timeout=15s
    sleep      1s


#################################################################################################
##########################             Create Package             ###############################
#################################################################################################

normaly 
    Open time Create Package
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_1}                    20
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_2}                    5
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_3}                    30
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_4}                    5
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_5}                    5
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Save_bnt}
    sleep    0.5s
    Close Browser

1 bath
    Open time Create Package
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_1}                    1
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_2}                    0
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_3}                    0
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_4}                    0
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Input Text              ${Package_5}                    0
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Save_bnt}
    sleep    0.5s
    Close Browser