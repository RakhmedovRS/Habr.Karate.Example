package com.habr.separate.login.failure;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import cucumber.api.CucumberOptions;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

/**
 * @author RakhmedovRS
 * @created 11/23/2020
 */
@CucumberOptions(features = {"classpath:com/habr/separate/login/failure/login_failure.feature"})
public class LoginFailureTest
{
	@Test
	public void run()
	{
		Results results = Runner.parallel(getClass(), 1);
		assertTrue("there are scenario failures", results.getFailCount() == 0);
	}
}
