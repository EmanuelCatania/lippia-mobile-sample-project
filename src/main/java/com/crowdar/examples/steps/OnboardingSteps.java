package com.crowdar.examples.steps;

import com.crowdar.examples.services.DniService;
import com.crowdar.examples.services.OnboardingService;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;

public class OnboardingSteps {

    @Given("The app and layout is loaded correctly")
    public void theAppAndLayoutIsLoadedCorrectly() {
        OnboardingService.isViewLoaded();
    }

    @When("The user goes to the Sign In page")
    public void theUserGoesToTheSignInPage() {
        OnboardingService.cancelBio();
    }
}
