-- Facilite la recherche d’un client par nom ou prénom
CREATE INDEX idx_client_nom_prenom ON client(nom, prenom);
-- Accélère la recherche des locations par client
CREATE INDEX idx_location_id_client ON location(id_client);