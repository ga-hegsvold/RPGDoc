<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc">
<!--
	<xsl:output method="xml" indent="yes" standalone="yes" doctype-public="-//W3C//DTD SVG 1.1//EN" doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd" media-type="image/svg"/>
-->
	<xsl:output method="xml" indent="yes" standalone="yes" media-type="image/svg"/>
	<xsl:preserve-space elements="rpg:description"/>
	<!-- ============================================================ -->
	<!-- Templates -->
	<!-- ============================================================ -->
	<xsl:template match="rpg:Spell">
		<svg xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" version="2.0" width="201.951" height="308.241">
			<metadata id="metadata7">
				<rdf:RDF>
					<cc:Work rdf:about="">
						<dc:format>image/svg+xml</dc:format>
						<dc:type rdf:resource="http://purl.org/dc/dcmitype/StillImage"/>
						<dc:title/>
						<dc:creator>
							<cc:Agent>
								<dc:title>Geir Atle Hegsvold</dc:title>
							</cc:Agent>
						</dc:creator>
						<cc:license rdf:resource="http://creativecommons.org/licenses/by-nc/3.0/"/>
					</cc:Work>
					<cc:License rdf:about="http://creativecommons.org/licenses/by-nc/3.0/">
						<cc:permits rdf:resource="http://creativecommons.org/ns#Reproduction"/>
						<cc:permits rdf:resource="http://creativecommons.org/ns#Distribution"/>
						<cc:requires rdf:resource="http://creativecommons.org/ns#Notice"/>
						<cc:requires rdf:resource="http://creativecommons.org/ns#Attribution"/>
						<cc:prohibits rdf:resource="http://creativecommons.org/ns#CommercialUse"/>
						<cc:permits rdf:resource="http://creativecommons.org/ns#DerivativeWorks"/>
					</cc:License>
				</rdf:RDF>
			</metadata>
			<!-- styling -->
			<style>
				text, tspan { font-size:8px; font-family:Calibri; -inkscape-font-specification:Calibri; word-wrap: normal }
				rect, path { fill:none; stroke:#000000; stroke-linecap:butt; stroke-linejoin:miter; stroke-opacity:1 }
				rect { stroke-miterlimit:4; stroke-dasharray:none }
				path { stroke-width:1px }
			</style>
			<g id="g1">
				<g id="g2">
					<!-- outer edge -->
					<rect x="0" y="0" width="201.951" height="308.241" style="opacity:0.5; stroke-width:1"/>
					<!-- inner frame -->
					<rect x="10" y="10" width="181.951" height="288.241" style="stroke-width:3.5433073"/>
					<!-- spell meta -->
					<text>
						<tspan x="193" y="7" style="font-size:6px; text-align:end; text-anchor:end; font-style:oblique">
							<xsl:value-of select="rpg:header/rpg:system"/> | <xsl:value-of select="rpg:header/rpg:setting"/> | <xsl:value-of select="rpg:header/rpg:version"/>
						</tspan>
					</text>
					<!-- spell name -->
					<text>
						<tspan x="20" y="25" style="font-size:14px;font-weight:bold">
							<xsl:value-of select="rpg:name"/>
						</tspan>
					</text>
					<!-- divider -->
					<path d="m 10,30 181,0"/>
					<!-- basic stats -->
					<text>
						<tspan x="20" y="40">
							<tspan style="font-weight:bold">CT:</tspan>
							<xsl:text> </xsl:text>
							<xsl:value-of select="rpg:casting-time"/>
							<xsl:text> </xsl:text>
							<tspan style="font-weight:bold">R:</tspan>
							<xsl:text> </xsl:text>
							<xsl:value-of select="rpg:range"/>
							<xsl:text> </xsl:text>
							<tspan style="font-weight:bold">D:</tspan>
							<xsl:text> </xsl:text>
							<xsl:value-of select="rpg:duration"/>
						</tspan>
						<tspan x="20" y="50">
							<tspan style="font-weight:bold">VoE:</tspan>
							<xsl:text> </xsl:text>
							<xsl:value-of select="rpg:volume-of-effect"/>
						</tspan>
					</text>
					<!-- divider -->
					<path d="m 10,60 181,0"/>
					<!-- sources -->
					<xsl:apply-templates select="rpg:source-list">
						<xsl:with-param name="title">Source</xsl:with-param>
						<xsl:with-param name="start-y" select="70"/>
					</xsl:apply-templates>
					<!-- divider -->
					<path d="m 10,120 181,0"/>
					<!-- conductors -->
					<xsl:apply-templates select="rpg:conductor-list">
						<xsl:with-param name="title">Conductor</xsl:with-param>
						<xsl:with-param name="start-y" select="130"/>
					</xsl:apply-templates>
					<!-- divider -->
					<path d="m 10,180 181,0"/>
					<!-- description -->
					<xsl:apply-templates select="rpg:description">
						<xsl:with-param name="start-y" select="190.0"/>
					</xsl:apply-templates>
					<!-- credits -->
					<text>
						<tspan x="193" y="305" style="font-size:6px; text-align:end; text-anchor:end; font-style:oblique">
							<xsl:value-of select="rpg:header/rpg:author/rpg:personname/rpg:firstname"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="rpg:header/rpg:author/rpg:personname/rpg:surname"/>
						</tspan>
					</text>
				</g>
			</g>
		</svg>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:source-list|rpg:conductor-list">
		<xsl:param name="title"/>
		<xsl:param name="start-y"/>
		<!-- header -->
		<text xmlns="http://www.w3.org/2000/svg">
			<tspan x="20" y="{$start-y}" style="font-size:10px;font-weight:bold">
				<xsl:value-of select="$title"/>s</tspan>
		</text>
		<!-- TD header -->
		<text xmlns="http://www.w3.org/2000/svg">
			<tspan x="120" y="{$start-y}" style="font-size:10px;font-weight:bold">
				<xsl:value-of select="$title"/> TD</tspan>
		</text>
		<xsl:apply-templates select="rpg:Specialty">
			<xsl:with-param name="start-y" select="$start-y"/>
		</xsl:apply-templates>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:Specialty">
		<!-- dynamic positioning -->
		<xsl:param name="start-y"/>
		<xsl:variable name="y" select="$start-y + 10 * position()"/>
		<!-- skill -->
		<text xmlns="http://www.w3.org/2000/svg">
			<tspan x="20" y="{$y}" style="font-size:10px">
				<xsl:value-of select="rpg:name"/>
			</tspan>
		</text>
		<!-- TD -->
		<text xmlns="http://www.w3.org/2000/svg">
			<tspan x="120" y="{$y}" style="font-size:10px">
				<xsl:value-of select="rpg:level"/>
			</tspan>
		</text>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:description">
		<!-- dynamic positioning -->
		<xsl:param name="start-y"/>
		<xsl:variable name="y" select="$start-y + 10"/>
		<!-- header -->
		<text xmlns="http://www.w3.org/2000/svg">
			<tspan x="20" y="{$start-y}" style="font-size:10px; font-weight:bold">Description</tspan>
		</text>
		<!-- description -->
		<text xmlns="http://www.w3.org/2000/svg">
			<tspan x="20" y="{$y}" style="word-wrap: normal; white-space: pre-wrap">
				<xsl:value-of select="."/>
			</tspan>
		</text>
		<!--
		<text xmlns="http://www.w3.org/2000/svg">
		<foreignObject  x="20" y="{$y}" width="200" height="125">
			 <div class="plain-text" xmlns="http://www.w3.org/1999/xhtml">
				<xsl:value-of select="."/>
			 </div>
		</foreignObject>
		</text>
		-->
	</xsl:template>
</xsl:stylesheet>
