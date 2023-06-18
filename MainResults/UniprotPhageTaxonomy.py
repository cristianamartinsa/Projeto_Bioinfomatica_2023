import requests

class UniProtPhageTaxonomy:
    def __init__(self):
        '''
        Initializes the UniProtPhageTaxonomy object.
        
        Returns
        -------
        None.

        '''
        self.website_api = "https://rest.uniprot.org"

        
    def get_url(self, url):
        '''
        Sends a GET request to the specified URL.

        Parameters
        ----------
        url : str
            URL to send the GET request.
        
        Returns
        -------
        response 
            The response object.

        '''
        response = requests.get(url)
        return response

    
    def retrieve_taxonomy_info(self):
        '''
        Retrieves phage taxonomy information from the UniProt API.

        Returns
        -------
        None.

        '''
        r = self.get_url(f"{self.website_api}/taxonomy/search?fields=id,scientific_name,hosts&format=tsv&query=(phage) AND (taxonomies_with:2_reviewed)&size=500")
        print(r.text)

        lines = r.text.strip().split("\n")[1:]
        taxonomy_ids_str = ",".join([line.split("\t")[0] for line in lines])
        print(taxonomy_ids_str)

