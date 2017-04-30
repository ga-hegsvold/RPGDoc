<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:output version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" media-type="text/html" />
    <xsl:template match="/">
        <html>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <head />
            <body>
                <xsl:for-each select="RPGDoc">
                    <xsl:for-each select="adventure">
                        <h1>
                            <xsl:for-each select="title">
                                <span style="color:olive; font-family:Exocet; font-size:xx-large; ">
                                    <xsl:apply-templates />
                                </span>
                            </xsl:for-each>
                        </h1>
                        <h2>
                            <xsl:for-each select="subtitle">
                                <span style="color:olive; font-family:Exocet; ">
                                    <xsl:apply-templates />
                                </span>
                            </xsl:for-each>
                        </h2>
                        <ul style="margin-bottom:0; margin-top:0; " start="1" type="disc">
                            <li>
                                <span style="color:olive; ">Author:</span>&#160;<xsl:for-each select="author">
                                    <xsl:apply-templates />
                                </xsl:for-each>
                            </li>
                            <li>
                                <span style="color:olive; ">Version:</span>&#160;<xsl:for-each select="version">
                                    <xsl:apply-templates />
                                </xsl:for-each>
                            </li>
                            <li>
                                <span style="color:olive; ">Setting:</span>&#160;<xsl:for-each select="setting">
                                    <xsl:apply-templates />
                                </xsl:for-each>
                            </li>
                            <li>
                                <span style="color:olive; ">System:</span>&#160;<xsl:for-each select="system">
                                    <xsl:apply-templates />
                                </xsl:for-each>
                            </li>
                        </ul>
                        <div>
                            <xsl:for-each select="chap1">
                                <h3>
                                    <xsl:for-each select="title">
                                        <span style="color:olive; font-family:Exocet; ">
                                            <xsl:apply-templates />
                                        </span>
                                    </xsl:for-each>
                                </h3>
                                <div>
                                    <xsl:for-each select="p">
                                        <xsl:for-each select="title">
                                            <span style="color:olive; font-variant:small-caps; ">
                                                <xsl:apply-templates />
                                            </span>
                                        </xsl:for-each>
                                        <div>
                                            <xsl:apply-templates select="em | paraphrase | quote | strong | tm | text()" />
                                        </div>
                                    </xsl:for-each>
                                </div>
                                <div>
                                    <xsl:for-each select="chap2">
                                        <h4>
                                            <xsl:for-each select="title">
                                                <span style="color:olive; font-family:Exocet; ">
                                                    <xsl:apply-templates />
                                                </span>
                                            </xsl:for-each>
                                        </h4>
                                        <div>
                                            <xsl:for-each select="p">
                                                <xsl:for-each select="title">
                                                    <span style="color:olive; font-variant:small-caps; ">
                                                        <xsl:apply-templates />
                                                    </span>
                                                </xsl:for-each>
                                                <div>
                                                    <xsl:apply-templates select="em | paraphrase | quote | strong | tm | text()" />
                                                </div>
                                            </xsl:for-each>
                                        </div>
                                        <div>
                                            <xsl:for-each select="chap3">
                                                <h5>
                                                    <xsl:for-each select="title">
                                                        <span style="color:olive; font-family:Exocet; ">
                                                            <xsl:apply-templates />
                                                        </span>
                                                    </xsl:for-each>
                                                </h5>
                                                <div>
                                                    <xsl:for-each select="p">
                                                        <xsl:for-each select="title">
                                                            <span style="color:olive; font-variant:small-caps; ">
                                                                <xsl:apply-templates />
                                                            </span>
                                                        </xsl:for-each>
                                                        <div>
                                                            <xsl:apply-templates select="em | paraphrase | quote | strong | tm | text()" />
                                                        </div>
                                                    </xsl:for-each>
                                                </div>
                                            </xsl:for-each>
                                        </div>
                                    </xsl:for-each>
                                </div>
                            </xsl:for-each>
                        </div>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="adventure">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="author">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="career">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="chap1">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="chap2">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="chap3">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="character">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="culture">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="culture-list">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="description">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="em">
        <span style="font-style:italic; ">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="ht">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="item">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="item-list">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="movement">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="p">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="paraphrase">
        <p>
            <span style="border-color:olive; border-style:solid; border-width:thin; color:olive; font-style:italic; padding:2mm; ">
                <xsl:apply-templates />
            </span>
        </p>
    </xsl:template>
    <xsl:template match="quote">
        <span style="font-style:italic; ">&quot;</span>
        <span style="font-style:italic; ">
            <xsl:apply-templates />
        </span>
        <span style="font-style:italic; ">&quot;</span>
    </xsl:template>
    <xsl:template match="strong">
        <span style="font-weight:bold; ">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="talent-list">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="title">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="tm">
        <span style="font-variant:small-caps; ">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="type">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="value">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="version">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="wt">
        <xsl:apply-templates />
    </xsl:template>
</xsl:stylesheet>
