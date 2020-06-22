*** Settings ***
Resource        ../config/Config.robot
Resource        ../variables/variable_workTime.robot
Resource        ../resources/resource_workTime.robot

*** Test Cases ***
Work Time Setup
        Add time
        Edit time                             