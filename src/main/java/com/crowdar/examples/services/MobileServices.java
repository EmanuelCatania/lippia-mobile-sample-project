package com.crowdar.examples.services;

import io.appium.java_client.MobileBy;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidTouchAction;
import io.appium.java_client.touch.LongPressOptions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

public class MobileServices {
    private static AndroidDriver driver = null;

    public MobileServices(AndroidDriver driver) {
        this.driver = driver;
    }

    public static void clickAndHoldBckp(WebElement locator){
        AndroidTouchAction action = null;
        action.longPress((LongPressOptions) locator);
    }
}
