
trigger MyCoolTrigger2 on Account (before insert, after update)
{
    for(Account a : Trigger.New)
    {         
   		if(a.Industry == 'Education') 
   		{
         	a.addError('not working with education anymore !!!');
       	}         
    }
	//insert a;
}