<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="root/record"/>
    </xsl:template>
    <xsl:template match="record">
        Id: <xsl:value-of select="id"/>
        Title: <xsl:value-of select="title"/>
        Date: <xsl:value-of select="date/@when"/>
        Text: <xsl:value-of select="text"/>
    </xsl:template>
 
    
</xsl:stylesheet>


