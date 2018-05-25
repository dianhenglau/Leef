CREATE TABLE leave_application (
    id                          SERIAL,
    applied_by_person_id        INTEGER NOT NULL,
    leave_type                  INTEGER NOT NULL,
    start_from                  TIMESTAMP NOT NULL,
    until                       TIMESTAMP NOT NULL,
    reason                      TEXT NOT NULL,
    status                      INTEGER NOT NULL,
    created_by_person_id        INTEGER NOT NULL,
    created_at                  TIMESTAMP NOT NULL,
    modified_by_person_id       INTEGER NOT NULL,
    modified_at                 TIMESTAMP NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (applied_by_person_id) REFERENCES person (id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (leave_type) REFERENCES leave_type_enum (id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (status) REFERENCES leave_application_status_enum (id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (created_by_person_id) REFERENCES person (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (modified_by_person_id) REFERENCES person (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE INDEX leave_application_applied_by_person_id_index
    ON leave_application (applied_by_person_id);

CREATE INDEX leave_application_leave_type_index
    ON leave_application (leave_type);

CREATE INDEX leave_application_start_from_until_index
    ON leave_application (start_from, until);

CREATE INDEX leave_application_status_index
    ON leave_application (status);

