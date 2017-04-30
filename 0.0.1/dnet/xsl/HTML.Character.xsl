<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc">
	<xsl:output method="xml" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>
	<!-- ============================================================ -->
	<!-- Includes -->
	<!-- ============================================================ -->
	<xsl:include href="HTML.Species.xsl"/>
	<!--
	<xsl:include href="HTML.Attribute.xsl"/>
	-->
	<!-- ============================================================ -->
	<!-- Templates -->
	<!-- ============================================================ -->
	<xsl:template match="rpg:Character">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>Planescape Character Template</title>
				<link rel="stylesheet" type="text/css" href="../css/PS.Character.css"/>
			</head>
			<body>
				<div>
					<h1 class="title label">Planescape Character Sheet</h1>
				</div>
				
				<div class="characteristics">
					<h1 class="h1 label">Characteristics</h1>
					<xsl:apply-templates select="rpg:characteristics" mode="table.atomic"/>
				</div>

				<br/>

				<div><!-- group attributes, misc and valuables in a div for easier layout -->
				<div class="attributes">
					<h1 class="h1 label">Talents</h1>
					<xsl:apply-templates select="rpg:attribute-list" mode="table.atomic"/>
				</div>
				
				<div class="misc">
					<h1 class="h1 label">Misc</h1>
				</div>
				
				<div class="valuables">
					<h1 class="h1 label">Valuables</h1>
				</div>
				</div>
				
				<br/>

				<div class="skills">
					<h1 class="h1 label">Skills &amp; Specialties</h1>
					<xsl:apply-templates select="rpg:skill-list" mode="table.atomic"/>
				</div>
				
				<br/>
				
				<div class="acquaintances">
					<h1 class="h1 label">Acquaintances</h1>
				</div>
								
				<div class="background">
					<h1 class="h1 label">Background</h1>
				</div>
	
				<div class="goals">
					<h1 class="h1 label">Goals</h1>
				</div>
								
				<div class="apparel">
					<h1 class="h1 label">Apparel</h1>
				</div>
								
				<div class="weapons">
					<h1 class="h1 label">Weapons</h1>
				</div>
								
				<div class="equipment">
					<h1 class="h1 label">Equipment</h1>
				</div>
			</body>
		</html>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:characteristics" mode="table.atomic">
		<table class="characteristics">
			<tbody>
				<tr class="h2 label">
					<th colspan="2">Player</th>
					<!-- Player colspan -->
					<th colspan="2">GM</th>
					<!-- GM colspan -->
					<th colspan="4">Campaign</th>
					<!-- Campaign colspan -->
					<!-- Campaign colspan -->
					<!-- Campaign colspan -->
					<th colspan="4">Image</th>
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr>
					<td colspan="2">
						<xsl:value-of select="rpg:player"/>
					</td>
					<!-- Player colspan -->
					<td colspan="2">
						<xsl:value-of select="rpg:game-master"/>
					</td>
					<!-- GM colspan -->
					<td colspan="4">
						<xsl:value-of select="rpg:Campaign/rpg:title"/>
					</td>
					<!-- Campaign colspan -->
					<!-- Campaign colspan -->
					<!-- Campaign colspan -->
					<td colspan="4" rowspan="12">
						<xsl:element name="img">
							<xsl:attribute name="src"><xsl:value-of select="rpg:image"/></xsl:attribute>
							<xsl:attribute name="alt">Character portrait</xsl:attribute>
						</xsl:element>
					</td>
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr class="h2 label">
					<th colspan="2">Character</th>
					<!-- Character colspan -->
					<th colspan="2">Species</th>
					<!-- Species colspan -->
					<th colspan="2">Culture</th>
					<!-- Culture colspan -->
					<th colspan="2">Career</th>
					<!-- Career colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr>
					<td colspan="2">
						<xsl:value-of select="rpg:name"/>
					</td>
					<!-- Character colspan -->
					<td colspan="2">
						<xsl:value-of select="rpg:Species/rpg:name"/>
					</td>
					<!-- Species colspan -->
					<td colspan="2">
						<xsl:value-of select="rpg:Culture/rpg:name"/>
					</td>
					<!-- Culture colspan -->
					<td colspan="2">
						<xsl:apply-templates select="rpg:career-list"/>
					</td>
					<!-- Career colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr class="h2 label">
					<th colspan="2">Hair</th>
					<!-- Hair colspan -->
					<th colspan="1">Age</th>
					<th colspan="1">Ht</th>
					<th colspan="4">Appearance</th>
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr>
					<td colspan="2">
						<xsl:value-of select="rpg:hair"/>
					</td>
					<!-- Hair colspan -->
					<td colspan="1">
						<xsl:value-of select="rpg:Species/rpg:age"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="rpg:Species/rpg:age/@rpg:unit"/>
					</td>
					<td colspan="1">
						<xsl:value-of select="rpg:Species/rpg:height"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="rpg:Species/rpg:height/@rpg:unit"/>
					</td>
					<td colspan="4" rowspan="3">
						<xsl:value-of select="rpg:appearance"/>
					</td>
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr class="h2 label">
					<th colspan="2">Eyes</th>
					<!-- Eyes colspan -->
					<th colspan="1">Sex</th>
					<th colspan="1">Wt</th>
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr>
					<td colspan="2">
						<xsl:value-of select="rpg:eyes"/>
					</td>
					<!-- Eyes colspan -->
					<td colspan="1">
						<xsl:value-of select="rpg:gender"/>
					</td>
					<td colspan="1">
						<xsl:value-of select="rpg:Species/rpg:weight"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="rpg:Species/rpg:weight/@rpg:unit"/>
					</td>
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Appearance colspan-->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr class="h2 label">
					<th colspan="8">Personality</th>
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr>
					<td colspan="8" rowspan="3">
						<xsl:value-of select="rpg:personality"/>
					</td>
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr>
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
				<tr>
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Personality colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
					<!-- Image colspan -->
				</tr>
			</tbody>
		</table>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:career-list">
		<xsl:for-each select="rpg:Career">
			<xsl:value-of select="rpg:name"/>
			<xsl:if test="position() != last()">
				<xsl:text>/</xsl:text>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:attribute-list" mode="table.atomic">
		<table>
			<tbody>
				<tr class="h2 label">
					<th colspan="3">
						<xsl:value-of select="rpg:name"/>
					</th>
					<th>Rank</th>
				</tr>
				<xsl:apply-templates select="rpg:Attribute" mode="table"/>
			</tbody>
		</table>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:Attribute" mode="table">
		<tr>
			<td colspan="2" class="label-normal">
				<xsl:value-of select="rpg:name"/>
			</td>
			<!-- name colspan -->
			<td colspan="1" class="label-normal">
				<xsl:value-of select="rpg:abbr"/>
			</td>
			<td colspan="1">
				<xsl:value-of select="rpg:value"/>
			</td>
		</tr>
	</xsl:template>
	<!-- ============================================================ -->
	<xsl:template match="rpg:skill-list" mode="table.atomic">
		<table class="skill-group">
			<tbody>
				<tr class="h2 label">
					<th colspan="2">Skill</th>
					<!-- colspan -->
					<th colspan="1">Training</th>
					<th colspan="1">Tr Lvl</th>
				</tr>
				<xsl:apply-templates select="rpg:Skill" mode="table"/>
			</tbody>
		</table>
	</xsl:template>
	<!-- ============================================================ -->		
	<xsl:template match="rpg:Skill" mode="table">
		<tr>
			<td colspan="2">
				<xsl:value-of select="rpg:name"/>
			</td>
			<!-- name colspan -->
			<td colspan="1">
				<xsl:value-of select="rpg:training"/>
			</td>
			<td colspan="1">
				<xsl:value-of select="rpg:level"/>
			</td>
		</tr>
	</xsl:template>
	
</xsl:stylesheet>
