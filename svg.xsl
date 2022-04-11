<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width"/>
                <title>Lab1 P2 </title>
            </head>
            <body>
                    <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

	<xsl:template match="графика">
        <svg>
			<xsl:attribute name="width">
			  <xsl:value-of select="./@ширина" />
			</xsl:attribute>
			
			<xsl:attribute name="height">
			  <xsl:value-of select="./@высота" />
			</xsl:attribute>
			<xsl:apply-templates select="эллипс"/>
        </svg>
    </xsl:template>
	<xsl:template match="эллипс">
	<ellipse>
	
		<xsl:attribute name="id">
			  <xsl:value-of select="./@id" />
			</xsl:attribute>

			<xsl:attribute name="style">
			  fill:<xsl:value-of select="./@заливка" />;
			  stroke:<xsl:value-of select="@ободок"/>;
			  stroke-width:<xsl:value-of select="@ширина-ободка"/>
			</xsl:attribute>
			
			<xsl:attribute name="cx">
			  <xsl:value-of select="./@cx" />
			</xsl:attribute>
			
			<xsl:attribute name="cy">
			  <xsl:value-of select="./@cy" />
			</xsl:attribute>
			
			<xsl:attribute name="rx">
			  <xsl:value-of select="./@rx" />
			</xsl:attribute>
			
			<xsl:attribute name="ry">
			  <xsl:value-of select="./@ry" />
			</xsl:attribute>
	</ellipse >
</xsl:template>
</xsl:stylesheet>