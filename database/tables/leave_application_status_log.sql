CREATE TABLE leave_application_status_log (
    id                                  SERIAL,
    belongs_to_leave_application_id     INTEGER NOT NULL,
    status                              INTEGER NOT NULL,
    note                                TEXT NOT NULL,
    created_by_person_id                INTEGER NOT NULL,
    created_at                          TIMESTAMP NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (belongs_to_leave_application_id)
        REFERENCES leave_application (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (status) REFERENCES leave_application_status_enum (id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (created_by_person_id) REFERENCES person (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE INDEX leave_application_status_log_belongs_to_index
    ON leave_application_status_log USING HASH
    (belongs_to_leave_application_id);

