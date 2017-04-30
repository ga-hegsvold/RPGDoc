<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="../css/Character.css"/>
			</head>
			<body>
				<xsl:for-each select="rpg:Character">
					<table xsl:use-attribute-sets="class">
						<!-- start:Character -->
						<tr>
							<th>
								<span class="heading1">DragonNet RPG Character Template</span>
								<br/>
								<span class="heading3">for Planescape</span>
								<br/>
								<span class="signature">2006, Geir Atle Hegsvold</span>
							</th>
						</tr>
						<tr>
							<td>
								<table class="characteristics">
									<tr>
										<th colspan="6">
											<span class="heading2">Characteristics</span>
										</th>
										<!-- colspan -->
										<!-- colspan -->
									</tr>
									<tr>
										<th class="heading3">Player</th>
										<th class="heading3">GM</th>
										<th class="heading3" colspan="2">Campaign</th>
										<th class="heading3" colspan="2">Image</th>
									</tr>
									<tr>
										<td>
											<xsl:value-of select="rpg:player"/>
										</td>
										<td>
											<xsl:value-of select="rpg:game-master"/>
										</td>
										<td colspan="2">
											<xsl:value-of select="rpg:Campaign/rpg:title"/>
										</td>
										<td colspan="2" rowspan="9">
											<img>
												<xsl:attribute name="src"><xsl:value-of select="rpg:image"/></xsl:attribute>
												<xsl:attribute name="height"><xsl:text>300px</xsl:text></xsl:attribute>
											</img>
										</td>
									</tr>
									<tr>
										<th class="heading3">Character</th>
										<th class="heading3">Species</th>
										<th class="heading3">Culture</th>
										<th class="heading3">Career</th>
									</tr>
									<tr>
										<td>
											<xsl:value-of select="rpg:name"/>
										</td>
										<td>
											<xsl:value-of select="rpg:Species/rpg:name"/>
										</td>
										<td>
											<xsl:value-of select="rpg:Culture/rpg:name"/>
										</td>
										<td>
											<xsl:apply-templates select="rpg:career-list"/>
										</td>
									</tr>
									<tr>
										<th class="heading3">Appearance</th>
										<th class="heading3">Hair</th>
										<th class="heading3">Age</th>
										<th class="heading3">Height</th>
									</tr>
									<tr>
										<td rowspan="3">
											<xsl:value-of select="rpg:appearance"/>
										</td>
										<td>
											<xsl:value-of select="rpg:hair"/>
										</td>
										<td>
											<xsl:value-of select="rpg:age"/> years</td>
										<td>
											<xsl:value-of select="rpg:height"/> m</td>
									</tr>
									<tr>
										<!--th>Personality</th-->
										<th class="heading3">Eyes</th>
										<th class="heading3">Sex</th>
										<th class="heading3">Weight</th>
									</tr>
									<tr>
										<!--td><xsl:value-of select="rpg:personality" /></td-->
										<td>
											<xsl:value-of select="rpg:eyes"/>
										</td>
										<td>
											<xsl:value-of select="rpg:gender"/>
										</td>
										<td>
											<xsl:value-of select="rpg:weight"/> kg</td>
									</tr>
									<tr>
										<th class="heading3" colspan="4">Personality</th>
									</tr>
									<tr>
										<td colspan="4">
											<xsl:value-of select="rpg:personality"/>
										</td>
									</tr>
								</table>
								<!-- end:Characteristics -->
							</td>
						</tr>
						<tr>
							<td>
								<table class="talents">
									<tr>
										<th class="heading2">Talents</th>
										<th class="heading2">Movement</th>
										<th class="heading2">Valuables</th>
									</tr>
									<tr>
										<td>
											<xsl:apply-templates select="rpg:attribute-list"/>
										</td>
										<td/>
										<td/>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table class="skills">
									<tr>
										<th class="heading2" colspan="3">Skills &amp; Specialties</th>
										<!-- colspan -->
										<!-- colspan -->
									</tr>
									<tr>
										<td>
											<xsl:apply-templates select="rpg:skill-list"/>
										</td>
										<td>
											<xsl:apply-templates select="rpg:skill-list"/>
										</td>
										<td>
