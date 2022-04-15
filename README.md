# ExerciseSAAS - Group 3
## SAAS-Google-Cloud-Vision-API
URL: https://project-saasgae.appspot.com/

## Screenshots of APP Running:

<img width="960" alt="image" src="https://user-images.githubusercontent.com/100692886/163522228-b0738712-b0ab-47df-8a82-ebc97ac6a827.png">

![image](https://user-images.githubusercontent.com/100692886/163522903-812203c7-4dd8-40d7-89bb-b0727d259bc8.png)


![image](https://user-images.githubusercontent.com/100692886/163523070-ed7dbbca-281c-46d7-b124-a387e50bf122.png)



## Explanation:
### Cloud Setup
Create a new project in your Google cloud console.
Add your Project Name

![image](https://user-images.githubusercontent.com/100692886/163523481-180ad7e5-9f65-4e1e-add3-3b99365e20ed.png)

<img width="960" alt="image" src="https://user-images.githubusercontent.com/100692886/163523618-27d13337-b711-4c35-a057-99fa057a6ee2.png">

From Navigation menu Go to
App Engine => Dashboard

<img width="960" alt="image" src="https://user-images.githubusercontent.com/100692886/163524089-28b695e2-6eb3-4c80-8368-79a155cb255c.png">
Click Create Appliaction->In language select Java ->click Next

Go To API Services

![image](https://user-images.githubusercontent.com/100692886/163524665-02b30833-9789-450e-8aae-cd6769ffa073.png)

Search Cloud Vision API ->Enable API->

<img width="960" alt="image" src="https://user-images.githubusercontent.com/100692886/163525422-bf1fa75b-c864-4ce4-b1ba-22881da3e518.png">

Go to IAM & Admin

<img width="663" alt="image" src="https://user-images.githubusercontent.com/100692886/163525774-cbc0e375-6725-4d78-b8c3-747d0024ca51.png">

Go to Service Account

<img width="649" alt="image" src="https://user-images.githubusercontent.com/100692886/163526101-c75d315d-3626-4a63-8dde-2ce8c527fdd9.png">

Create service->

<img width="606" alt="image" src="https://user-images.githubusercontent.com/100692886/163526254-a53267a9-ec0d-4a4e-9eac-63a1655ac66d.png">

Go to APIs & Services => Credentials => Create credentials

<img width="647" alt="image" src="https://user-images.githubusercontent.com/100692886/163526406-aab06f0c-d363-4d9c-a53c-50e5db8384ad.png">



### Eclipse Project Setup and API Details
Go to App Engine in the ecllipse. Click on Create New Project

Go to Google App Engine Standard Java Project Add your Project name.
![image](https://user-images.githubusercontent.com/100692886/163526513-966c943f-a508-41e6-9e21-a4ec80010c3e.png)


Check Create as Maven Project.

![image](https://user-images.githubusercontent.com/100692886/163526876-ca5b15a1-6297-4ac6-97b1-000f0e27c59b.png)

![image](https://user-images.githubusercontent.com/100692886/163527009-96f839f8-bce9-4232-b03a-42be562f39a4.png)


Add the required dependencies in pom.xml file.  
Here In the google-cloud-vision - artifact is necessary for detecting labels.

Next step is to create application jsp pages and  create their corresponding servlets. 
index.jsp: Page to upload image to the application. The Upload.java servlet gets the requests.

index.jsp - Allows us to upload an image.

Upload.java - It is a servlet that gets the request. 
After receiving the request, the image is converted to blobbytes. BLOB allows us to manage the creation and serving of large, immutable blobs to users. After that it is processed in the method getImageLabels() in order to to fetch the image labels by using the Google CV api. The fetched label results are then redirected to the view using labels.jsp

BlobstoreService -

com.google.appengine.api.blobstore BLOB - Binary Large OBject.BLOB is a collection of binary data that is stored as a single entity.

https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/blobstore/BlobstoreService

Send feedback AnnotateImageRequest - This API requests for performing Google Cloud Vision API tasks over a user-provided image, with user-requested features, and with context information.

https://cloud.google.com/vision/docs/reference/rest/v1/AnnotateImageRequest

After creating the app, now deploy the project to google cloud in the cloud project created.

<img width="960" alt="image" src="https://user-images.githubusercontent.com/100692886/163527172-e516cf5d-9527-42b3-b314-24b0aa538ac9.png">

## State of system
The  SAAS application runs properly and able to detect images
