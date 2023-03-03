-- Remove conflicting tables
DROP TABLE horse cascade constraints;
DROP TABLE liked cascade constraints;
DROP TABLE offer cascade constraints;
DROP TABLE userhorse cascade constraints;
-- End of removing

CREATE TABLE horse (
    id_kun INTEGER NOT NULL,
    username VARCHAR(256) NOT NULL,
    adress VARCHAR(256) NOT NULL,
    state VARCHAR(256) NOT NULL,
    age VARCHAR(256),
    gender VARCHAR(256),
    breed VARCHAR(256),
    sport VARCHAR(256)
);
ALTER TABLE horse ADD CONSTRAINT pk_horse PRIMARY KEY (id_kun);

CREATE TABLE liked (
    username VARCHAR(256) NOT NULL,
    id_offer INTEGER NOT NULL
);
ALTER TABLE liked ADD CONSTRAINT pk_liked PRIMARY KEY (username, id_offer);

CREATE TABLE offer (
    id_offer INTEGER NOT NULL,
    id_kun INTEGER NOT NULL,
    sold SMALLINT NOT NULL,
    price VARCHAR(256),
    buyer VARCHAR(256)
);
ALTER TABLE offer ADD CONSTRAINT pk_offer PRIMARY KEY (id_offer);
ALTER TABLE offer ADD CONSTRAINT u_fk_offer_horse UNIQUE (id_kun);

CREATE TABLE userhorse (
    username VARCHAR(256) NOT NULL,
    name VARCHAR(256) NOT NULL,
    contact VARCHAR(256) NOT NULL
);
ALTER TABLE userhorse ADD CONSTRAINT pk_userhorse PRIMARY KEY (username);

ALTER TABLE horse ADD CONSTRAINT fk_horse_userhorse FOREIGN KEY (username) REFERENCES userhorse (username) ON DELETE CASCADE;

ALTER TABLE liked ADD CONSTRAINT fk_liked_userhorse FOREIGN KEY (username) REFERENCES userhorse (username) ON DELETE CASCADE;
ALTER TABLE liked ADD CONSTRAINT fk_liked_offer FOREIGN KEY (id_offer) REFERENCES offer (id_offer) ON DELETE CASCADE;

ALTER TABLE offer ADD CONSTRAINT fk_offer_horse FOREIGN KEY (id_kun) REFERENCES horse (id_kun) ON DELETE CASCADE;