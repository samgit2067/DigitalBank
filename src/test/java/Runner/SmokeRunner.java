package Runner;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty",
                "html:target/default-cucumber-reports",
                "json:target/cucumber.json"},
        features = {"classpath:features"},
        glue = {"stepDef"},
        //tags = {"~@ignore", "@smoke"},
        //tags = {"@LoginFlow"},
        dryRun = false
)

public class SmokeRunner {



}
