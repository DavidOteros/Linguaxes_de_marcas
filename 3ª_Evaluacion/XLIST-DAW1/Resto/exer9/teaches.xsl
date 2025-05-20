<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <teaches>
            <xsl:apply-templates select="teaches/teaches-tuple"/>          
        </teaches>
    </xsl:template>
    
    <xsl:template match="teaches-tuple">
        <teacher>
            <course><xsl:value-of select="@course"/></course>
            <lecturer><xsl:value-of select="@lecturer"/></lecturer>
        </teacher>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>


<!-- Este ejercicio aprender a hacerlo con <xsl:elemnt name="course"> -->