<!--
											<xsl:apply-templates select="//rpg:specialty-list"/>
-->
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<th class="heading2">Background</th>
										<th class="heading2">Goals</th>
									</tr>
									<tr>
										<td>
											<xsl:apply-templates select="rpg:background"/>
										</td>
										<td>
											<xsl:apply-templates select="rpg:goals"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<th class="heading2">Equipment</th>
									</tr>
									<tr>
										<td>
											<xsl:apply-templates select="rpg:item-list"/>
										</td>
									</tr>
									<tr>
										<td>
											<xsl:apply-templates select="rpg:weapon-list"/>
										</td>
									</tr>
									<tr>
										<td>
											<xsl:apply-templates select="rpg:clothing-list"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<!-- end:Character -->
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<!-- ============================== -->
	<!-- Global templates -->
	<!-- ============================== -->
	<xsl:template match="rpg:career-list">
		<xsl:for-each select="rpg:Career">
			<xsl:value-of select="rpg:name"/>
			<xsl:if test="not(position() = last())">
				<xsl:text>/</xsl:text>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:attribute-list">
		<table xsl:use-attribute-sets="class">
			<tr>
				<th class="heading3" colspan="2">
					<xsl:value-of select="rpg:name"/>
				</th>
				<th class="heading3">Rank</th>
			</tr>
			<xsl:for-each select="rpg:Attribute">
				<xsl:sort select="rpg:name"/>
				<xsl:apply-templates select="."/>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:Attribute">
		<tr>
			<td xsl:use-attribute-sets="class">
				<xsl:value-of select="rpg:name"/>
			</td>
			<td id="abbr" xsl:use-attribute-sets="class">
				<xsl:value-of select="rpg:abbr"/>
			</td>
			<td id="value" xsl:use-attribute-sets="class">
				<xsl:value-of select="rpg:value"/>
			</td>
		</tr>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:skill-list">
		<table xsl:use-attribute-sets="class">
			<tr>
				<th id="skill" class="heading3">Skill</th>
				<th class="heading3">Tr</th>
				<th class="heading3">Lvl</th>
			</tr>
			<xsl:for-each select="rpg:Skill">
				<xsl:sort select="rpg:name"/>
				<xsl:apply-templates select="."/>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:Skill">
		<tr>
			<td xsl:use-attribute-sets="class">
				<xsl:value-of select="rpg:name"/>
			</td>
			<td>
				<xsl:value-of select="rpg:training"/>
			</td>
			<td>
				<xsl:value-of select="rpg:level"/>
			</td>
		</tr>
		<xsl:for-each select="rpg:specialty-list">
			<xsl:apply-templates select="node()"/>
		</xsl:for-each>
		
		<!-- FIXME: Sort Specialties alphanumuerical -->
<!--	
		<xsl:for-each select="rpg:specialty-list">
			<xsl:sort select="rpg:name"/>
			<xsl:apply-templates match="rpg:Specialty"/>
		</xsl:for-each>
		<xsl:apply-templates match="rpg:specialty-list" />
-->
	</xsl:template>
	<!-- ============================== -->
	<!-- funker ikke helt -->
	<xsl:template match="rpg:specialty-list">
		<xsl:for-each select="rpg:Specialty">
			<xsl:sort select="rpg:name"/>
			<xsl:apply-templates select="."/>
		</xsl:for-each>
	</xsl:template>
	<!--	
