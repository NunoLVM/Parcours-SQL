INSERT INTO typevelo (libelle)
VALUES ('ville'),
    ('route'),
    ('électrique');
INSERT INTO etatvelo (libelle)
VALUES ('bon'),
    ('usé');
INSERT INTO client (prenom, nom, email, date_inscription)
VALUES (
        'Mariana',
        'Mateus',
        'mariana.24@example.com',
        '2024-06-01'
    ),
    (
        'Rita',
        'Viana',
        'ritaviana83@example.com',
        '2024-05-15'
    ),
    (
        'Ricardo',
        'Antonio',
        'ricardo.antonio@example.com',
        '2024-06-10'
    ),
    (
        'Nuno',
        'Antonio',
        'nuno.a@example.com',
        '2024-06-03'
    ),
    (
        'Leonor',
        'Lencastre',
        'len.lencastre@example.com',
        '2024-06-07'
    );
INSERT INTO velo (
        marque,
        taille,
        tarif_horaire,
        disponibilite,
        id_typevelo,
        id_etatvelo
    )
VALUES ('Btwin', 'M', 5.50, TRUE, 1, 1),
    ('Trek', 'L', 6.20, TRUE, 2, 1),
    ('Orbea', 'S', 4.80, FALSE, 3, 2),
    ('Giant', 'M', 5.50, TRUE, 1, 2),
    ('Peugeot', 'L', 5.90, TRUE, 2, 1);
INSERT INTO location (
        date_heure_debut,
        date_heure_fin,
        montant_total,
        id_client,
        id_velo
    )
VALUES (
        '2024-06-15 10:00:00',
        '2024-06-15 12:00:00',
        11.00,
        1,
        2
    ),
    (
        '2024-06-16 09:00:00',
        '2024-06-16 17:00:00',
        48.00,
        2,
        1
    ),
    (
        '2024-06-17 08:00:00',
        '2024-06-18 08:00:00',
        96.00,
        3,
        3
    ),
    (
        '2024-06-18 14:00:00',
        '2024-06-18 16:00:00',
        11.80,
        4,
        5
    ),
    (
        '2024-06-19 09:30:00',
        '2024-06-21 09:30:00',
        132.00,
        5,
        4
    );