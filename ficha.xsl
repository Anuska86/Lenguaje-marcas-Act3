<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <style>
img{
    width:10rem;
    height:10rem;
    };

.padre{ 
    background-color:lightblue
}

div {
    border-bottom:0px;
    border-right:0px;
    padding:0px;
    border:1px solid black;
}

.info{
        background-color:lightblue;      
}
.imagen{
    background-color:green;
}

.comentario{
    background-color:gray;
}

.col-container {
    display: table; /* Make the container element behave like a table */
    width: 100%; /* Set full-width to expand the whole page */
}

.col {
    display: table-cell; /* Make elements inside the container behave like table cells */
}
                </style>
            </head>

            <body>
                <xsl:for-each select="pokemons/pokemon">
                    <div class="col-container">
                        <div class="col">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto" />
                                </xsl:attribute>
                            </xsl:element>
                        </div>
                            <div class="col">
                                <p>
                                    <xsl:value-of select="nombre"/>
                                </p>
                                <p>
                                    <xsl:value-of select="tipo"/>
                                </p>
                                <p>
                                    <xsl:value-of select="fuerza"/>
                                </p>
                                <p><xsl:value-of select="comentario"/></p>
                            </div>

                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

