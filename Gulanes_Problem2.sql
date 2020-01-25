SELECT occupation, name, pet_name, class
from pets
INNER JOIN owners
ON pets.owner_id = owners.owner_id
WHERE pets.class = 'Bird';