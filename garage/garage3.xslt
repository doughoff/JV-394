<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/garage">
  <html>
  <body>
    <h2>My Garage</h2>
    <p>Vehicles:
    <xsl:for-each select="car|van|truck">
      <xsl:value-of select="year"/><xsl:text> </xsl:text>
      <xsl:value-of select="make"/><xsl:text> </xsl:text>
      <xsl:value-of select="model"/>
      
      <xsl:choose>
        <xsl:when test="@miles &gt; 100000">
          (and it's getting old with <xsl:value-of select="@miles"/> miles)
        </xsl:when>
        <xsl:otherwise>
        </xsl:otherwise>
      </xsl:choose>
      
      <xsl:if test="position()&lt;last()-1">
        <xsl:text>, </xsl:text>
      </xsl:if>
      <xsl:if test="position()=last()-1">
        <xsl:text>, and </xsl:text>
      </xsl:if>
      <xsl:if test="position()=last()">
        <xsl:text>!</xsl:text>
      </xsl:if>
    </xsl:for-each>
    </p>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>