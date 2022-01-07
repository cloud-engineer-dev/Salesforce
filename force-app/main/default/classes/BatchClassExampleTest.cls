@isTest
private class BatchClassExampleTest {

	@testSetup static void setup() {
		List<Account> lstAccount= new List<Account>();
        for(Integer i=0 ;i <200;i++)
        {
            Account acc = new Account();
            acc.Name ='Name'+i;
            lstAccount.add(acc);
        }
        
        insert lstAccount;
        //1
        //2
	}

	@isTest static void testMethod1() {
		Test.startTest();

		BatchClassExample obj = new BatchClassExample();
		DataBase.executeBatch(obj); 
            
        Test.stopTest();
	}

}