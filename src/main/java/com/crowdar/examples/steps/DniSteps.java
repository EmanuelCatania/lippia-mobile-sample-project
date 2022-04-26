package com.crowdar.examples.steps;

import com.crowdar.core.PageSteps;
import com.crowdar.core.actions.MobileActionManager;
import com.crowdar.examples.constants.HomeConstants;
import com.crowdar.examples.services.DniService;
import com.crowdar.examples.services.HomeService;
import com.crowdar.examples.services.LoginService;
import cucumber.api.java.en.Then;
import io.cucumber.java.en.*;

public class DniSteps {

    @And("The user send: (.*)")
    public void theUserSendDni(String dni) {
        DniService.doDniLogin(dni);

    }

}
