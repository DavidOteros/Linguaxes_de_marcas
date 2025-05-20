<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="/" >
    <html>  
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Sherlock</title>
        </head>
        <body>
            <p>The name of the cliente is <xsl:value-of select="customer/name/first"/> and his surname is <xsl:value-of select="customer/name/last"/>. He lives at <xsl:value-of select="customer/address/street"/> in <xsl:value-of select="customer/address/city"/></p>
        </body>
    </html>
    
</xsl:template>



</xsl:stylesheet>