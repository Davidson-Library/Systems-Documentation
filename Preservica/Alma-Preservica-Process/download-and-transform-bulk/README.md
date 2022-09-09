---
description: >-
  Bulk export from Alma and splitting into multiple XML files after XSL
  transformation is the preferred method as it speeds the process up quite a
  bit.
---

# Download and Transform Bulk

## Davidson College Context

Davidson College is exporting metadata records from Alma to ingest content into Preservica for preservation. We are starting with some Oral Histories and Interviews, including video, audio, and text files. Alma exports the .xml file with a `<record>` tag and Preservica needs the `<oai_dc:dc>` tag. The Alma DC record also comes with a `<discovery:resourceType>` tag that isn't allowed in Preservica.

####
