<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  
  <xsl:template match="/">
    <html><head></head><body><h1>Stuff in my Garage</h1>
    <xsl:apply-templates select="garage/*"/>
    </body></html>
  </xsl:template>
  
  <xsl:template match="car|van">
    <div>
        YEAR:<xsl:value-of select="year"/><br/>
        MAKE:<xsl:value-of select="make"/><br/>
        MODEL:<xsl:value-of select="model"/><br/>
        MILES:<xsl:value-of select="@miles"/>
    </div>
    <xsl:text>Car or van Text: 
    </xsl:text>
  </xsl:template>
  
    <xsl:template match="truck">
    <div>
      <b>TRUCK!</b><br/>
      MAKE:<xsl:value-of select="make"/><br/>
      MODEL:<xsl:value-of select="model"/><br/>
      MILES:<xsl:value-of select="@miles"/>
      YEAR:<xsl:value-of select="year"/><br/>
    </div>
    <xsl:text>
    </xsl:text>
  </xsl:template>
  
</xsl:stylesheet>