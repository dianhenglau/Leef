CREATE TABLE leave_type_enum (
    id       INTEGER NOT NULL,
    name     TEXT NOT NULL,

    PRIMARY KEY (id)
);

INSERT INTO leave_type_enum (id, name) VALUES
    (1, 'Annual Leave'),
    (2, 'Sick Leave'),
    (3, 'Unpaid Leave'),
    (4, 'Maternity Leave');

