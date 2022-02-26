package stepdefinitions;

import io.cucumber.java.en.Given;
import org.openqa.selenium.WebElement;
import pages.DemoGuru99Page;
import utilities.Driver;
import utilities.ReusableMethods;

import java.util.List;

public class DemoGuru99StepDefinitions
{
    DemoGuru99Page demoGuru99Page = new DemoGuru99Page();

    @Given("{string}, sutunundaki tum degerleri yazdirir")
    public void sutunundaki_tum_degerleri_yazdirir(String istenenBaslikStr) {

       // demoGuru99Page.cookiesKabulEtButonu.click(); // cookies cıkmazsa sileriz

       // Driver.getDriver().switchTo().frame(demoGuru99Page.iframe);

        List<WebElement> baslikWebElementListesi = demoGuru99Page.baslikWebElementListesi;

        List<String> baslikStringListesi = ReusableMethods.getElementsText(baslikWebElementListesi);

        int istenenSutunIndexi = baslikStringListesi.indexOf(istenenBaslikStr);

        List<WebElement> istenenSutunWebElementListesi = demoGuru99Page.sutunListesiGetir(istenenSutunIndexi);

        List<String> istenenSutunStrList = ReusableMethods.getElementsText(istenenSutunWebElementListesi);

        System.out.println(istenenBaslikStr + " Sutunundaki Elementler \n" + istenenSutunStrList);

    }


}
