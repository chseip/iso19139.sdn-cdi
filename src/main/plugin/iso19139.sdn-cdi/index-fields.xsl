<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:sdn="http://www.seadatanet.org">
    <xsl:import href="../iso19139/index-fields/default.xsl"/>
    
    <!-- Add extra element to be indexed using the index mode
    
    <xsl:template mode="index" match="whatever">
        <Field name="aNewField" string="{string(.)}" store="true" index="true"/>
    </xsl:template>
    -->
    
    <xsl:template mode="index" match="sdn:SDN_ParameterDiscoveryCode|sdn:SDN_DeviceCategoryCode">
        <Field name="keyword" string="{string(.)}" store="true" index="true"/>
    </xsl:template>
    
</xsl:stylesheet>