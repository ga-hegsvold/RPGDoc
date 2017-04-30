<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:rpg="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc">
	<!-- ============================================================ -->
	<!-- Templates -->
	<!-- ============================================================ -->
	<xsl:template match="rpg:header">
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

	</xsl:template>
</xsl:stylesheet>
