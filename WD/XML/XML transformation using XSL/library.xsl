<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Template to match the root element -->
    <xsl:template match="/library">
        <html>
            <head>
                <title>Library Book Collection</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    .book { margin-bottom: 20px; padding: 10px; border: 1px solid #ddd; }
                    .book h3 { margin: 0; }
                    .book p { margin: 5px 0; }
                </style>
            </head>
            <body>
                <h2>Library Book Collection</h2>
                <!-- Apply templates to each book -->
                <xsl:apply-templates select="book"/>
            </body>
        </html>
    </xsl:template>
    
    <!-- Template to match each book element -->
    <xsl:template match="book">
        <div class="book">
            <h3><xsl:value-of select="title"/></h3>
            <p><strong>Author:</strong> <xsl:value-of select="author"/></p>
            <p><strong>Year:</strong> <xsl:value-of select="year"/></p>
            <p><strong>Genre:</strong> <xsl:value-of select="genre"/></p>
            <p><strong>ISBN:</strong> <xsl:value-of select="isbn"/></p>
        </div>
    </xsl:template>
</xsl:stylesheet>
