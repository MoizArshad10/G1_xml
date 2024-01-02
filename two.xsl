<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/organization">
        <html>
            <head>
                <title>
                    This is an XSL file
                </title>
                <style>
                    table{
                        margin-left:300px;
                        background-color: crimson;
                    }
                    h2{
                        text-align : center;
                        background-color: crimson;
                        letter-spacing : 15px;
                    }
                    
                    body{
                        background-color:black;
                        color: white;
                    }
                </style>
            </head>
            <body>
                <h2>ORGANIZATION</h2>
                <table  cellspacing="15px" cellpadding= " 15px" border="2">
                    <tr>
                        <th colspan="4">Employees DATA</th>
                    </tr>
                    <tr>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th>NUMBER</th>
                    </tr>

                    <xsl:for-each select="department">
                        <tr>
                            <td><xsl:value-of select="name"></xsl:value-of></td>
                            <td><xsl:value-of select="age"></xsl:value-of></td>
                            <td><xsl:value-of select="salary"></xsl:value-of></td>
                            <td><xsl:value-of select="number"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>