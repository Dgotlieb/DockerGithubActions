## Docker github integartion

1. Fork this Github repository
2. Login into your [Docker hub account](https://hub.docker.com/login)
3. Under your user avatar choose `Account settings`:
<img width="377" alt="image" src="https://github.com/user-attachments/assets/95ecefaa-3a9e-4db4-a341-b1c9d0c68801">

4. Under `Security`, go to `Personal access token`: 
<img width="461" alt="image" src="https://github.com/user-attachments/assets/25b65912-548d-4553-b38a-9e843d72888e">

5. Press `Generate token` button:
<img width="189" alt="image" src="https://github.com/user-attachments/assets/5d9041a4-63eb-428e-9c08-6544ec356799">

6. Give it name (such as Github) and Chosse `Read, Write, Delete` under access permission:
<img width="638" alt="image" src="https://github.com/user-attachments/assets/1379868f-b88b-46cf-913d-8279b7aaaa23">

7. Save aside your username and access token (you will not be ablte to see it again!):
<img width="660" alt="image" src="https://github.com/user-attachments/assets/b7902a10-2be9-4e76-ac24-23b2b5452dab">

8. Go to your forked Github repository (Section 1) --> Settings --> secrets and variables --> Actions --> New repository secret
9. Create **2** new secrets under the names: `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` (you know what to store there 😉)
10. You can now go to Actions and run you workflow (you can pass a tag)
11. If everything worked as expected you should see your ne image and run it on your local system 🎉
<img width="679" alt="image" src="https://github.com/user-attachments/assets/dfffd43c-c7c0-4032-92ea-2c24ffb6b26e">

``` bash
docker run dgotlieb/my_image:latest
Unable to find image 'dgotlieb/my_image:latest' locally
latest: Pulling from dgotlieb/my_image
c6a83fedfae6: Already exists
2733810d7af8: Already exists
c96a0e292e9e: Already exists
47007a96afca: Already exists
9f803fcc73d2: Already exists
76b88a2e40fa: Pull complete
Digest: sha256:da34a8e832d937ce9ceaf80dbeb977e85e46737241f358263c0551351dd31f5f
Status: Downloaded newer image for dgotlieb/my_image:latest
2024-08-02 16:42:03.605517
```




