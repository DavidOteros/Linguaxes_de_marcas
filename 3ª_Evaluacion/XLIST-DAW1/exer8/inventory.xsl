<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/" >
        <html>
            <head>
                <title>Software Inventory List</title>
            </head>
            <body>
                <ul><xsl:apply-templates select="inventory/product"/></ul>
            </body>
            
        </html>


    </xsl:template>
    <xsl:template match="product">
    
        <li>Product Code: <xsl:value-of select="@code"/>
            <ul>
                <li>Name: <xsl:value-of select="name"/></li>
                <li>Weight:  <xsl:value-of select="weight"/> <xsl:value-of select="weight/@unit"/></li>
            </ul>
        </li>

    </xsl:template>
    
    
    <!-- Este ejercicio se podría hacer por templates haciendo uso de for:each aunque la profesora prefiere que nos acostumbremos a usar templates -->
    
</xsl:stylesheet>