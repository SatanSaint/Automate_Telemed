*** Setting ***
Resource            ../resources/patient_resources.robot
Resource            ../variables/patient_variables.robot
Resource            ../config/Config.robot
Suite Setup         Open Dhi Patient


*** Test Cases ***
Login
    Login with user patient
    Close Browser

# Register
#     Register New user
#     Close Browser

# Forgot
    # Forgot Password
    # Close Browser

Edit Profile user
    Edit Profile
    Close Browser


