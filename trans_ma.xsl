<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei">
    
    <xsl:output method="text"/>
    <xsl:strip-space elements="*"/>
    
    <!-- Template match für die text Knoten mit Ausschluss der nicht benötigten "Vorfahren" -->
    <xsl:template match="text()">
        <xsl:if test="not(ancestor::tei:teiHeader) and 
            not(ancestor::tei:hi[@rend='strikethrough:true;']) and
            not(ancestor::tei:abbr)">
            <xsl:value-of select="normalize-space()"/>
        </xsl:if>
    </xsl:template>
    
    <!-- Ignorieren des Elements <teiHeader>, <hi> mit dem Attribut "strikethrough", sowie <abbr> innerhalb von <choice> -->
    <xsl:template match="tei:teiHeader | tei:hi[@rend='strikethrough:true;'] | tei:choice/tei:abbr"/>
    
    <!-- Verarbeitung des <p> Elements und anschließende Einfügung eines Leerzeichen nach dem Textinhalt -->
    <xsl:template match="tei:p">
        <xsl:apply-templates/>
        <xsl:text> </xsl:text>
    </xsl:template>
    
    <!-- Leerzeichen vor einem jeden <lb>-Elememt einfügen -->
    <xsl:template match="tei:lb">
        <xsl:text> </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Apply templates auf alle anderen Elemente -->
    <xsl:template match="*">
        <xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>