import requests

class UniProtSearchPhages:
    def __init__(self):
        '''
        Initializes an instance of UniProtSearchPhages.

        Returns
        -------
        None.

        '''
        self.website_api = "https://rest.uniprot.org"

        
    def get_url(self, url):
        '''
        Sends an HTTP GET request to the specified URL.

        Parameters
        ----------
        url : str
            URL to send the request.

        Returns
        -------
        response 
            The response object.

        '''
        response = requests.get(url)
        return response

    
    def protein_data(self, taxonomy_ids):
        '''
        Retrieves protein data from UniProt based on the provided taxonomy IDs.

        Parameters
        ----------
        taxonomy_ids : list of str
            List of taxonomy IDs.

        Returns
        -------
        None.

        '''
        for taxonomy_id in taxonomy_ids:
            r = self.get_url(f"{self.website_api}/uniprotkb/search?query=(taxonomy_id:{taxonomy_id}) AND (reviewed:true)&fields=accession,protein_name,gene_names,organism_name&format=tsv&size=500")
            print(r.text)

            lines = r.text.strip().split("\n")[1:]

            protein_data = []
            for line in lines:
                columns = line.split("\t")
                protein_id = columns[0]
                protein_name = columns[1]
                gene_names = columns[2]
                organism_name = columns[3]
                protein_data.append((protein_id, protein_name, gene_names, organism_name))

            print("Protein ID\tProtein Name\tGene Names\tOrganism Name")
            for protein in protein_data:
                print("\t".join(protein))
