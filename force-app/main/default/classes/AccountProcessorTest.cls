@isTest
public class AccountProcessorTest {
    @isTest
    public static void countContactsTest()
    {
        account a1=new account(name='Test1');
        INSERT a1;
        contact c1=new contact(Firstname='Test',Lastname='bhuva1',AccountId=a1.id);
        INSERT c1;
       contact c2=new contact(Firstname='Test',Lastname='bhuva2',AccountId=a1.id);
        INSERT c2;
        
         List<Id> acctIds = new List<Id>();
        acctIds.add(a1.Id);
        
        Test.startTest();
       AccountProcessor.countContacts(acctIds);
        Test.stopTest();
    }

}