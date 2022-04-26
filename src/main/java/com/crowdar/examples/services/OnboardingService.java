package com.crowdar.examples.services;

import com.crowdar.core.actions.MobileActionManager;
import com.crowdar.examples.constants.DniConstants;
import com.crowdar.examples.constants.OnboardingConstants;
import org.testng.Assert;

public class OnboardingService {
    public static void isViewLoaded() {
        MobileActionManager.waitVisibility(OnboardingConstants.OMITIR_XPATH_LOCATOR);
        //Assert.assertTrue(MobileActionManager.isVisible(OnboardingConstants.OMITIR_XPATH_LOCATOR), DniConstants.VIEW_NOT_DISPLAYED_MESSAGE);
    }

    public static void cancelBio() {
        //MobileActionManager.click(OnboardingConstants.OMITIR_XPATH_LOCATOR);
        MobileActionManager.getElement(OnboardingConstants.OMITIR_BUTTON_LOCATOR).click();
    }
}
