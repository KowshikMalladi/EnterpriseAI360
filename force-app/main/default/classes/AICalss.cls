public class AICalss {
    public class WrapperExample {
        @InvocableVariable(Required=true)
        public String AccountId;
        @InvocableVariable(Required=true)
        public String FirstName;
        @InvocableVariable(Required=true)
        public String LastName;
        @InvocableVariable(Required=true)
        public String Email;
        
    }
    @InvocableMethod(label='Insert The Contact' Description='User will provide AccountId and contacts required fields based on that insert contact')
    public static List<Contact> getContacts(List<WrapperExample> wsr) {
        List<Contact> con=new List<Contact>();
        for(WrapperExample e:wsr) {
            Contact c=new Contact();
            c.AccountId=e.AccountId;
            c.FirstName=e.FirstName;
            c.LastName=e.LastName;
            c.Email=e.Email;
            con.add(c);
        }
        
        insert con;
        return con;
    }
}