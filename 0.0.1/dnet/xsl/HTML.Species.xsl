<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc">
	<xsl:output method="xml" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>
	<!-- ============================================================ -->
	<!-- Includes -->
	<!-- ============================================================ -->
	<xsl:include href="HTML.Attribute.xsl" />
	<!-- ============================================================ -->
	<!-- Templates -->
	<!-- ============================================================ -->
	<xsl:template match="rpg:Species">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>Species template</title>
				<link rel="stylesheet" type="text/css" href="../css/PS.Species.css"/>
			</head>
			<body>
			<!--
				<div class="header">
					<span>System: <xsl:value-of select="rpg:system"/>
					</span>
					<br/>
					<span>Setting: <xsl:value-of select="rpg:setting"/>
					</span>
					<br/>
					<span>Author: <xsl:value-of select="rpg:author/rpg:personname/rpg:surname"/>, <xsl:value-of select="rpg:author/rpg:personname/rpg:firstname"/>
					</span>
					<br/>
					<span>Version: <xsl:value-of select="rpg:version"/>
					</span>
				</div>
			-->
				<xsl:apply-templates select="rpg:header"/>
				<!--
				<p>div-span style:</p>
				<div class="Species">
					<span class="label">Species name: </span><span><xsl:value-of select="rpg:name"/></span><br/>
					<span class="label">Can be PC? </span><span><xsl:value-of select="rpg:playable"/></span><br/>
					<span class="label">EP cost: </span><span><xsl:value-of select="rpg:cost"/></span><br/>
					<span class="label">Average height: </span><span><xsl:value-of select="rpg:avg-height"/><xsl:text> </xsl:text><xsl:value-of select="rpg:avg-height/@rpg:unit"/></span><br/>
					<span class="label">Average weight: </span><span><xsl:value-of select="rpg:avg-weight"/><xsl:text> </xsl:text><xsl:value-of select="rpg:avg-weight/@rpg:unit"/></span><br/>
					<span class="label">Average lifespan: </span><span><xsl:value-of select="rpg:avg-lifespan"/><xsl:text> </xsl:text><xsl:value-of select="rpg:avg-lifespan/@rpg:unit"/></span><br/>
					<span class="label">Size Rating: </span><span><xsl:value-of select="rpg:size-rating"/></span><br/>
					<br/>
					<xsl:apply-templates select="rpg:attribute-list"/>
					<br/>
					<span class="label">Cultures: </span>
					<xsl:apply-templates select="rpg:culture-list"/>
					<br/>
					<br/>
					<span class="label">Description: </span><span><xsl:value-of select="rpg:description"/></span>
				</div>
				
				<p>Table style:</p>
-->
				<div class="content">
				<h1 class="label">
					<xsl:value-of select="rpg:name"/>
				</h1>
				<table class="Species">
					<tbody>
						<tr>
							<td class="label">Can be PC?</td>
							<td class="separator">:</td>
							<td>
								<xsl:value-of select="rpg:playable"/>
							</td>
							<td rowspan="8" class="image">
								<xsl:element name="img">
									<xsl:attribute name="src"><xsl:value-of select="rpg:image"/></xsl:attribute>
								</xsl:element>
							</td>
						</tr>
						<tr>
							<td class="label">EP cost</td>
							<td class="separator">:</td>
							<td>
								<xsl:value-of select="rpg:cost"/>
							</td>
						</tr>
						<tr>
							<td class="label">Avg height</td>
							<td class="separator">:</td>
							<td>
								<xsl:value-of select="rpg:height"/>
								<xsl:text> </xsl:text>
								<xsl:value-of select="rpg:height/@rpg:unit"/>
							</td>
						</tr>
						<tr>
							<td class="label">Avg weight</td>
							<td class="separator">:</td>
							<td>
								<xsl:value-of select="rpg:weight"/>
								<xsl:text> </xsl:text>
								<xsl:value-of select="rpg:weight/@rpg:unit"/>
							</td>
						</tr>
						<tr>
							<td class="label">Avg lifespan</td>
							<td class="separator">:</td>
							<td>
								<xsl:value-of select="rpg:age"/>
								<xsl:text> </xsl:text>
								<xsl:value-of select="rpg:age/@rpg:unit"/>
							</td>
						</tr>
						<tr>
							<td class="label">Size Rating</td>
							<td class="separator">:</td>
							<td>
								<xsl:value-of select="rpg:size-rating"/>
							</td>
						</tr>
						<!-- the template takes care of adding tr-elements -->
						<xsl:apply-templates select="rpg:attribute-list" mode="Species"/>
						<tr>
							<td class="label">Cultures</td>
							<td class="separator">:</td>
							<td colspan="2">
								<xsl:apply-templates select="rpg:culture-list"/>
							</td>
						</tr>
						<tr>
							<td class="label">Description</td>
							<td class="separator">:</td>
							<td colspan="2">
								<xsl:apply-templates select="rpg:description"/>
							</td>
						</tr>
					</tbody>
				</table>
				</div>
			</body>
		</html>
	</xsl:template>
	<!-- ============================================================ -->
<!--
	<xsl:template match="rpg:attribute-list">
		<span class="label">
			<xsl:value-of select="rpg:name"/>: </span>
		<xsl:apply-templates select="rpg:Attribute"/>
		<br/>
	</xsl:template>
-->
	<!-- ============================================================ -->
<!--
	<xsl:template match="rpg:attribute-list" mode="Species">
		<tr>
			<td class="label">
				<xsl:value-of select="rpg:name"/>
			</td>
			<td>:</td>
			<td>
				<xsl:apply-templates select="rpg:Attribute"/>
			</td>
		</tr>
	</xsl:template>
-->
	<!-- ============================================================ -->
<!--
	<xsl:template match="rpg:Attribute">
		<xsl:if test="rpg:value != 0">
			<xsl:value-of select="rpg:abbr"/>: <xsl:value-of select="rpg:value"/>
		</xsl:if>
		<xsl:if test="position() != last() and rpg:value != 0">
			<xsl:text>, </xsl:text>
		</xsl:if>
	</xsl:template>
-->
	<!-- ============================================================ -->
	<xsl:template match="rpg:culture-list">
		<xsl:apply-templates select="rpg:Culture"/>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:Culture">
		<xsl:value-of select="rpg:name"/>
		<xsl:if test="position() != last()">
			<xsl:text>, </xsl:text>
		</xsl:if>
	</xsl:template>
	<!-- This type of formatting is more suitable for a character sheet. Should probably be moved to another XSL. Maybe HTML.Attribute.xsl.
	<xsl:template match="rpg:attribute-list">
			<table class="attribute-list">
				<tbody>
					<tr class="attribute-list-name">
						<th colspan="4"><xsl:value-of select="rpg:name"/></th>
					</tr>
					<tr class="attribute-list-header">
						<th>Talent</th>
						<th>Abbr</th>
						<th>Rank</th>
						<th>Description</th>
					</tr>
					<xsl:apply-templates select="rpg:Attribute"/>
				</tbody>
			</table>
	</xsl:template>
	<xsl:template match="rpg:Attribute">
			<tr class="Attribute">
				<th><xsl:value-of select="rpg:name"/></th>
				<td><xsl:value-of select="rpg:abbr"/></td>
				<td><xsl:value-of select="rpg:value"/></td>
				<td><xsl:value-of select="rpg:description"/></td>
			</tr>
	</xsl:template>
	-->
</xsl:stylesheet>
