<xsl:stylesheet version="2.0"
  xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ oai_dc.xsd"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:discovery="http://purl.org/dc/elements/1.1/">
 
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
 
  <xsl:template match="discovery:resourceType">
   
    <xsl:apply-templates/>
  </xsl:template>
 
  <xsl:template match="record">
    <oai_dc:dc>
      <xsl:apply-templates/>
    </oai_dc:dc>
  </xsl:template>
 
  <xsl:template match="/">
    <xsl:for-each select="collection/oai_dc:dc">
      <xsl:result-document href="file{position()}.xml">
        <oai_dc:dc>
          <xsl:copy-of select="current()"/>
        </oai_dc:dc>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
 
</xsl:stylesheet>