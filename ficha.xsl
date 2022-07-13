<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="./css/ficha.css"/>
            </head>

            <body>
                <xsl:for-each select="pokemons/pokemon">
                    <div class="col-container">
                        <div class="foto clickfoto">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto" />
                                </xsl:attribute>
                            </xsl:element>
                        </div>
                            <div class="col">
                                <h3><xsl:value-of select="nombre"/></h3>
                                <p><b>Tipo: </b><xsl:value-of select="tipo"/></p>
                                <p><b>Fuerza: </b><xsl:value-of select="fuerza"/></p>
                                <p><b>Color: </b><xsl:value-of select="fuerza"/></p>
                                <p><b>Comentario: </b><xsl:value-of select="comentario"/></p>
                            </div>

                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

