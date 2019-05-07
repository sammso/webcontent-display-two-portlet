<%@ include file="/WEB-INF/jsp/html/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />

<liferay-portlet:renderURL portletConfiguration="true" var="configurationRenderURL" />

<%
	String articleId =  GetterUtil.getString(portletPreferences.getValue("articleId", StringPool.BLANK));
%>
<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:fieldset>
		<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
		<aui:input name="redirect" type="hidden" value="<%= configurationRenderURL %>" />
		<aui:input name="preferences--articleId--" type="text" value="<%= articleId %>" />
	</aui:fieldset>

	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>