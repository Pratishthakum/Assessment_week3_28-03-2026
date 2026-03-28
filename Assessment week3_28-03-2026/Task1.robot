*** Settings ***
Library  SeleniumLibrary
Documentation  Task1
*** Variables ***
${url}  https://www.myntra.com/
*** Test Cases ***
handling Task 1
    Open Browser  ${url}  chrome
    Maximize Browser Window
    Log  navigated to myntra
    Log To Console  navigated to myntra
    Sleep  3s
    Mouse Over    xpath=(//header[@id="desktop-header-cnt"]/descendant::div[@class="desktop-navLink"])[2]/a
    Sleep  3s
    Click Element    xpath=((//div[@class="desktop-categoryContainer"])[2]/descendant::li[@class="desktop-oddColumnContent"])[1]/descendant::ul/child::li[9]/a
    Scroll Element Into View    xpath=//div[@class="vertical-filters-filters header-container"]

    Sleep  3s
    Click Element    xpath=(//div[@class="vertical-filters-filters"])[2]/descendant::li[@class="colour-listItem"][3]/descendant::span[@class="colour-label colour-colorDisplay"]
    Sleep    3s
    ${brand_name}=  Get Text    xpath=(//div[@class="product-productMetaInfo"])[4]/descendant::h3
    Log To Console  ${brand_name}
    Sleep    3s
    ${product_name}=  Get Text    xpath=(//div[@class="product-productMetaInfo"])[4]/descendant::h4[1]
    Log To Console  ${product_name}
    Close Browser