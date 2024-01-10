*** Variables ***
# variáveis de configuração
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
...                         APP_INPUT_TEXT=//android.widget.EditText
...                         BUTTON_CONTINUAR_PAGE=CONTINUAR
...                         BUTTON_ENTRAR_LOGIN=Entrar
...                         POP_UP=xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup
...                         DENIE_POP_UP=Agora não
...                         ELEMENT_ENTRAR=//*[contains(@text,"Entrar")]
