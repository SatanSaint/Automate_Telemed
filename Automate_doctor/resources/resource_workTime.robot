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

Open time Setup Page
    Login with user Doctor
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${time_Management}
    sleep      0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${time_setup}
    Wait Until Page Contains            กำหนดตารางออกตรวจแพทย์         timeout=15s
    sleep      1s

Open All time Page
    Login with user Doctor
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${time_Management}
    sleep      0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${all_time}
    Wait Until Page Contains            กำหนดตารางออกตรวจแพทย์         timeout=15s
    sleep      1s


#################################################################################################
##########################             Time Setup             ###################################
#################################################################################################

Add time
    Open time Setup Page
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Date_23}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${add_time_btn}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${add_time_start}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${hours_start}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Done_start}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${add_time_end}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${hours_end}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${min_end}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Done_end}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${add_bnt}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${secces}
    sleep    0.5s
    close

#################################################################################################
##########################             All Time              ###################################
#################################################################################################
Edit time
    Open All time Page
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Date_23}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${edit_time_btn}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${add_time_end_edit}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${hours_end}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${Done_end}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${add_bnt}
    sleep    0.5s
    Wait Until Keyword Succeeds     5x      3s      Click Element           ${secces}
    sleep    0.5s