<%@ taglib uri="/struts-tags" prefix="s" %>

<s:form action="login">
<s:textfield name="users.username" label="Name"></s:textfield>
<s:password name="users.password" label="Password"></s:password>
<s:submit value="login"></s:submit>
</s:form>