from appium import webdriver
# Configuração das capacidades desejadas
desired_caps = {
    "platformName": "Android",
    "deviceName": "emulator-5554",
    "appPackage": "com.bankeiro.test",
    "appActivity": "com.bankeiro.test.MainActivity",
    "automationName": "UIAutomator2"
}

# Inicia a sessão do driver do Appium
driver = webdriver.Remote("http://localhost:4723/wd/hub", desired_caps)

driver.implicitly_wait(30)

element1 = driver.find_element_by_xpath(
    "//*[@resource-id='welcome_WelcomeComponent_signInButton']")
element1.click()

element2 = driver.find_element_by_xpath(
    "//*[@resource-id='login_LoginScreen_forgotPasswordButton']")
element2.click()

driver.implicitly_wait(10)

element3 = driver.find_element_by_xpath(
    "//*[@resource-id='recoverCpfCnpj_TaxIdScreen_cpfCnpjInput']")
element3.send_keys('999.999.999-99')
