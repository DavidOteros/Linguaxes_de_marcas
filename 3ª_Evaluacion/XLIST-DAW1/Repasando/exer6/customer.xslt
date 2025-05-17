<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html> 
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Document</title>
            </head>
            <h1><xsl:value-of select="customer/name"/></h1>
            <body>
                
            </body>
            
        </html>
    </xsl:template>
    
    
    
</xsl:stylesheet>