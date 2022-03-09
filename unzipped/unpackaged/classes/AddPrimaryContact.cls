public class AddPrimaryContact implements Queueable {
    Contact conco;
    String state;

    
  public  AddPrimaryContact(Contact con,String ss)
    {
        this.conco=con;
        this.state=ss;
    }
    public void execute(QueueableContext context) 
    {
        list<Account> accountids=[select id,name from account where BillingState =:state LIMIT 200];
        List<Contact> contac=new list<Contact>();
        for(Account ac:accountids)
        {
            Contact clonecon=conco.clone();
            clonecon.AccountId=ac.Id;
            contac.add(clonecon);
        }
        if(contac.size()>0)
        {
        insert contac;
        }

}
}