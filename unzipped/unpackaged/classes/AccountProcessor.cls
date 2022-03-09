public class AccountProcessor {
    @future
    public static void countContacts(list<id> Accountid)
    {
        list<Account> countofacc=[SELECT Id FROM Account where Id in: Accountid];
        list<Account> countofcon=new list<Account>();
        for(Account ac:countofacc)
        {
            ac.Number_Of_Contacts__c=[Select count() from Contact Where AccountId =: ac.Id];
            countofcon.add(ac);
        }
        update countofcon;
        
    }

}