<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="http://www.tei-c.org/ns/1.0"
    xmlns:functx="http://www.functx.com" xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="t xs xsl functx" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="* | @* | text()">
        <!-- Copy All -->
        <xsl:copy>
            <xsl:apply-templates select="* | @*[normalize-space()] | text()"/>
        </xsl:copy>
    </xsl:template>
    
      <!-- Special handling for <div> elements -->
    <!--  <xsl:template match="t:div">
        <xsl:variable name="prev1" select="preceding-sibling::*[1]"/>
        <xsl:variable name="prev2" select="preceding-sibling::*[2]"/>-->
        
        <!-- Bedingung: Ergänze nur, wenn vorher NICHT <body>, <pb> oder <div> -->
        <!--  <xsl:if test="not($prev1/self::t:body or $prev1/self::t:pb or $prev1/self::t:div)">
            <xsl:if test="not($prev1/self::t:div and $prev2/self::t:p)">
                <xsl:if test="not($prev2/self::t:p)">
                    <xsl:text disable-output-escaping="yes">&lt;/p&gt;</xsl:text>
                </xsl:if>
                <xsl:if test="not($prev1/self::t:div)">
                    <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
                </xsl:if>
            </xsl:if>
        </xsl:if>-->
        
        <!-- Dann das <div> selbst -->
        <!--  <xsl:copy>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>-->
    
    
    <!-- Template für Textknoten mit Ersetzungen -->
    <xsl:template match="text()">
        <xsl:variable name="step1" select="replace(., 'open_p', '&lt;p&gt;')"/>
        <xsl:variable name="step2" select="replace($step1, 'close_p', '&lt;/p&gt;')"/>
        <xsl:variable name="step3" select="replace($step2, 'open_div', '&lt;div type=&quot;&quot;&gt;')"/>
        <xsl:variable name="step4" select="replace($step3, 'close_div', '&lt;/div&gt;')"/>
        <xsl:value-of select="$step4" disable-output-escaping="yes"/>
    </xsl:template>
    
</xsl:stylesheet>