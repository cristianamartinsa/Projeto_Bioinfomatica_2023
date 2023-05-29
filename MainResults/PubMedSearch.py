from Bio import Entrez
import json
import webbrowser

class PubMedSearch:
    def __init__(self, keywords, email):
        '''
        Initializes a PubMedSearch object with the given keywords and email.

        Parameters
        ----------
        keywords : str
            String of search terms to be used in the search.
        email : str
            Valid email address.

        Returns
        -------
        None.
        '''
        self.keywords = keywords
        self.email = email
        self.id_list = []
        self.papers = None
        self.urls = []


    def search(self):
        '''
        Searches for articles in PubMed database that match the specified keywords.

        Returns
        -------
        None.
        '''
        Entrez.email = self.email
        handle = Entrez.esearch(db="pubmed", sort="relevance", retmax="100", retmode="xml", term=self.keywords)
        results = Entrez.read(handle)
        self.id_list = results["IdList"]


    def fetch_details(self):
        '''
        Fetches the details of all papers that match the search keywords.

        Returns
        -------
        None.
        '''
        ids = ",".join(self.id_list)
        handle = Entrez.efetch(db = "pubmed", retmode = "xml", id = ids)
        self.papers = Entrez.read(handle)


    def display_titles(self):
        '''
        Prints the titles of all papers that match the search keywords.

        Returns
        -------
        None.
        '''
        for i, paper in enumerate(self.papers["PubmedArticle"]):
            print("%d) %s" % (i + 1, paper["MedlineCitation"]["Article"]["ArticleTitle"]))


    def get_paper_details_json(self, n):    
        '''
        Retrieves the details of the nth paper that matches the search keywords in JSON format.

        Parameters
        ----------
        n : int
            Index of the paper in the search results.

        Returns
        -------
        res : str
            String containing the details in JSON format.
        '''
        res = json.dumps(self.papers["PubmedArticle"][n - 1], indent = 2, separators = (",", ":"))
        return res
    
    
    def get_abstract(self, n):      
        '''
        Returns the abstract of the paper that matches the search keywords.

        Parameters:
        ----------
        n : int 
            Index of the paper in the search results.

        Returns:
        -------
        abstract : str
            Abstract of the paper.
        '''
        paper = self.papers['PubmedArticle'][n - 1]['MedlineCitation']['Article']
        abstract = paper['Abstract']['AbstractText'][0] if 'Abstract' in paper else 'No abstract available.'
        return abstract


    def get_url(self, n):        
        '''
        Retrieve the URL of the nth paper that matches the search keywords.

        Parameters
        ----------
        n : int
            Index of the paper in the search results.

        Returns
        -------
        url : str
            URL of the paper.

        '''
        pubmed_id = self.id_list[n - 1]
        url = f"https://pubmed.ncbi.nlm.nih.gov/{pubmed_id}/"
        return url


    def open_url(self, n):
        '''
        Opens the URL of the paper that matches the search keywords.

        Parameters
        ----------
        n : int
            Index of the paper in the search results.
        '''
        url = self.get_url(n)
        webbrowser.open(url)