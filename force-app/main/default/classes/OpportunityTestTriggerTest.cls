@isTest
public with sharing class OpportunityTestTriggerTest {

	@isTest
	public static void OpportunityTestTriggerTest() {

		Opportunity o = new Opportunity(
			Name = 'Test',
			CloseDate = System.today(),
			StageName = 'Paid'
		);

		Test.startTest();

		INSERT o;

		Test.stopTest();

		System.assertEquls('test', [SELECT Test_Field__c FROM Opportunity WHERE Id = :o.Id].Test_Field__c);
	}
}
