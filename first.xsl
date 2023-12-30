<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/organization">
        <html>
            <head>
                <title>THIS IS AN XSL FILE</title>
            </head>
            <body bgcolor="teal">
                <h2 style="text-align:center">XSL DATA FETCHING</h2>
                <table border="2">
                    <tr bgcolor="grey" >
                        <th colspan="4">EMPLOYEES DATA</th>
                    </tr>
                    <tr bgcolor="lightblue">
                        <th>NAME</th>
                        <th>BLOCK</th>
                        <th>LOCATION</th>
                        <th>NUMBER</th>
                    </tr>
                        
                    <xsl:for-each select="department">
                        <tr bgcolor="yellow">
                            <td><xsl:value-of select="name"></xsl:value-of></td>
                            <td><xsl:value-of select="block"></xsl:value-of></td>
                            <td><xsl:value-of select="location"></xsl:value-of></td>
                            <td><xsl:value-of select="number"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                                
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>