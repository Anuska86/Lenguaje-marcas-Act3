<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <style>
th{background:red;}
.amarillo{background:yellow;}
.azul{background:blue;}
.verde{background:green;}
.amarillo img{width:50px;}

                </style>
            </head>

            <body>
                <h2>My CD Collection</h2>
                <table border="1">
                    <xsl:for-each select="pokemons/pokemon">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="tipo"/>
                            </td>
                            <td>
            <xsl:element name="img">
              <xsl:attribute name="src">
                <xsl:value-of select="foto"/>
              </xsl:attribute>
              <xsl:attribute name="align">left</xsl:attribute>
            </xsl:element>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>