<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:template match="/">
        <html>
            <head />
            <body>
                <div style="border-style:solid; border-width:thin; padding-left:0.5cm; ">
                    <xsl:for-each select="rpg:Path">
                        <xsl:for-each select="rpg:name">
                            <h1>
                                <span style="font-family:Times New Roman; ">
                                    <xsl:apply-templates />
                                </span>
                            </h1>
                        </xsl:for-each>
                        <xsl:for-each select="rpg:philosophy">
                            <h2>
                                <span style="font-family:Times New Roman; ">Philosophy:</span>
                            </h2>
                            <p>
                                <span style="font-family:Times New Roman; font-size:small; ">
                                    <xsl:apply-templates />
                                </span>
                            </p>
                        </xsl:for-each>
                        <xsl:for-each select="rpg:path-level">
                            <h2>
                                <xsl:for-each select="rpg:name">
                                    <span style="font-family:Times New Roman; ">
                                        <xsl:apply-templates />
                                    </span>
                                </xsl:for-each>
                                <span style="font-family:Times New Roman; "> (</span>
                                <xsl:for-each select="rpg:level-number">
                                    <span style="font-family:Times New Roman; ">
                                        <xsl:apply-templates />
                                    </span>
                                </xsl:for-each>
                                <span style="font-family:Times New Roman; ">):</span>
                            </h2>
                            <xsl:for-each select="rpg:description">
                                <p>
                                    <span style="font-family:Times New Roman; font-size:small; ">
                                        <xsl:apply-templates />
                                    </span>
                                </p>
                            </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
