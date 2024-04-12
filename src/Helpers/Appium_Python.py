from appium import webdriver
from appium.options.android import UiAutomator2Options
from appium.options.ios import XCUITestOptions
from appium.webdriver.appium_service import AppiumService
from appium.webdriver.common.appiumby import AppiumBy

APPIUM_PORT = 4723
APPIUM_HOST = 'localhost'


def appium_service():
    service = AppiumService()
    service.start(
        # Check the output of `appium server --help` for the complete list of
        # server command line arguments
        args=['--address', APPIUM_HOST, '-p', str(APPIUM_PORT)],
        timeout_ms=20000,
    )
    yield service
    service.stop()


def create_ios_driver(custom_opts = None):
    options = XCUITestOptions()
    options.platformVersion = '13.4'
    options.udid = '123456789ABC'
    if custom_opts is not None:
        options.load_capabilities(custom_opts)
    # Appium1 points to http://127.0.0.1:4723/wd/hub by default
    return webdriver.Remote(f'http://{APPIUM_HOST}:{APPIUM_PORT}', options=options)


def create_android_driver(custom_opts = None):
    options = UiAutomator2Options().load_capabilities({
        'platformVersion': '13',
        'deviceName': 'R9XT4061WZT',
        'appPackage': 'com.bankeiro.test',
        'appActivity': 'com.bankeiro.test.MainActivity'
    })

    if custom_opts is not None:
        options.load_capabilities(custom_opts)
    return webdriver.Remote(f'http://{APPIUM_HOST}:{APPIUM_PORT}/wd/hub', options=options)

driver = create_android_driver()

driver.implicitly_wait(30)

element1 = driver.find_element(by=AppiumBy.XPATH, value="//*[@resource-id='welcome_WelcomeComponent_signInButton']")
element1.click()

element2 = driver.find_element(by=AppiumBy.XPATH, value="//*[@resource-id='login_LoginScreen_forgotPasswordButton']")
element2.click()

driver.implicitly_wait(10)

element3 = driver.find_element(by=AppiumBy.XPATH, value="//*[@resource-id='recoverCpfCnpj_TaxIdScreen_cpfCnpjInput']")
element3.send_keys('999.999.999-99')
