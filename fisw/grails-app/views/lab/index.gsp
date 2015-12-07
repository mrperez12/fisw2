
<%@ page import="usuario.Lab" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-lab" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-lab" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'lab.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'lab.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="nombres" title="${message(code: 'lab.nombres.label', default: 'Nombres')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'lab.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'lab.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'lab.apellidos.label', default: 'Apellidos')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${labInstanceList}" status="i" var="labInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${labInstance.id}">${fieldValue(bean: labInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: labInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: labInstance, field: "nombres")}</td>
					
						<td><g:formatBoolean boolean="${labInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${labInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: labInstance, field: "apellidos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${labInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
