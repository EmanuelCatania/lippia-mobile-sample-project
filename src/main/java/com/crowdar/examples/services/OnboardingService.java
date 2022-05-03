package com.crowdar.examples.services;

import com.crowdar.core.actions.ActionManager;
import com.crowdar.core.actions.MobileActionManager;
import com.crowdar.core.actions.WebActionManager;
import com.crowdar.driver.DriverManager;
import com.crowdar.examples.constants.DniConstants;
import com.crowdar.examples.constants.OnboardingConstants;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.interactions.Interaction;
import org.openqa.selenium.interactions.touch.TouchActions;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.testng.Assert;

public class OnboardingService {

    public static void cambiarAmbiente(String ambiente) {
        //MobileServices.clickAndHoldBckp(MobileActionManager.getElement(DniConstants.DESA_BUTTON_LOCATOR));
        //MobileActionManager.getElement(DniConstants.DESA_BUTTON_LOCATOR).click();

        /*switch (ambiente){
            case "Desa":
                MobileActionManager.getElement(DniConstants.AMBIENTE_SELECTOR_LOCATOR, "1").click();
                MobileActionManager.getElement(DniConstants.GUARDAR_AMBIENTE_BUTTON_LOCATOR).click();
                break;
            case "Test":
                MobileActionManager.getElement(DniConstants.AMBIENTE_SELECTOR_LOCATOR, "2").click();
                MobileActionManager.getElement(DniConstants.GUARDAR_AMBIENTE_BUTTON_LOCATOR).click();
                break;
        }*/
    }

    public static void isViewLoaded() {
        MobileActionManager.waitVisibility(OnboardingConstants.OMITIR_XPATH_LOCATOR);
        Assert.assertTrue(MobileActionManager.isVisible(OnboardingConstants.OMITIR_XPATH_LOCATOR), DniConstants.VIEW_NOT_DISPLAYED_MESSAGE);
    }

    public static void cancelBio() {
        //MobileActionManager.click(OnboardingConstants.OMITIR_XPATH_LOCATOR);
        MobileActionManager.getElement(OnboardingConstants.OMITIR_BUTTON_LOCATOR).click();
    }

}
