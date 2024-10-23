package stepDefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class hooks {
	
    @Before("@netBanking")
	public void netBankingSetup() {
		System.out.println("set up entries are for netBanking");
		
	}
	@Before("@mortgage")
	public void MortgageSetup() {
		System.out.println("set up entries are for Mortgage");
		
	}
		@After
		public void tearDown() {
			System.out.println("clear the  entries");
			
		
		
	}
}
