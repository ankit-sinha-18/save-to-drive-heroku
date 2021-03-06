<%-- 
    Document   : index
    Created on : 13 Sep, 2017, 8:19:23 PM
    Author     : Dhaval
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete>
    <jsp:attribute name="head_area"/>
    <jsp:attribute name="body_area">
        <section class="dashboard-counts no-padding-bottom center">
            <div class="container-fluid">
                <div class="row bg-white has-shadow">
                	<div class="col-xl-12" style="text-align:center">
	                    <c:choose>
	                        <c:when test='${empty(user)}'>
	                            <p style="font-size: 15px; color: black">Upload Files from URLs to your own Google Drive</p>
					<img src="https://developers.google.com/identity/images/btn_google_signin_dark_normal_web.png" title="Sign in with Google" onclick="location.href = '${pageContext.request.contextPath}/api/oauth/google/redirect'">
	                        </c:when>
                        	<c:otherwise>	                         
                        		<p style="font-size: 20px; color: green">Hi, <c:out value="${user.name}" default="Guest" />. </p>   
	                            <p style="font-size: 15px; color: green; word-wrap:break-word">Congratulations! You are successfully authenticated with Google using your Google account: <c:out value="${user.email}"/>. </p>
                                 <button id="auth-btn" class="btn btn-link btn-responsive" style="font-size: larger;" onclick="location.href = '${pageContext.request.contextPath}/api/oauth/google/redirect'">
                                     Click here to change Google account
                                 </button>
					<button id="auth-btn" class="btn btn-link btn-responsive" style="font-size: larger;" onclick="location.href = '${pageContext.request.contextPath}/new_upload'">
                                     Click here to upload Files to your drive.
                                 </button>
	                        </c:otherwise>
	                    </c:choose>
                    </div>
                </div>
            </div>
        </section>
    </jsp:attribute>
</ui:templete>
