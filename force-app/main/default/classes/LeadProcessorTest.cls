@isTest
public class LeadProcessorTest {
    @isTest
    public static void addlead()
    {
        List<Lead> newlead = new List<Lead>();
        for(integer i=0;i<200;i++)
        {
            newlead.add(new lead(lastname='Bhuvakumar',company='Minsclue'));
        }
        insert newlead;
        
        Test.startTest();
        LeadProcessor lp=new LeadProcessor();
        Database.executeBatch(lp,200);   
        Test.stopTest();
    }
    
    
    
    
}