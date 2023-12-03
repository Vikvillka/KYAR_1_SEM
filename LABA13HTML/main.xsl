<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>Population</title>
</head>
<body>
<h3>Population of regions in Belarus</h3>
<table border="2">
<tr bgcolor="#0033FF" color="white">
<th>Область</th>
<th>Население</th>
</tr>
<xsl:for-each select="catalog/string">
<xsl:sort select="population" data-type="number" order="ascending"/>
<tr bgcolor="#99CCFF">
<td><xsl:value-of select="obl"/></td>
<td><xsl:value-of select="population"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>