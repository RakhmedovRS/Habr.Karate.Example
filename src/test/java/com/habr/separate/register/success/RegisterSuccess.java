package com.habr.separate.register.success;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import cucumber.api.CucumberOptions;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

/**
 * @author RakhmedovRS
 * @created 11/26/2020
 */
@CucumberOptions(tags = {"~@ignore"}, features = {"classpath:com/habr/separate/register/success/register_success.feature"})
public class RegisterSuccess
{
	@Test
	public void run()
	{
		Results results = Runner.parallel(getClass(), 1);
		assertTrue("there are scenario failures", results.getFailCount() == 0);
	}
}
