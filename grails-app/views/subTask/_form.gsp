<%@ page import="demo.SubTask" %>



<div class="fieldcontain ${hasErrors(bean: subTaskInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subTask.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subTaskInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subTaskInstance, field: 'subName', 'error')} required">
	<label for="subName">
		<g:message code="subTask.subName.label" default="Sub Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subName" required="" value="${subTaskInstance?.subName}"/>

</div>

