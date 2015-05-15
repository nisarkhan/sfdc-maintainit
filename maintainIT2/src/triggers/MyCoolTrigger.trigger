trigger MyCoolTrigger on craft__c (before insert) {


	for(Craft__c c : Trigger.New)
    {
        if(c.Planned_Labor_Rate__c < 5000)
        {
            //c.addError('test fired < 5000');
            c.Comments__c = 'its coming from trigger';
        }
    
    }

}



