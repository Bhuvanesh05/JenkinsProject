public class LeadProcessor implements Database.Batchable<SObject> 
{
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('SELECT Id, LeadSource FROM Lead');
    }
 public void execute(Database.BatchableContext BC, List<Lead> scope){
        for(Lead leadRecord : scope){
			leadRecord.LeadSource = 'Dreamforce';
        }
        update scope;
 }
     public void finish(Database.BatchableContext BC){
        System.debug('Batch finished');
    }

}