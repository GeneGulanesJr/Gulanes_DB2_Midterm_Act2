SELECT name, gender, pet_name, family, class
from pets
RIGHT JOIN owners
ON pets.owner_id = owners.owner_id
WHERE owners.gender = 'Male';  