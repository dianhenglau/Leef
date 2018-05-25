CREATE TABLE person (
    id                    SERIAL,
    username              TEXT NOT NULL,
    password              TEXT NOT NULL,
    is_admin              BOOLEAN NOT NULL,
    annual_leave_balance  INTEGER NOT NULL,
    is_active             BOOLEAN NOT NULL,
    created_by_person_id  INTEGER NOT NULL,
    created_at            TIMESTAMP NOT NULL,
    modified_by_person_id INTEGER NOT NULL,
    modified_at           TIMESTAMP NOT NULL,

    PRIMARY KEY (id),
    UNIQUE (username)
);

CREATE INDEX person_is_admin_index ON person (is_admin);

