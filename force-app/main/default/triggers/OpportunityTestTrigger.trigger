trigger OpportunityTestTrigger on Opportunity (before INSERT) {

	for (Opportunity o : Trigger.new) {
		o.Test_Field__c = 'testing';
	}

}
