package com.crowdar.examples.services;

import com.crowdar.core.actions.MobileActionManager;
import com.crowdar.examples.constants.DniConstants;
import com.crowdar.examples.constants.OnboardingConstants;
import org.openqa.selenium.By;
import org.testng.Assert;

public class DniService {

    public static void doDniLogin(String dni){
        MobileActionManager.setInput(DniConstants.DNI_INPUT_LOCATOR, dni);
        //MobileActionManager.click(DniConstants.CONTINUAR_XPATH_LOCATOR);
        MobileActionManager.getElement(DniConstants.CONTINUAR_BUTTON_LOCATOR).click();

    }

}
