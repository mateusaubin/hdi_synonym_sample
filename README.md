# SAP HANA HDI Synonym Sample Application

This repo serves as a reference for creating an HDI Container on SAP HANA XS Advanced which accesses data outside of its domain, like ERP data in other schemas.

Please bear in mind that this example serves the following situation ONLY: `HDI -> External Data`.


### Follow the Instructions — or [git-log](https://github.com/mateusaubin/hdi_synonym_sample/commits/master)

1. Create new Multi Target Application Project;
2. Create new SAP HANA Database Module;
3. Execute SQL Scripts to create the Access and Grantor Roles, as well as a dedicated User which will be used by the User-Provided Service;
4. Create the User-Provided Service on SAP HANA using either:
	* Command line tools via the XS Advanced Client Tools; or
	* XSA Cockpit web application;
5. Test the connection through the User-Provided Service;
	* This step is very important to avoid bad surprises in the future when attempting to access data through the synonyms as the Web IDE doesn't provides descriptive error messages in these cases.
6. Create the `.hdbgrants` file;
7. Declare and Wire-Up dependencies in the `mta.yaml` file;
8. Create the `.hdbsynonym` file;
9. Consume the data via a Calculation View, for instance;


### Relevant Material

SAP Blogs: 
* [Synonyms in HANA XS Advanced, Accessing Objects in an External Schema](https://blogs.sap.com/2017/01/07/synonyms-in-hana-xs-advanced-accessing-objects-in-an-external-schema)

SAP Help: 
* [SAP HANA Developer Guide for SAP HANA XS Advanced Model](https://help.sap.com/doc/6165d52d8f534ea1a9c5aff17a672f64/2.0.02/en-US/SAP_HANA_Developer_Guide_for_SAP_HANA_XS_Advanced_Model_en.pdf)

SAP Academy:
* [Repository](https://github.com/saphanaacademy/XSA/tree/master/synonyms)
* [Youtube Playlist for Synonyms](https://www.youtube.com/watch?v=FKLubu5mZyA&index=55&list=PLkzo92owKnVwL3AWaWVbFVrfErKkMY02a)
* [Youtube Playlist for XS Advanced Client Tools](https://www.youtube.com/watch?v=lxY8PwcoSEo&list=PLkzo92owKnVwL3AWaWVbFVrfErKkMY02a&index=99)
