<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>
	<!-- ============================================================ -->
	<!-- Includes -->
	<!-- ============================================================ -->
	<!--
	<xsl:include href="HTML.Species.xsl"/>
	-->
	<!-- ============================================================ -->
	<!-- Templates -->
	<!-- ============================================================ -->
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<!-- ============================================================ -->	
	<xsl:template match="rpg:RPGDoc">
		<xsl:apply-templates />
	</xsl:template>
	<!-- ============================================================ -->
</xsl:stylesheet>
