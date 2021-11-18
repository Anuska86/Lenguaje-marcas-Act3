<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <style>
*{
    border:0px;
    padding:0px;
}

img{width:190px;
height:150px};

table {border:1px solid black;
    padding:0px;
    border-spacing:0;
}

td,th {
    border-bottom:0px;
    border-right:0px;
    padding:0px;
    border:1px solid black;
}

tr > td:first-child {
    border-left: 0px;
}

table tr:first-child td {
    border-top: 0px;
}


foto {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}


                </style>
            </head>

            <body>

                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Tipo</th>
                        <th>Foto</th>
                    </tr>
                    <xsl:for-each select="pokemons/pokemon">
                        <xsl:sort select="tipo" order="ascending"/>
                        <xsl:if test="tipo='Hielo'">
                            <tr style="background-color:lightgreen">
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="tipo"/>
                                </td>
                                <td class="images_size">
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="foto" />
                                        </xsl:attribute>
                                        <xsl:attribute name="align">left</xsl:attribute>
                                    </xsl:element>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="tipo='Agua'">
                            <tr style="background-color:lightblue">
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="tipo"/>
                                </td>
                                <td class="images_size">
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="foto" />
                                        </xsl:attribute>
                                        <xsl:attribute name="align">left</xsl:attribute>
                                    </xsl:element>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="tipo='Fuego'">
                            <tr style="background-color:lightyellow">
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="tipo"/>
                                </td>
                                <td class="images_size">
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="foto" />
                                        </xsl:attribute>
                                        <xsl:attribute name="align">left</xsl:attribute>
                                    </xsl:element>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

