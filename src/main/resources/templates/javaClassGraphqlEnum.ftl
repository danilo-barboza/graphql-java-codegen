<#if package?has_content>
package ${package};

</#if>
<#if javaDoc?has_content>
/**
<#list javaDoc as javaDocLine>
 * ${javaDocLine}
</#list>
 */
</#if>
public enum ${className}<#if implements?has_content> implements <#list implements as interface>${interface}<#if interface_has_next>, </#if></#list></#if> {

<#list fields as field>
<#if field.javaDoc?has_content>
    /**
<#list field.javaDoc as javaDocLine>
     * ${javaDocLine}
</#list>
     */
</#if>
<#if field.deprecated>
    @Deprecated
</#if>
    ${field.value}<#if field_has_next>,</#if>
</#list>

}