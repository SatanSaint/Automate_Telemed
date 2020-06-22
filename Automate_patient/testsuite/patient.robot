*** Setting ***
Resource            ../resources/patient_resources.robot
Resource            ../variables/patient_variables.robot
Resource            ../config/Config.robot
Suite Setup         Open Dhi Patient


*** Test Cases ***
Login
    Login with user patient
    sleep   10s
    Close Browser

# Register
#     Register New user
#     sleep   10s
#     Close Browser

# Forgot
    # Forgot Password
    # sleep   10s
    # Close Browser

Edit Profile user
    Edit Profile
    sleep   10s
    Close Browser

Appointment Doctor
    Appointment doctor
    sleep   10s
    Close Browser

