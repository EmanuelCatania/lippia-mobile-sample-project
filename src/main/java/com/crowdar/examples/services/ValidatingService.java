package com.crowdar.examples.services;

import com.crowdar.core.actions.MobileActionManager;
import com.crowdar.examples.constants.OnboardingConstants;
import org.testng.Assert;

public class ValidatingService {
    public static final String PANTALLA_TEXT_LOCATOR = "ACCESSIBILITY_ID:";
    public static final String VIEW_NOT_DISPLAYED_MESSAGE = "The page is not displayed.";

    public static void validarPantalla(String pantalla) {
        String LOCATOR_TEMP = PANTALLA_TEXT_LOCATOR + pantalla;
        MobileActionManager.waitVisibility(LOCATOR_TEMP);
        Assert.assertTrue(MobileActionManager.isVisible(LOCATOR_TEMP), VIEW_NOT_DISPLAYED_MESSAGE);
    }
}
