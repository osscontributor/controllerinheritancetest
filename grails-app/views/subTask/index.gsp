
<%@ page import="demo.SubTask" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subTask.label', default: 'SubTask')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subTask" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subTask" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'subTask.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="subName" title="${message(code: 'subTask.subName.label', default: 'Sub Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subTaskInstanceList}" status="i" var="subTaskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subTaskInstance.id}">${fieldValue(bean: subTaskInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: subTaskInstance, field: "subName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subTaskInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
