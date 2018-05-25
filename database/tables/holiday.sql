CREATE TABLE holiday (
    id                          SERIAL,
    name                        TEXT NOT NULL,
    date                        DATE NOT NULL,
    created_by_person_id        INTEGER NOT NULL,
    created_at                  TIMESTAMP NOT NULL,
    modified_by_person_id       INTEGER NOT NULL,
    modified_at                 TIMESTAMP NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (created_by_person_id) REFERENCES person (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (modified_by_person_id) REFERENCES person (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE INDEX holiday_date_index ON holiday (date);

