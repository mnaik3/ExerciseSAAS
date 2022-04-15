   
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
    <head>
        <title>Upload Test</title>
    </head>
    <body  style="background-color:lightyellow;" >
    <center>
    	<h1>Google SaaS Cloud Vision : Label Detection </h1> </center>
    	<tb>
        <form action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">
           <tr><td><center> <input type="file" name="myFile"></center></td></tr>
          <tr><td><center><input type="submit" value="Upload"></center></td></tr>
        </form>
        </tb>
       
    </body>
</html>
