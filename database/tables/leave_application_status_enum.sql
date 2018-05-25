CREATE TABLE leave_application_status_enum (
    id       INTEGER NOT NULL,
    name     TEXT NOT NULL,

    PRIMARY KEY (id)
);

INSERT INTO leave_application_status_enum (id, name) VALUES
    (1, 'Pending'),
    (2, 'Approved'),
    (3, 'Rejected'),
    (4, 'Cancelled');

