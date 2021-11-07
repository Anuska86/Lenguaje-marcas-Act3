<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <style>
img{width:190px;
height:150px};

.padre{ 
    background-color:lightblue
}
                </style>
            </head>

            <body>
                <xsl:for-each select="pokemons/pokemon">
                    <div class="padre">
                        <div class="hijo">
                            <div class="imagen">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="foto" />
                                    </xsl:attribute>
                                    
                                </xsl:element>
                            </div>
                            <div class="info">
                                    <p><xsl:value-of select="nombre"/></p>
                                    <p><xsl:value-of select="tipo"/></p>
                                    <p><xsl:value-of select="fuerza"/></p>
                            </div>
                        </div>
                        <div class="comentario">
                        <p>
                         <xsl:value-of select="comentario"/>
                        </p>
                        </div>
                    </div>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

