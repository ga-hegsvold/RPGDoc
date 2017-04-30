<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc">
	<!-- ============================================================ -->
	<!-- Includes -->
	<!-- ============================================================ -->
	<xsl:include href="HTML.header.xsl" />
	<!-- ============================================================ -->
	<!-- Templates -->
	<!-- ============================================================ -->
	<xsl:template match="rpg:attribute-list" mode="Character">
		<span class="label"><xsl:value-of select="rpg:name"/></span>
		<div>
			<xsl:apply-templates select="rpg:Attribute" mode="Character"/>
		</div>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:Attribute" mode="Character">
		<div>
			<span><xsl:value-of select="rpg:name"/></span>
			<span>(<xsl:value-of select="rpg:abbr"/>)</span>
			<span><xsl:value-of select="rpg:value"/></span>
		</div>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:attribute-list" mode="Species">
		<tr>
			<td class="label">
				<xsl:value-of select="rpg:name"/>
			</td>
			<td>:</td>
			<td>
				<xsl:apply-templates select="rpg:Attribute" mode="Species"/>
			</td>
		</tr>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:Attribute" mode="Species">
		<xsl:if test="rpg:value != 0">
			<xsl:value-of select="rpg:abbr"/>: <xsl:value-of select="rpg:value"/>
		</xsl:if>
		<xsl:if test="position() != last() and rpg:value != 0">
			<xsl:text>, </xsl:text>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
