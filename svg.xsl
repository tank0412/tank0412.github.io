<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="графика">
        <img>
			<xsl:attribute name="width">
			  <xsl:value-of select="./@ширина" />
			</xsl:attribute>
			
			<xsl:attribute name="hight">
			  <xsl:value-of select="./@высота" />
			</xsl:attribute>
        </img>
    </xsl:template>
</xsl:stylesheet>