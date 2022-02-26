package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.AutomationPracticePage;
import utilities.ConfigReader;

public class AutomationPracticeStepDefinition
{
    AutomationPracticePage automationPracticePage = new AutomationPracticePage();

    @Given("user sign in linkine tiklar")
    public void user_sign_in_linkine_tiklar()
    {
    automationPracticePage.signinLinki.click();
    }

    @Given("email kutusuna @isareti olmayan email adresi yazar ve enter'a tiklar")
    public void email_kutusuna_isareti_olmayan_email_adresi_yazar_ve_enter_a_tiklar()
    {
        automationPracticePage.emailTextBox.sendKeys(ConfigReader.getProperty("AutomationPracticeInvalidEmail")
                + Keys.ENTER);


    }


    @Then("error mesajinin {string}  oldugunu dogrulayin")
    public void errorMesajininOldugunuDogrulayin(String arg0) {

        String actualHataYazisi = automationPracticePage.invalidEmailYazisiElementi.getText();
        String expectedHataYazisi = ConfigReader.getProperty("AutomationPracticeHataYazisi");
        Assert.assertEquals(expectedHataYazisi,actualHataYazisi);
    }
}
