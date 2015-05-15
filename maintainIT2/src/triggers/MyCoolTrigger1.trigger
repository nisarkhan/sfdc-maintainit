 
trigger MyCoolTrigger1 on Contact (before insert, after update)
{
    for(Contact c : Trigger.New)
    {
        if(Trigger.isInsert) //check to see if this is coming from INSERT
        {
	   		if(c.Email == null) 
	   		{
             	c.addError('No email is provided in INSERT');
           	}
        }

        if(Trigger.isUpdate) //check to see if this is coming from INSERT
        {
	   		if(c.Email == null) 
	   		{
             	c.addError('No email is provided UPDATE');
           	}
        }
    }
}