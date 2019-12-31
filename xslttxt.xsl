<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:text>---------------</xsl:text>
<xsl:text>STAFF INFORMATION</xsl:text>
<xsl:text>---------------&#x0A;</xsl:text>
<xsl:text>&#x0A;</xsl:text>
<xsl:text>NAME|STAFF_POSITION|SALARY|EMAIL&#x0A;</xsl:text>
<xsl:for-each select="eShoes/user/staff">
<xsl:value-of select="staffName" />
<xsl:text>|</xsl:text>
<xsl:value-of select="staffPosition" />
<xsl:text>|</xsl:text>
<xsl:value-of select="staffSalary" />
<xsl:text>|</xsl:text>
<xsl:if test="not(staffEmail)">
<xsl:text>!-------------(NOT INSERTED YET!)---------!</xsl:text>
</xsl:if>
<xsl:value-of select="staffEmail" />
<xsl:text>&#x0A;</xsl:text>
</xsl:for-each>


</xsl:template>
</xsl:stylesheet>