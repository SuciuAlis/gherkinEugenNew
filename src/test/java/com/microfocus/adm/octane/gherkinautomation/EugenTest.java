package com.microfocus.adm.octane.gherkinautomation;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(plugin={"com.hpe.alm.octane.OctaneGherkinFormatter:gherkin-results/Eugen_OctaneGherkinResults.xml"},
        features="src/test/resources/eugen")
public class EugenTest {
}
