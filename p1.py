import csv

with open("etudiants.csv") as f:
    a=csv.DictReader(f)
    for i in a:
        print(i["nom"] + " " + i["filière"])