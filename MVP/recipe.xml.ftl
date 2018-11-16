<?xml version="1.0"?>
<recipe>

    <#--  生成mainfest配置  -->
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <#--  生成布局文件  -->
    <instantiate from="root/res/layout/activity.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityLayout)}.xml" />
    <instantiate from="root/res/layout/fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentLayout)}.xml" />

    <#--  生成.java文件  -->
    <instantiate from="root/src/app_package/Activity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/Fragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${fragmentClass}.${ktOrJavaExt}" />    
    <instantiate from="root/src/app_package/Contract.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${contractClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/Presenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />   

    <#--  打开文件.java文件  -->
    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${activityClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${fragmentClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${contractClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pagePackage?replace('.', '/')}/${presenterClass}.${ktOrJavaExt}" />

    <#--  打开布局文件  -->
    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityLayout)}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentLayout)}.xml" />

</recipe>
