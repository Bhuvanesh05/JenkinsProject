@isTest
public class AddPrimaryContactTest 
{
     @isTest static void TestList()
     {
         List<Account> Teste = new List <Account>();
         for(Integer i=0;i<200;i++)
         {if(i<=50){
             Teste.add(new Account(BillingState = 'CA', name = 'Test'+i));
         }else
             Teste.add(new Account(BillingState = 'NY', name = 'Test'+i));
         }
         insert Teste;

         Contact co = new Contact();
         co.FirstName='demo';
         co.LastName ='demo';
         
         String state = 'CA';
      
          AddPrimaryContact apc = new AddPrimaryContact(co, state);
          Test.startTest();
            System.enqueueJob(apc);
          Test.stopTest();
      }
 }