*** Setting ***
Resource            ../resources/patient_resources.robot
Resource            ../variables/patient_variables.robot
Resource            ../config/Config.robot
# Suite Setup         Open Dhi Patient


*** Test Cases ***
Login-Edit-appointment
    Open Dhi Patient
    Login with user patient
    sleep   5s
    Capture Page Screenshot
    Close Browser
    # Edit Profile
    # sleep   5s
    # Appointment doctor
    # sleep   5s
# Register
#     Open Dhi Patient
#     Register New user
#     sleep   10s
#     Close Browser

# Forgot
#    Open Dhi Patient
#    Forgot Password
#    sleep   10s
#    Close Browser

Edit Profile user
    Open Dhi Patient
    Edit Profile
    sleep   5s
    Close Browser

Appointment Doctor
    Open Dhi Patient
    Appointment doctor
    sleep   5s
    Close Browser