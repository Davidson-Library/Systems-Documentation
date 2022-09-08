# Dublin Core XML Transformation into Preservica-ready XML

## Davidson College Context

Davidson College is exporting metadata records from Alma to ingest content into Preservica for preservation. We are starting with some Oral Histories and Interviews, including video, audio, and text files. Alma exports the .xml file with a `<record>` tag and Preservica needs the `<oai_dc:dc>` tag. The Alma DC record also comes with a `<discovery:resourceType>` tag that isn't allowed in Preservica.

* [Download and Transform Bulk](XML-Transformation-XSLT.md#download-and-transform-bulk)
  * [Create Analysis in Alma Analytics](XML-Transformation-XSLT.md#create-analysis-in-alma-analytics)
  * [Create Set From Analytics](XML-Transformation-XSLT.md#create-set-from-analytics)
  * [Run "Export Digital Titles" Job](XML-Transformation-XSLT.md#run-export-digital-titles-job)
  * [Run XSLT Code](XML-Transformation-XSLT.md#run-xslt-code)
  * [Rename XML Files for Media](XML-Transformation-XSLT.md#rename-xml-files-for-media)
* [Ingest Files along with Metadata into Preservica \[TDB\]](XML-Transformation-XSLT.md#ingest-files-along-with-metadata-into-preservica-tdb)
* [Download and Transform Individual Files](XML-Transformation-XSLT.md#download-and-transform-individual-files)
  * [How to Obtain the DC XML Record](XML-Transformation-XSLT.md#how-to-obtain-the-dc-xml-record)
  * [XSLT Code](XML-Transformation-XSLT.md#xslt-code)

###

###

