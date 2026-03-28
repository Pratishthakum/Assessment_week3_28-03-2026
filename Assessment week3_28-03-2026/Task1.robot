
*** Settings ***
Library  SeleniumLibrary
Documentation  Myntra Automation using Robot Framework

*** Variables ***
${url}  https://www.myntra.com/

*** Test Cases ***
Myntra Automation
    [Documentation]  Task 1
    Open Browser  ${url}  chrome
    Maximize Browser Window
    Mouse Over    xpath=//a[text()="Women"]
    Click Element    xpath=//a[text()="Lehenga Cholis"]


    Scroll Element Into View    xpath=//span[text()="Color"]


    Click Element    xpath=//input[@value="Blue"]/following-sibling::div
    Sleep  4s
    ${Prod_brand}=  Get Text    //div[@class="search-searchProductsContainer row-base"]/descendant::h3
    ${Prod_Desc}=  Get Text    //div[@class="search-searchProductsContainer row-base"]/descendant::h4

    Log To Console    ${Prod_brand}
    Log To Console    ${Prod_Desc}

    Close Browser
