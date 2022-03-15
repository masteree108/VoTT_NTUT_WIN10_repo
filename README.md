---
title: 'For VoTT_NTUT_WIN10_repo ReadMe'
disqus: hackmd
---
[TOC]
# NTUT VoTT
##  Project description and links

###  [VoTT_NTUT_WIN10](https://github.com/masteree108/VoTT_NTUT_WIN10)
This Source Code is based on developing new features on Microsoft/VoTT version 2.2.0.


###  [CVTRK_WIN10](https://github.com/masteree108/CVTRK_WIN10)
Additional new automatic tracking of objects

###  [NTUT_VoTT](https://drive.google.com/file/d/18bD1TYMr4szTqwdqgBfovvSoXhiBLpHo/view?usp=sharing)
The new version exe of VoTT executable file integrated by NTUT

##  Main Features
NTUT_VoTT tool is a modified version of Microsoft VoTT (based on Version: V2.2.0) open-source labeling software. It has the following new features:
####  Automatic tracking after labeling, to reduce the tedious work of re-labeling each frame
#### Multi-core tracking
#### Automatically correct the size of the bounding box
#### Track FPS for different scenarios

##  Basic operation
VoTT allows user to fine tune the bounding boxes using the arrow keys in a few different ways. While a region is selected:
```gherkin=
Ctrl + Arrowkey - Move Region
Ctrl + Alt + Arrowkey - Shrink Region
Ctrl + Shift + Arrowkey - Expand Region
```
When the video playback bar is present, it allows the following shortcuts to select frames:
```gherkin=
A or ArrowLeft - Previous Frame
D or ArrowRight - Next Frame
Q - Previous Tagged Frame
E - Next Tagged Frame
```

##  Set up the VoTT environment 
To make the project available to everyone , Security Token uses a common key to add tracking function.
```gherkin=
    Name : NTUTDrone Token
    Key : qITjd1Rj6hFqC7uB0OGxPKYVxIFSdcMrprQAMS5rEhc=
```
Click the gear icon in the lower left corner and enter the security token above.

![](https://i.imgur.com/XNGfNZi.png)

##  Create a new project

###  New project
Go back to the home page and press New Project to create a project.
![](https://i.imgur.com/awsb5BL.png)

###  Project Setting

#### Project Name
You can create an arbitrary project name. For convenience, you can make the project name the same as the video name.

#### Security Token
You need to select the NTUTDrone_Token you just set.

#### Video Fame Extraction Rate 
The user can set the Fame Extraction Rate for a video. The higher the Fame Extraction Rate (ex.30 FPS)is, the larger the data set will be, but the more time it will take, and the lower the Fame Extraction Rate (ex.6 FPS) is, the smaller the data set will be, but the less time it will take.
![](https://i.imgur.com/gJ6vWLE.png)

#### Source Connection
The user can choose the path from which to enter the video to track, as shown in the following image using Local file System(C:\Drone_Source).

**If you want to share VoTT project with other user, please set the same path**

![](https://i.imgur.com/23wViLg.png)
![](https://i.imgur.com/fl5znJz.png)

#### Target Connection
The user can choose the VoTT export path,as shown in the following image using Local file System(C:\Drone_Target\Drone_036).

**If you want to share VoTT project with other user, please set the same path.**

![](https://i.imgur.com/AR9xnrj.png)
![](https://i.imgur.com/C7VzdnN.png)

## Tracking interface 
After completing the project setting, the initial screen comes in as shown in the picture below,Function Bar,Tags,and Timeline.
![](https://i.imgur.com/znWPq6B.jpg)

### Function Bar
#### Tracking time 
User can set the time they want to track.For example,if project setting set video with 6 fps and a Tracking time of 1 will track 6 frames.if Tracking time set 0 is mean only tracking next frame.
![](https://i.imgur.com/UoIWGHT.png)

#### FPS
User uses different frames for tracking depending on the scene. For example,you can track a still life at 5fps,and you can track a character at Org_FPS.
![](https://i.imgur.com/1Xpcrxe.png)

#### Bbox_calibration
User can tick the checkbox whether they want to use this function, and adjust the accuracy of labeling with different intensity for different scenarios.
![](https://i.imgur.com/fOOGrfr.png)

#### Auto Track
Click this button to start tracking.
![](https://i.imgur.com/WmIvGEv.png)


### Timeline
Can see the time of the video here, and move to different time points in the timeline to label and track.
![](https://i.imgur.com/Ut7M1RC.png)

### Tags 
User can add actions, Id,and features (ex. ID_xxx,walk,stand) to Tags.You can then label different Tags on the bounding box.
![](https://i.imgur.com/KLQZdcv.png)

## Start Tracking 
As shown in the figure below, character have been labeled and assigned id_001, the tracking time is set to 3 seconds, FPS=org_fps,and Bbox_calibration strength is weak,
![](https://i.imgur.com/qqSjmKZ.jpg)

NTUT_VoTT executes CVTRK_WIN10 and the track result will appears on the screen as shown below
![](https://i.imgur.com/OyMyBKO.jpg)
After the tracking is complete, a system message will be displayed indicating tracking object successfully.
![](https://i.imgur.com/Om9m814.jpg)
Then user needs to press "D" to debug the tracking process. If there is any error, the user needs to manually adjust the result
From the result, you can also see that a new character is added to the left side of the screen, and users can also label and give an ID instantly.
![](https://i.imgur.com/ExAbv6V.jpg)
User can see the Json file generated by NTUT_VoTT in the path(Targer Connection)set at the beginning.
![](https://i.imgur.com/WAYRPW5.png)
In the JSON file we can see information about the labeled person, such as ID, length, width, and the surrounding coordinates.
![](https://i.imgur.com/DxhgDtF.png)

## Export label result

Click on the Export icon in the left hand navigation. Select the appropriate export provider and which assets to export.
![](https://i.imgur.com/tjoAYHG.png)




###### tags: `readme`