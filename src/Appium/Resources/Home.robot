*** Variables ***
&{ANDROID_CONFIGURATION}
...                         ANDROID_AUTOMATION_NAME=UIAutomator2
...                         ANDROID_APP=Bankeiro
...                         ANDROID_PLATFORM_NAME=Android
...                         ANDROID_DEVICENAME=emulator-5554
...                         ANDROID_ACTIVITY=com.bankeiro.test.MainActivity
...                         ANDROID_APPPACKAGE=com.bankeiro.test

&{HOME_PAGE_LOCATORS}
...                         CONFIG_ELEMENT=//android.widget.ScrollView
...                         BUTTON_ENTRAR_HOME=//*[contains(@text,"ENTRAR")]
...                         BUTTON_ENTRAR_PAGE=ENTRAR
