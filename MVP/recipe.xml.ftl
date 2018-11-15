<?xml version="1.0"?>
<recipe>

<#if generateLayout>
    <#include "../../activities/common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/Activity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/Fragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${fragmentClass}.${ktOrJavaExt}" />    

    <instantiate from="root/src/app_package/Contract.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${contractClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/Presenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />   

    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${fragmentClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${contractClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />

</recipe>
