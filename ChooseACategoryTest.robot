*** Settings ***
Library  AppiumLibrary

*** Variables ***
${PAGE-TITILE}   xpath=//XCUIElementTypeNavigationBar[@name="Choose a category"]
${GREEEN-CATEGORY}   xpath=//XCUIElementTypeApplication[@name="ZalandoAssignment"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther
${BLUE-CATEGORY}    xpath=//XCUIElementTypeApplication[@name="ZalandoAssignment"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther
${GREEN-PAGE-TITLE}   xpath=//XCUIElementTypeStaticText[@name="Green"]
${BLUE-PAGE-TITLE}    xpath=//XCUIElementTypeStaticText[@name="Blue"]
${BACK-BUTTON}   nsp=name=="Choose a category"
*** Test Cases ***

Choose Green category
   open application  http://localhost:4723/wd/hub   udid=E2B46921-37B2-46D0-A97C-B783CD45706F   platformName=iOS   deviceName=iPhone 11    automationName=XCUITest  app=//Users//trinhtran//Desktop//ZalandoAssignment.app
   wait until page contains element  ${page-titile}
   click element  ${greeen-category}
   wait until page contains element    ${green-page-title}
   CLICK ELEMENT  ${back-button}

Suite Teardown     Close Application
