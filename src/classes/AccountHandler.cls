//jenkins deploy
public class AccountHandler {
public static Account insertNewAccount(String name) {
Account a = new Account();
a.Name = name;
a.lastname='test';
try
{
insert a;
} catch (Exception e) {
    System.debug(e);
return null;
}
  
return a;
}
}