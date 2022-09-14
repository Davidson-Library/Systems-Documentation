# Download and Transform Bulk

Davidson College is exporting metadata records from Alma to ingest both the metadata and media into Preservica for preservation. We are starting with Oral Histories and Interviews, including video, audio, and text files. Alma exports the .xml file with a `<record>` tag and Preservica needs the `<oai_dc:dc>` tag. The Alma DC record also comes with a `<discovery:resourceType>` tag that isn't allowed in Preservica. This process includes 1) bulk download from Alma, 2) `xsl` transformation, and 3) ingestion into Preservica.
