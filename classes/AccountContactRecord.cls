public class AccountContactRecord 
{
    public static ID insertAccount( String name, String rating, String active )
    {
        Account acc = new Account();
        acc.Name = name;
        acc.Rating = rating;
        acc.Active__c = active;
        
        insert acc;
        return acc.Id;
    }
   public static void insertContact()
   {
       ID accId;
       accId = insertAccount('SGTS 4', 'Hot', 'Yes');
       
       Contact con = new Contact(FirstName = 'Venky', LastName='Chop');
       con.AccountId = accId;
       
       insert con;
   }
}