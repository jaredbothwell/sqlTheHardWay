import random
from datetime import timedelta, datetime

#words = [x.strip().capitalize() for x in open("words.txt").readlines()]
breeds = ['Dog', 'Cat', 'Fish', 'Unicorn']

#pet_names = words[:len(words)/2]
#owner_names = words[len(words)/2:]

owner_insert = '''INSERT INTO person VALUES(NULL, '{first}', '{last}', '{age}', '{dob}');'''
pet_insert = '''INSERT INTO pet VALUES(NULL, '{name}', '{breed}', '{age}', '{dead}');'''
relate_insert = '''INSERT INTO person_pet VALUES('{person_id}', '{pet_id}', '{purchased_on}');'''

sql = []

def random_date():
    years = 365 * random.randint(0, 50)
    days = random.randint(0,365)
    hours = random.randint(0,24)
    past = timedelta(days=years+days, hours=hours)
    return datetime.now() - past

for i in range(0, 100):
    age = random.randint(0,20)
    breed = random.choice(breeds)
    name = "Pet # {i}"
    dead = random.randint(0,1)
    sql.append(pet_insert.format(age=age, breed=breed, name=name, dead=dead))

for i in range(0, 100):
    age = random.randint(0,100)
    first = "Owner # {i} First"
    last = "Owner # {i} Last"
    dob = random_date()
    sql.append(owner_insert.format(age=age, first=first, last=last, dob=dob))

for i in range(0,75):
    person_id = random.randint(5, 95)
    pet_id = random.randint(5, 95)
    purchased_on = random_date()
    sql.append(relate_insert.format(person_id=person_id, pet_id=pet_id, purchased_on=purchased_on))

with open("ex15.sql", "w") as output:
    output.write("\n".join(sql));