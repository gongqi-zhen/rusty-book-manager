INSERT INTO
    roles (name)
VALUES
    ('Admin'),
    ('User')
ON CONFLICT DO NOTHING;

INSERT INTO
    users (name, email, password_hash, role_id)
SELECT
    'Eleazar Fig',
    'eleazar.fig@example.com',
    '$2b$12$iVR.vF/U1T2PtoqKH4oLJeX1wvDPEXPDwZ.9e5mozsUBz/OnBfIaW',
    role_id
FROM
    roles
WHERE
    name LIKE 'Admin';