import requests
import Bio.SwissProt as sp
import sys

class UniprotSearchImmuneReceptor:
    def __init__(self):
        '''
        Initializes an instance of the UniprotSearchImmuneReceptor class.

        Returns
        -------
        None.
        
        '''
        self.website_api = "https://rest.uniprot.org"


    def get_url(self, url, **kwargs):
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
        response = requests.get(url, **kwargs)
        return response


    def search_receptor(self, receptor):
        '''
        Searches for a specific innate immune receptor in UniProt and displays the results.

        Parameters
        ----------
        receptor : str
            Name of the innate immune receptor.

        Returns
        -------
        None.
        
        '''
        r = self.get_url(f"{self.website_api}/uniprotkb/search?query={receptor} AND (taxonomy_id:9606)(reviewed:true)&fields=id,accession,length,reviewed,protein_name&format=tsv")
        print(r.text)


    def download_receptor_info(self, uniprot_id):
        '''
        Downloads the information for a specific innate immune receptor from UniProt.

        Parameters
        ----------
        uniprot_id : str
            UniProt ID of the innate immune receptor.

        Returns
        -------
        None.
        
        '''
        url_txt = f"https://www.uniprot.org/uniprot/{uniprot_id}.txt"
        url_fasta = f"https://www.uniprot.org/uniprot/{uniprot_id}.fasta"
        response_txt = self.get_url(url_txt)
        response_fasta = self.get_url(url_fasta)
        with open(f"{uniprot_id}.txt", "w") as file:
            file.write(response_txt.text)
        with open(f"{uniprot_id}.fasta", "w") as file:
            file.write(response_fasta.text)


    def parse_receptor_info(self, uniprot_id):
        '''
        Parses and displays the information of a specific innate immune receptor.

        Parameters
        ----------
        uniprot_id : str
            UniProt ID of the innate immune receptor.

        Returns
        -------
        None.
        
        '''    
        with open(f"{uniprot_id}.txt") as file:
            info = sp.read(file)
        print(f">>{info.entry_name} | {info.organism}")
        print(info.sequence)
        taxonomy = ''.join(f"{m} | " for m in info.organism_classification)
        print(f"\nTAXONOMY: {taxonomy[:-2]}")
        print(f"SEQUENCE LENGTH: {info.sequence_length}")   
        
        for member in info.comments:
            sim = member.find("SIMILARITY")
            fun = member.find("FUNCTION")
            loc = member.find("SUBCELLULAR LOCATION")
            sub = member.find("SUBUNIT")
            tis = member.find("TISSUE SPECIFICITY")
            if fun != -1:
                function = member.split("{")
                print(function[0])
            if sim != -1:
                similarity = member.split("{")
                print(similarity[0])
            if loc != -1:
                sub_location = member.split("{")
                print(sub_location[0])
            if sub != -1:
                subunit = member.split("{")
                print(subunit[0])
            if tis != -1:
                tissue = member.split("{")
                print(tissue[0])
        keywords = ''.join(f"{m} | " for m in info.keywords)
        print(f"KEYWORDS: {keywords}")