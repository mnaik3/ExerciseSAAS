<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>


<%@ page import="com.google.cloud.vision.v1.EntityAnnotation"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title><b>Labels</b></title>
</head>
<body style="background-color:lightyellow;">

	<table>
		<tr>
			<td align="center"><center><h1>Label Detection using Google cloud vision</center>
					</h1></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>

	</table>

	<table>
		<tr>
			<td>Uploaded image</td>
			<td></td>
			<td><img src="<%=request.getAttribute("imageUrl")%>"></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<%
			List<EntityAnnotation> imageLabels = (List<EntityAnnotation>) request.getAttribute("imageLabels");
		%>
		<tr>
			<td> <h3> <center>Labels Generated from Google Cloud Vision :</center></h3></td>
			<td></td></tr>
			<tr><td>
			<center>
				<table border="2">
					<tr>
						<td><b>Labels</b>></td>
						<td><b>Score</b>></td>

					</tr>

					<c:forEach items="${imageLabels}" var="label">
						<tr>
							<td>${label.getDescription()}</td>
							<td>${label.getScore()}</td>
						</tr>
					</c:forEach>

				</table>
			</center>
			</td>
		</tr>
		<tr>
			<td><a href="/">Reset Image</</a></td>
		</tr>
	</table>

</body>
</html>
