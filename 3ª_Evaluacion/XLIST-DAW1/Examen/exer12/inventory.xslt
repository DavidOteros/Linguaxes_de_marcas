<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="xml"/>
    
    <xsl:template match="/" >
    <root>
        <xsl:apply-templates select="root/record"/>    
    </root>
    
    </xsl:template>

    <xsl:template match="record" >
        <record>
            <id><xsl:value-of select="id"/> </id>
            <title><xsl:value-of select="title"/></title>
            <date><xsl:value-of select="date/@when"/></date>
        </record>   
    </xsl:template>

</xsl:stylesheet>