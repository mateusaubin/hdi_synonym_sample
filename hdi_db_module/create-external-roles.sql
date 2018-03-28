-- this should be executed in the target HANA database
-- creates roles for reading data from the container (HDI)

-- GRANTOR ROLE: used by the container to grant access to other objects via USER-PROVIDED-SERVICE
CREATE ROLE "hdi_synonym_sample::container_grantor"
GRANT SELECT ON "SAPABAP1"."SFLIGHT" TO "hdi_synonym_sample::container_grantor" WITH GRANT OPTION;

-- READ ROLE: assigned to the container to access external objects via synonyms
CREATE ROLE "hdi_synonym_sample::container_access";
GRANT SELECT ON "SAPABAP1"."SFLIGHT" TO "hdi_synonym_sample::container_access";

CREATE USER hdi_synonym_sample_USER PASSWORD Rand0mStr1ng no force_first_password_change;
GRANT "hdi_synonym_sample::container_access", "hdi_synonym_sample::container_grantor" TO hdi_synonym_sample_USER WITH ADMIN OPTION;
