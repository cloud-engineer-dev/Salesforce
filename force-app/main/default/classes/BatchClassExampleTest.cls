@isTest
private class BatchClassExampleTest {

	@testSetup static void setup() {
		List<Account> lstAccount= new List<Account>();
        for(Integer i=0 ;i <200;i++)
        {
            Account acc = new Account();
            acc.Name ='Name'+i;
            lstLead.add(acc);
        }
        
        insert lstAccount;
	}

	@isTest static void testMethod1() {
		Test.startTest();

		BatchClassExample obj = new BatchClassExample();
		DataBase.executeBatch(obj); 
            
        Test.stopTest();
	}

}