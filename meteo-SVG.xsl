<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="2000" height="2000">
            <xsl:for-each select="meteo/mesure[@date='2020-11-10']/ville">
                <rect width="30" height="{@temperature*10}" x="{position()*50}" y="50" stroke ="red" stroke-width="10" fill="green" >
                    <animate attributeName="height" dur="2s" from="0" to="{@temperature*10}" repeatCount="indefinite"></animate>
                </rect>
            </xsl:for-each>
        </svg>
    </xsl:template>
</xsl:stylesheet>