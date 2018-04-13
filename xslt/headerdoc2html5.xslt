<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" encoding="utf-8" indent="yes"/>
  <xsl:output omit-xml-declaration="yes"/>

  <xsl:template match="/">
    <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
    <html>
      <head>
        <title><xsl:value-of select="/header/name"/></title>
      </head>
      <body>
        <h1 class="header-name"><xsl:apply-templates select="/header/name"/></h1>
        <xsl:apply-templates select="/header/classes"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="name">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="class">
    <section class="class">
      <span>Class</span>
      <h2 class="class-name"><xsl:apply-templates select="name"/></h2>
      <p class="class-desc"><xsl:apply-templates select="desc"/></p>
    </section>
  </xsl:template>

</xsl:stylesheet>
