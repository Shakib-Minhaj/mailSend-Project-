<%--
  Created by IntelliJ IDEA.
  User: shakib
  Date: 9/8/2020
  Time: 9:32 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Email Sender</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

</head>
<body>
<div id="content" role="main">
    <section class="row colset-2-its">
        <g:if test="${flash.message}">
            <div class="message" role="alert">
                ${flash.message}
            </div>
        </g:if>
        <h2>Email Sender Form</h2>
        <g:form controller="emailSender" action="send">
            <div class="fieldcontain">
                <g:textField name="address" placeholder="youremail@djamware.com" required="" />
            </div>
            <div class="fieldcontain">
                <g:textField name="subject" placeholder="Your Subject" required="" />
            </div>
            <div class="fieldcontain">
                <g:textArea name="body" rows="5" cols="80" placeholder="Your message" required="" />
            </div>
            <fieldset>
                <g:submitButton name="send" value="send" />
            </fieldset>
        </g:form>
    </section>
</div>

</body>
</html>