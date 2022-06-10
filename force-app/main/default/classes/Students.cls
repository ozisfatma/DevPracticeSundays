public class Students {
    public string firstName;//class variables
    public string lastName;
    public integer classYear;
    public string major;
    public string generateReport(){//return the value ofmajor
        system.debug('Repart generated for '+firstName+' '+lastName+ ' of '+classYear);
        return major;
    }

}
