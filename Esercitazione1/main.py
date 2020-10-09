"""
Campi in output:
| DENOMINAZIONESCUOLA PROVINCIA AUTORI TITOLO VOLUME PREZZO |
Campi in Input:
| CODICESCUOLA, DISCIPLINA, CODICEISBN, AUTORI, TITOLO, VOLUME, EDITORE, PREZZO (EURO) | (libri)
| CODICESCUOLA, DESCRIZIONETIPOLOGIAGRADOISTRUZIONESCUOLA, DENOMINAZIONESCUOLA, SITOWEBSCUOLA, PROVINCIA | (scole)
"""

from csv import DictReader, DictWriter


fields = ['DENOMINAZIONESCUOLA', 'PROVINCIA', 'AUTORI' ,'TITOLO', 'VOLUME' ,'PREZZO']

with open("output/libri_per_scuola.csv", 'w', newline='') as out:
    writer = DictWriter(out, fieldnames=fields)
    writer.writeheader()
    with open("input/libri_di_testo.csv" ,newline='') as libri:
        reader1 = DictReader(libri)

        for row1 in reader1:
            current_row_to_write = dict()

            #Assign the respective current value for the book
            for k in ['AUTORI' ,'TITOLO', 'VOLUME' ,'PREZZO (EURO)']:
                current_row_to_write[k] = row1[k]


            current_scuola_id = row1["CODICESCUOLA"]

            """ Retrieve from the other csv the school information linked by CODICESCUOLA"""
            with open("input/scuole_lazio.csv", newline='') as scuole:
                reader2 = DictReader(scuole)
                for row2 in reader2:
                    #Assumption: every school id is correctly mapped to a school record. Too lazy to handle
                    while True:
                        if row2["CODICESCUOLA"] == current_scuola_id:
                            break
                    current_row_to_write["DENOMINAZIONESCUOLA"] = row2["DENOMINAZIONESCUOLA"]
                    current_row_to_write["PROVINCIA"] = row2["PROVINCIA"]

            writer.writerow(current_row_to_write)


