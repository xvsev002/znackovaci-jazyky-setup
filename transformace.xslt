<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Grafické porovnání výchozích nastavení</title>
            </head>
            <body>
                <h1>Grafické porovnání výchozích nastavení</h1>
                <table border="0">
                    <tr bgcolor="#a3db05">
                        <th>Preset</th>
                        <th>Anti Aliasing</th>
                        <th>Sync Every Frame</th>
                        <th>Shadows</th>
                        <th>Model Detail</th>
                        <th>Water Detail</th>
                        <th>Anisotropic Filtering</th>
                        <th>Texture Quality</th>                      
                    </tr>
                    <xsl:for-each select="settings/graphics/preset">
                    <tr>
                        <th bgcolor="#80808"><xsl:value-of select="@name"/></th>
                        <td><xsl:value-of select="antiAliasing"/></td>
                        <td><xsl:value-of select="syncEveryFrame"/></td>
                        <td><xsl:value-of select="shadows"/></td>
                        <td><xsl:value-of select="modelDetail"/></td>
                        <td><xsl:value-of select="waterDetail"/></td>
                        <td><xsl:value-of select="textureSettings/anisotropicFiltering"/></td>
                        <td><xsl:value-of select="textureSettings/textureQuality"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
