---
title: 'For VoTT_NTUT_WIN10_repo ReadMe'
disqus: hackmd
---
[TOC]

## 1. Project description and links

### (1). [VoTT_NTUT_WIN10](https://github.com/masteree108/VoTT_NTUT_WIN10)
This Source Code is based on developing new features on Microsoft/VoTT version 2.2.0


### (2). [CVTRK_WIN10](https://github.com/masteree108/CVTRK_WIN10)
Additional new automatic tracking of objects

### (3). [NTUT_VoTT](https://drive.google.com/file/d/18bD1TYMr4szTqwdqgBfovvSoXhiBLpHo/view?usp=sharing)
The new version exe of VoTT executable file integrated by NTUT

## 2. Tool Introduction
NTUT_VoTT tool is a modified version of Microsoft VoTT (based on Version: V2.2.0) open-source labeling software. It has the following new features:
(1). Automatic tracking after labeling, to reduce the tedious work of re-labeling each frame
(2). Multi-core tracking
(3). Automatically correct the size of the bounding box
(4). Track FPS for different scenarios

## 3. Set up the VoTT environment 
To make the project available to everyone , Security Token uses a common key to add tracking function.
```gherkin=
    Name : NTUTDrone Token
    Key : qITjd1Rj6hFqC7uB0OGxPKYVxIFSdcMrprQAMS5rEhc=
```
Click the gear icon in the lower left corner and enter the security token above.

![](https://i.imgur.com/XNGfNZi.png)

## 4. Create a new project

### (1). New project
Go back to the home page and press New Project to create a project
![](https://i.imgur.com/awsb5BL.png)

### (2). Project Setting

#### Step1 Project Name
You can create an arbitrary project name. For convenience, you can make the project name the same as the video name

#### Step2 Security Token
You need to select the NTUTDrone_Token you just set.

#### Step3 Video Fame Extraction Rate 
The user can set the Fame Extraction Rate for a movie. The higher the Fame Extraction Rate ==(ex.30 FPS)== is, the larger the data set will be, but the more time it will take, and the lower the Fame Extraction Rate ==(ex.6 FPS)== is, the smaller the data set will be, but the less time it will take.
![](https://i.imgur.com/gJ6vWLE.png)

#### Step4 Source Connection
The user can choose the path from which to enter the video to track, as shown in the following image using Local file System(C:\Drone_Source)
:::warning
If you want to share VoTT project with other users, please set the same path
:::
![](https://i.imgur.com/23wViLg.png)
![](https://i.imgur.com/fl5znJz.png)

#### Step5 Target Connection
The user can choose the VoTT export path,as shown in the following image using Local file System(C:\Drone_Target\Drone_036)
:::warning
If you want to share VoTT project with other users, please set the same path
:::
![](https://i.imgur.com/AR9xnrj.png)
![](https://i.imgur.com/C7VzdnN.png)

## 5. Start Tracking 
After completing the project setting, the initial screen comes in as shown in the picture below,Function Bar,Tags,and Timeline.
![](https://i.imgur.com/p0U29Fv.png)
### (1). Function Bar

### (2). Timeline
Users can see the time of the video here, and move to different time points in the timeline to label and track.
![](https://i.imgur.com/Ut7M1RC.png)

### (3). Tags 
Users can add actions, Id,and features (ex. ID_xxx,walk,stand) to Tags.You can then label different Tags on the bounding box.
![](https://i.imgur.com/KLQZdcv.png)















###### tags: `readme`