public  class CasesController {
	public CasesController() {
		
	}

	String keyword;
	List<Account> searchResults;

	public String getKeyword(){
		return keyword;
	}

	public void setKeyword(String s)
    {
        keyword = s;
    }
	public List<Account> getSearchResults(){
		return searchResults;
	}

	public PageReference SearchNow(){
		if(!String.isBlank(keyword))
		{
			searchResults = (List<Account>)[FIND : keyword IN ALL FIELDS RETURNING Account(Name, Type, Industry, Phone, Fax)][0];
		}
	 
		return null;
	}


}