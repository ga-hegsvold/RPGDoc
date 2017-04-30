<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!--	<xsl:import href="../../../docbook/xsl/1.77.0/html/docbook.xsl"/>-->

	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
	<html>
		<head>
			<title><xsl:value-of select="name()"/></title>
		</head>
		<body>
<!--		<xsl:apply-templates select="author"/>-->
			<xsl:apply-templates select="adventure-list"/>
		</body>
	</html>
	</xsl:template>
	<xsl:template match="adventure-list">
		<xsl:for-each select="Adventure">
			<div>
				<xsl:value-of select="title"/>
<!--				<xsl:apply-imports/>-->
<!--				<xsl:apply-templates select="chapter"/>-->
			</div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
