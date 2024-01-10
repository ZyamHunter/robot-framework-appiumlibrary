*** Settings ***
Library     ../Helpers/Absolute_path.py
Library     ../Helpers/Get_Tests_Status.py
Library     ../Helpers/Get_Envs.py
Library     RequestsLibrary
Library     Collections


*** Tasks ***
Send Curl to Slack
    ${report}    Set Variable    Results\\output.xml
    ${path}    Get Absolute Path    ${report}
    ${msg}    Get Test Status    ${path}
    Curl    ${msg}


*** Keywords ***
Curl
    [Arguments]    ${msg}

    ${curl_slack}    Get Enviroment Variables
    ${endpoint}    Set Variable    ${curl_slack['SLACK_WEBHOOK']}

    ${headers}    Create Dictionary    Content-type=application/json
    ${json_data}    Create Dictionary    message=${msg}

    POST    url=${endpoint}    headers=${headers}    json=${json_data}    expected_status=200
