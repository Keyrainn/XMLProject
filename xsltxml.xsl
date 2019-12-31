<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="xml" indent="yes" />

   <xsl:template match="/">
      <Shoes>
         <xsl:for-each select="eShoes/shoes/shoesType">
            <xsl:variable name="type" select="@categories" />

            <xsl:element name="{$type}">
               <xsl:for-each select="shoe">
                  <xsl:element name="name">
                     <xsl:value-of select="shoeName" />
                  </xsl:element>
               </xsl:for-each>
            </xsl:element>
         </xsl:for-each>
      </Shoes>
   </xsl:template>
</xsl:stylesheet>

