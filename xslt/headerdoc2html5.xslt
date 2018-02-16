<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="html" encoding="utf-8" indent="yes" />

  <xsl:template match="/">
    <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
    <html>
      <head>
        <title><xsl:value-of select="/header/name"/></title>
      </head>
      <body>
        <h1 class="header-name"><xsl:apply-templates select="/header/name"/></h1>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="name">
    <xsl:value-of select="."/>
  </xsl:template>

  <!-- <xsl:template match="/persons"> -->
  <!--   <html> -->
  <!--     <head> <title>Testing XML Example</title> </head> -->
  <!--     <body> -->
  <!--       <h1>Persons</h1> -->
  <!--       <ul> -->
  <!--         <xsl:apply-templates select="person"> -->
  <!--           <xsl:sort select="family-name" /> -->
  <!--         </xsl:apply-templates> -->
  <!--       </ul> -->
  <!--     </body> -->
  <!--   </html> -->
  <!-- </xsl:template> -->

  <!-- <xsl:template match="person"> -->
  <!--   <li> -->
  <!--     <xsl:value-of select="family-name"/><xsl:text>, </xsl:text><xsl:value-of select="name"/> -->
  <!--   </li> -->
  <!-- </xsl:template> -->

</xsl:stylesheet>