-->
	<!-- ============================== -->
	<xsl:template match="rpg:Specialty">
		<tr>
			<td xsl:use-attribute-sets="class">
				<xsl:value-of select="../../rpg:name"/>,
				<span xsl:use-attribute-sets="class">
					(<xsl:value-of select="rpg:name"/>)
				</span>
			</td>
			<td>
				<xsl:value-of select="rpg:training"/>
			</td>
			<td>
				<xsl:value-of select="../../rpg:level+rpg:level"/> (<xsl:value-of select="rpg:level"/>)
			</td>
		</tr>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:background">
		<xsl:value-of select="."/>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:goals">
		<xsl:value-of select="."/>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:item-list">
		<table xsl:use-attribute-sets="class">
			<tr>
				<th id="item" class="heading3">Item</th>
				<th id="notes" class="heading3">Notes</th>
			</tr>
			<xsl:for-each select="rpg:Item">
				<xsl:sort select="rpg:name"/>
				<xsl:apply-templates select="."/>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:clothing-list">
		<table xsl:use-attribute-sets="class">
			<tr>
				<th class="heading3">Item</th>
				<th class="heading3">Weight</th>
				<xsl:if test="boolean(rpg:Item/rpg:resistance)">
					<th class="heading3">Resistance</th>
				</xsl:if>
				<th class="heading3">Quality</th>
				<th class="heading3">Notes</th>
			</tr>
			<xsl:for-each select="rpg:Item">
				<xsl:sort select="rpg:name"/>
				<xsl:apply-templates select="."/>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:weapon-list">
		<table xsl:use-attribute-sets="class">
			<tr>
				<th class="heading3">Item</th>
				<xsl:if test="boolean(rpg:Item/rpg:length)">
					<th class="heading3">Length</th>
				</xsl:if>
				<xsl:if test="boolean(rpg:Item/rpg:range)">
					<th class="heading3">Range</th>
				</xsl:if>
				<xsl:if test="boolean(rpg:Item/rpg:weight)">
					<th class="heading3">Weight</th>
				</xsl:if>
				<xsl:if test="boolean(rpg:Item/rpg:impact)">
					<th class="heading3">Impact</th>
				</xsl:if>
				<xsl:if test="boolean(rpg:Item/rpg:quality)">
					<th class="heading3">Quality</th>
				</xsl:if>
				<xsl:if test="boolean(rpg:Item/rpg:description)">
					<th class="heading3">Notes</th>
				</xsl:if>
			</tr>
			<xsl:for-each select="rpg:Item">
				<xsl:sort select="rpg:name"/>
				<xsl:apply-templates select="."/>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- ============================== -->
	<xsl:template match="rpg:Item">
		<tr>
			<td>
				<xsl:value-of select="rpg:name"/>
			</td>
			<xsl:if test="boolean(rpg:length)">
				<td>
					<xsl:value-of select="rpg:length"/> m
				</td>
			</xsl:if>
			<xsl:if test="boolean(rpg:range)">
				<td>
					<xsl:value-of select="rpg:range"/> m
				</td>
			</xsl:if>
			<xsl:if test="boolean(rpg:weight)">
				<td>
					<xsl:value-of select="rpg:weight"/> kg
				</td>
			</xsl:if>
			<xsl:if test="boolean(rpg:impact)">
				<td>
					<xsl:value-of select="rpg:impact"/>
				</td>
			</xsl:if>
			<xsl:if test="boolean(rpg:resistance)">
				<td>
					<xsl:value-of select="rpg:resistance"/>
				</td>
			</xsl:if>
			<xsl:if test="boolean(rpg:quality)">
				<td>
					<xsl:value-of select="rpg:quality"/>
				</td>
			</xsl:if>
			<xsl:if test="boolean(rpg:description)">
				<td>
					<xsl:value-of select="rpg:description"/>
				</td>
			</xsl:if>
		</tr>
	</xsl:template>
	<!-- ============================== -->
	<!-- Global attribute sets -->
	<!-- ============================== -->
	<xsl:attribute-set name="class">
		<xsl:attribute name="class"><xsl:value-of select="name()"/></xsl:attribute>
	</xsl:attribute-set>
</xsl:stylesheet>
