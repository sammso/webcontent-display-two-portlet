<%@page import="com.liferay.portal.kernel.util.Validator"%>
<%@ include file="/WEB-INF/jsp/html/init.jsp" %>
<%
	String articleId =  GetterUtil.getString(portletPreferences.getValue("articleId", StringPool.BLANK));
	String ddmTemplateKey = null; // Default
	String viewMode = null;
	String languageId = LanguageUtil.getLanguageId(request);
	ThemeDisplay themeDisplay2 = themeDisplay; //  <liferay-theme:defineObjects/> defines other option is to use request.getAttribute(WebKeys.THEME_DISPLAY);
	long groupId = scopeGroupId;
	
	String content = JournalContentUtil.getContent(groupId, articleId, ddmTemplateKey, viewMode, languageId , themeDisplay2);
	
	if ( !Validator.isNull(content)) {
%>
<%=content %>
<%
	}
	else {
%>
	Choose article
<%
	}
%>
