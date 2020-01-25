SELECT pet_name, 
name, 
occupation
from pets
INNER JOIN owners
ON pets.owner_id = owners.owner_id
WHERE owners.occupation ='Programmer';