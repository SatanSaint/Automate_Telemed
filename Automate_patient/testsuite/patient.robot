*** Setting ***
Resource            ../resources/patient_resources.robot
Resource            ../variables/patient_variables.robot
Resource            ../config/Config.robot
Suite Setup         Open Dhi Patient

*** Variables ***   
${patient_username}                 vasinz
${patient_password}                 m12345678

*** Test Cases ***
Login
    Login with user patient
    Close Browser

Register
    Register New user
    Close Browser



