SELECT pet_name, family, pets.owner_id
from pets
LEFT JOIN owners
ON pets.owner_id = owners.owner_id
WHERE pets.owner_id IS NULL;