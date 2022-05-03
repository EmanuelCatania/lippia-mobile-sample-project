package com.crowdar.examples.steps;

import com.crowdar.core.PageSteps;
import com.crowdar.core.actions.MobileActionManager;
import com.crowdar.examples.constants.HomeConstants;
import com.crowdar.examples.services.*;
import io.cucumber.java.en.*;

public class DniSteps {

    @And("The user send: (.*)")
    public void theUserSendDni(String dni) {
        DniService.doDniLogin(dni);

    }
    @Given("me encuentro en la pantalla de DNI de la app Mobile en el (.*)")
    public void meEncuentroEnLaPantallaDeDNIDeLaAppMobileEnElAmbiente(String ambiente) {
        OnboardingService.isViewLoaded();
        OnboardingService.cancelBio();
        //OnboardingService.cambiarAmbiente(ambiente);
    }

    @When("se ingresa DNI (.*)")
    public void seIngresaDNIDNI(String dni) {
        DniService.doDniLogin(dni);
    }

    @Then("la aplicación redirije a la pantalla (.*)")
    public void laAplicaciónRedirijeALaPantallaPantalla(String pantalla) {
        ValidatingService.validarPantalla(pantalla);
    }

}
