SELECT name, gender, pet_name, family, class
from pets
INNER JOIN owners
ON pets.owner_id = owners.owner_id
WHERE owners.gender = 'Female' OR pets.class = 'Reptile';