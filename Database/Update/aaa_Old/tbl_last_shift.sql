-- Table: tbl_last_shift

-- DROP TABLE tbl_last_shift;

CREATE TABLE tbl_last_shift
(
  client_ip character varying,
  id_cashdesk integer,
  ct_number character varying,
  id serial NOT NULL,
  CONSTRAINT pk_last_shift_id PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbl_last_shift
  OWNER TO postgres;
