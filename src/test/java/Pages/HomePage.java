package Pages;

import Utils.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HomePage {
    public HomePage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }
    @FindBy(xpath = "//li[contains(text(), 'Welcome')]")
    public WebElement welcomeMsg;


    public String verifyWelcomeMsg(){
       String result =  welcomeMsg.getText();
       return result;



    }
}
