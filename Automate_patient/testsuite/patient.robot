*** Setting ***
Resource            ../resources/patient_resources.robot
Resource            ../variables/patient_variables.robot
Resource            ../config/Config.robot
# Suite Setup         Open Dhi Patient


*** Test Cases ***
Login
    Open Dhi Patient
    Login with user patient
    sleep   10s
    Close Browser

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
    Edit Profile2
    sleep   10s
    Close Browser

# Appointment Doctor
#     Open Dhi Patient
#     Appointment doctor
#     sleep   10s
#     Close Browser