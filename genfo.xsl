<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="cover-page-master" page-height="11.69in" page-width="8.27in">
                <fo:region-body />
            </fo:simple-page-master>
            <fo:simple-page-master master-name="even-page-master" margin-left="0.6in" margin-right="0.6in" page-height="11.69in" page-width="8.27in">
                <fo:region-body margin-top="0.79in" margin-bottom="0.79in" />
                <fo:region-before region-name="even-page-header" extent="0.79in" />
                <fo:region-after extent="0.79in" />
            </fo:simple-page-master>
            <fo:simple-page-master master-name="odd-page-master" margin-left="0.6in" margin-right="0.6in" page-height="11.69in" page-width="8.27in">
                <fo:region-body margin-top="0.79in" margin-bottom="0.79in" />
                <fo:region-before region-name="odd-page-header" extent="0.79in" />
                <fo:region-after extent="0.79in" />
            </fo:simple-page-master>
            <fo:page-sequence-master master-name="default-page">
                <fo:repeatable-page-master-alternatives>
                    <fo:conditional-page-master-reference master-reference="odd-page-master" odd-or-even="odd" />
                    <fo:conditional-page-master-reference master-reference="even-page-master" odd-or-even="even" />
                </fo:repeatable-page-master-alternatives>
            </fo:page-sequence-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="no" media-type="text/html" />
    <xsl:template match="/">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="cover-page-master">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table start-indent="(8.27in - ((8.27in * 80) div 100) ) div 2" end-indent="(8.27in - ((8.27in * 80) div 100) ) div 2" text-align="center" width="80%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="20pt" />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" number-rows-spanned="2" width="20pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" height="50pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:block border-style="solid" border-width="1pt" border-color="#808080" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block>
                                                    <fo:block text-align="center" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:block>
                                                            <fo:block font-size="24pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:block>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <xsl:for-each select="RPGDoc">
                                                                        <xsl:for-each select="adventure">
                                                                            <xsl:for-each select="title">
                                                                                <fo:inline color="olive" font-family="Exocet">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                </fo:block>
                                                            </fo:block>
                                                            <fo:block font-size="18pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                <fo:block>
                                                                    <xsl:for-each select="RPGDoc">
                                                                        <xsl:for-each select="adventure">
                                                                            <xsl:for-each select="author">
                                                                                <fo:inline color="olive">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </xsl:for-each>
                                                                    </xsl:for-each>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:block>
                                                    </fo:block>
                                                </fo:block>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="even-page-header">
                    <fo:block>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="150pt" />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" height="30pt" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="left" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block />
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <xsl:for-each select="RPGDoc">
                                                <fo:inline font-weight="bold">
                                                    <xsl:for-each select="adventure">
                                                        <xsl:for-each select="title">
                                                            <xsl:apply-templates />
                                                        </xsl:for-each>
                                                    </xsl:for-each>
                                                </fo:inline>
                                            </xsl:for-each>
                                            <fo:inline font-weight="bold">&#160;</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:block color="black" space-before.optimum="-8pt">
                                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="odd-page-header">
                    <fo:block>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column column-width="150pt" />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" height="30pt" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <xsl:for-each select="RPGDoc">
                                                <xsl:for-each select="adventure">
                                                    <xsl:for-each select="title">
                                                        <fo:inline font-weight="bold">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" text-align="right" width="150pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:block color="black" space-before.optimum="-8pt">
                                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block>
                        <fo:table width="100%" table-layout="fixed" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column />
                            <fo:table-column />
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" height="30pt" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block />
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="2" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:block color="black" space-before.optimum="-8pt">
                                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell font-size="inherited-property-value(&apos;font-size&apos;) - 2pt" padding-bottom="0pt" padding-left="0pt" padding-right="0pt" padding-top="0pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="2" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                        <fo:block>
                                            <fo:page-number font-weight="bold" />
                                            <fo:inline font-weight="bold">&#160;</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <xsl:for-each select="RPGDoc">
                            <xsl:for-each select="adventure">
                                <fo:block font-size="24pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:block>
                                        <xsl:for-each select="title">
                                            <fo:inline color="olive" font-family="Exocet" font-size="24pt">
                                                <xsl:apply-templates />
                                            </fo:inline>
                                        </xsl:for-each>
                                    </fo:block>
                                </fo:block>
                                <fo:block font-size="18pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:block>
                                        <xsl:for-each select="subtitle">
                                            <fo:inline color="olive" font-family="Exocet">
                                                <xsl:apply-templates />
                                            </fo:inline>
                                        </xsl:for-each>
                                    </fo:block>
                                </fo:block>
                                <fo:list-block provisional-distance-between-starts="7mm" provisional-label-separation="2mm" start-indent="2mm" margin-bottom="0pt" margin-top="0pt" space-before.optimum="4pt" space-after.optimum="4pt">
                                    <fo:list-item>
                                        <fo:list-item-label end-indent="label-end()">
                                            <fo:block text-align="right" font-family="Courier" font-size="15pt" line-height="14pt" padding-before="2pt">&#x2022;</fo:block>
                                        </fo:list-item-label>
                                        <fo:list-item-body start-indent="body-start()">
                                            <fo:block>
                                                <fo:inline color="olive">Author:</fo:inline>&#160;<xsl:for-each select="author">
                                                    <xsl:apply-templates />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:list-item-body>
                                    </fo:list-item>
                                    <fo:list-item>
                                        <fo:list-item-label end-indent="label-end()">
                                            <fo:block text-align="right" font-family="Courier" font-size="15pt" line-height="14pt" padding-before="2pt">&#x2022;</fo:block>
                                        </fo:list-item-label>
                                        <fo:list-item-body start-indent="body-start()">
                                            <fo:block>
                                                <fo:inline color="olive">Version:</fo:inline>&#160;<xsl:for-each select="version">
                                                    <xsl:apply-templates />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:list-item-body>
                                    </fo:list-item>
                                    <fo:list-item>
                                        <fo:list-item-label end-indent="label-end()">
                                            <fo:block text-align="right" font-family="Courier" font-size="15pt" line-height="14pt" padding-before="2pt">&#x2022;</fo:block>
                                        </fo:list-item-label>
                                        <fo:list-item-body start-indent="body-start()">
                                            <fo:block>
                                                <fo:inline color="olive">Setting:</fo:inline>&#160;<xsl:for-each select="setting">
                                                    <xsl:apply-templates />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:list-item-body>
                                    </fo:list-item>
                                    <fo:list-item>
                                        <fo:list-item-label end-indent="label-end()">
                                            <fo:block text-align="right" font-family="Courier" font-size="15pt" line-height="14pt" padding-before="2pt">&#x2022;</fo:block>
                                        </fo:list-item-label>
                                        <fo:list-item-body start-indent="body-start()">
                                            <fo:block>
                                                <fo:inline color="olive">System:</fo:inline>&#160;<xsl:for-each select="system">
                                                    <xsl:apply-templates />
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:list-item-body>
                                    </fo:list-item>
                                </fo:list-block>
                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                    <fo:block>
                                        <xsl:for-each select="chap1">
                                            <fo:block font-size="14pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block>
                                                    <xsl:for-each select="title">
                                                        <fo:inline color="olive" font-family="Exocet">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>
                                                </fo:block>
                                            </fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block>
                                                    <xsl:for-each select="p">
                                                        <xsl:for-each select="title">
                                                            <fo:inline color="olive" font-variant="small-caps">
                                                                <xsl:apply-templates />
                                                            </fo:inline>
                                                        </xsl:for-each>
                                                        <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:block>
                                                                <xsl:apply-templates select="em | paraphrase | quote | strong | tm | text()" />
                                                            </fo:block>
                                                        </fo:block>
                                                    </xsl:for-each>
                                                </fo:block>
                                            </fo:block>
                                            <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:block>
                                                    <xsl:for-each select="chap2">
                                                        <fo:block font-size="12pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:block>
                                                                <xsl:for-each select="title">
                                                                    <fo:inline color="olive" font-family="Exocet">
                                                                        <xsl:apply-templates />
                                                                    </fo:inline>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:block>
                                                        <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:block>
                                                                <xsl:for-each select="p">
                                                                    <xsl:for-each select="title">
                                                                        <fo:inline color="olive" font-variant="small-caps">
                                                                            <xsl:apply-templates />
                                                                        </fo:inline>
                                                                    </xsl:for-each>
                                                                    <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:block>
                                                                            <xsl:apply-templates select="em | paraphrase | quote | strong | tm | text()" />
                                                                        </fo:block>
                                                                    </fo:block>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:block>
                                                        <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:block>
                                                                <xsl:for-each select="chap3">
                                                                    <fo:block font-size="10pt" font-weight="bold" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:block>
                                                                            <xsl:for-each select="title">
                                                                                <fo:inline color="olive" font-family="Exocet">
                                                                                    <xsl:apply-templates />
                                                                                </fo:inline>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:block>
                                                                    <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:block>
                                                                            <xsl:for-each select="p">
                                                                                <xsl:for-each select="title">
                                                                                    <fo:inline color="olive" font-variant="small-caps">
                                                                                        <xsl:apply-templates />
                                                                                    </fo:inline>
                                                                                </xsl:for-each>
                                                                                <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:block>
                                                                                        <xsl:apply-templates select="em | paraphrase | quote | strong | tm | text()" />
                                                                                    </fo:block>
                                                                                </fo:block>
                                                                            </xsl:for-each>
                                                                        </fo:block>
                                                                    </fo:block>
                                                                </xsl:for-each>
                                                            </fo:block>
                                                        </fo:block>
                                                    </xsl:for-each>
                                                </fo:block>
                                            </fo:block>
                                        </xsl:for-each>
                                    </fo:block>
                                </fo:block>
                            </xsl:for-each>
                        </xsl:for-each>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
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
        <fo:inline font-style="italic">
            <xsl:apply-templates />
        </fo:inline>
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
        <fo:block space-before.optimum="1pt" space-after.optimum="2pt">
            <fo:block>
                <fo:inline border-bottom-color="olive" border-bottom-style="solid" border-bottom-width="thin" border-left-color="olive" border-left-style="solid" border-left-width="thin" border-right-color="olive" border-right-style="solid" border-right-width="thin" border-top-color="olive" border-top-style="solid" border-top-width="thin" color="olive" font-style="italic" padding-bottom="2mm" padding-left="2mm" padding-right="2mm" padding-top="2mm">
                    <xsl:apply-templates />
                </fo:inline>
            </fo:block>
        </fo:block>
    </xsl:template>
    <xsl:template match="quote">
        <fo:inline font-style="italic">&quot;</fo:inline>
        <fo:inline font-style="italic">
            <xsl:apply-templates />
        </fo:inline>
        <fo:inline font-style="italic">&quot;</fo:inline>
    </xsl:template>
    <xsl:template match="strong">
        <fo:inline font-weight="bold">
            <xsl:apply-templates />
        </fo:inline>
    </xsl:template>
    <xsl:template match="talent-list">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="title">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="tm">
        <fo:inline font-variant="small-caps">
            <xsl:apply-templates />
        </fo:inline>
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
