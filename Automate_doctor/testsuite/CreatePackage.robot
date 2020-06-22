*** Settings ***
Resource        ../config/Config.robot
Resource        ../variables/variable_CreatePackage.robot
Resource        ../resources/resource_CreatePackage.robot

*** Test Cases ***
Create Package
        normaly 
        1 bath                             