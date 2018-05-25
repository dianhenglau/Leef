CREATE TABLE annual_leave_balance_transaction (
    id                                  SERIAL,
    belongs_to_person_id                INTEGER NOT NULL,
    amount                              INTEGER NOT NULL,
    balance                             INTEGER NOT NULL,
    refer_to_leave_application_id       INTEGER,
    note                                TEXT NOT NULL,
    created_by_person_id                INTEGER NOT NULL,
    created_at                          TIMESTAMP NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (belongs_to_person_id) REFERENCES person (id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (refer_to_leave_application_id)
        REFERENCES leave_application (id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (created_by_person_id) REFERENCES person (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE INDEX annual_leave_balance_transaction_belongs_to_index
    ON annual_leave_balance_transaction (belongs_to_person_id);

