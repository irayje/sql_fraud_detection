-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CARDHOLDER" (
    "id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_CARDHOLDER" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "CREDITCARD" (
    "cardholder_id" INT   NOT NULL,
    "card" VARCHAR   NOT NULL,
    CONSTRAINT "pk_CREDITCARD" PRIMARY KEY (
        "cardholder_id"
     )
);

CREATE TABLE "MERCHANT_CATEGORY" (
    "id" INT   NOT NULL,
    "name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_MERCHANT_CATEGORY" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "MERCHANTS" (
    "id" INT   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "id_merchant_category" INT   NOT NULL,
    CONSTRAINT "pk_MERCHANTS" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "TRANSACTIONS" (
    "id" INT   NOT NULL,
    "date" DATE   NOT NULL,
    "amount" NUMERIC   NOT NULL,
    "card" VARCHAR   NOT NULL,
    "id_merchant" INT   NOT NULL,
    CONSTRAINT "pk_TRANSACTIONS" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "CREDITCARD" ADD CONSTRAINT "fk_CREDITCARD_cardholder_id" FOREIGN KEY("cardholder_id")
REFERENCES "CARDHOLDER" ("id");

ALTER TABLE "MERCHANTS" ADD CONSTRAINT "fk_MERCHANTS_id_merchant_category" FOREIGN KEY("id_merchant_category")
REFERENCES "MERCHANT_CATEGORY" ("id");

ALTER TABLE "TRANSACTIONS" ADD CONSTRAINT "fk_TRANSACTIONS_card" FOREIGN KEY("card")
REFERENCES "CREDITCARD" ("card");

ALTER TABLE "TRANSACTIONS" ADD CONSTRAINT "fk_TRANSACTIONS_id_merchant" FOREIGN KEY("id_merchant")
REFERENCES "MERCHANTS" ("id");

