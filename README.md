---
title: 'For VoTT_NTUT_WIN10_repo ReadMe'
disqus: hackmd
---
[TOC]
# NTUT VoTT

##  Main Features of NTUT VoTT

NTUT_VoTT tool is a modified version of Microsoft VoTT (based on Version: V2.2.0) open-source labeling software. It has the following new features:
####  Automatic tracking after labeling, to reduce the tedious work of re-labeling each frame
#### Multi-core tracking
#### Track FPS for different scenarios

:::info 
The below video shows NTUT VoTT how to save your time for labeling objects, you don't need to label those objects each frame, and this tool supports multi-core tracking which can speed up while you tracking more objects. 
:::
{%youtube 6SzaEnZP5to%}

#### Automatically correct the size of the bounding box
::: info
Still do not know how the bounding box size is most fit? try this functionality like the below video.
:::
{%youtube SCz4ZMXDMGo%}



##  Project description and links

###  [VoTT_NTUT_WIN10](https://github.com/masteree108/VoTT_NTUT_WIN10)
This Source Code is based on developing new features on Microsoft/VoTT version 2.2.0.


###  [CVTRK_WIN10](https://github.com/masteree108/CVTRK_WIN10)
Additional new automatic tracking of objects

###  [NTUT_VoTT](https://drive.google.com/file/d/1DsavbWK5Ly8vZCAcbyCEPsk3zpRld34C/view?usp=sharing)
The new version exe of VoTT executable file integrated by NTUT

::: success
It doesn't need to setup any development environment, this tool can execute it directly.
:::

##  VoTT Basic operation
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

##  Set up the NTUT VoTT key
To make the project available to everyone , Security Token uses a common key to add tracking function.
```gherkin=
    Name : NTUTDrone Token
    Key : qITjd1Rj6hFqC7uB0OGxPKYVxIFSdcMrprQAMS5rEhc=
```
Click the gear icon in the lower left corner and enter the security token above.

![](https://i.imgur.com/XNGfNZi.png)

##  NTUT VoTT video soure and target file path
:::warning
Please note if you need to run function of NTUT VoTT, it needs to put below tool and project folder on the right path.
(1) NTUT_VoTT_v0.0.7_stable.zip
(2) video source folder
(3) traget folder
Please as follows
:::

### (1) NTUT_VoTT.exe path
please extract NTUT_VoTT_v0.0.7_stable.zip(extract here) on the 
C:\

please refer below figure
C:\NTUT_VoTT
![](https://i.imgur.com/SRxR9ez.png)


### (2) video source folder
Please create a folder for putting your video files, for example to name the folder is Drone_Source.

![](https://i.imgur.com/CcFYrol.png)

### (3) traget folder
Please create a folder for putting VoTT creates project file, for example to name the folder is Drone_Target.

![](https://i.imgur.com/DTLyVX9.png)

Later chapters will show you how VoTT creates VoTT project file in this folder.

##  Create a new project

###  New project

Please double click below icon to execute NTUT_VoTT tool.

![](https://i.imgur.com/Q6DeJxO.png)



as you can see the home page and press New Project to create a project.
![](https://i.imgur.com/awsb5BL.png)

###  Project Setting

#### Project Name
You can create an arbitrary project name. For convenience, you can make the project name the same as the video name.

#### Security Token
You can select the NTUTDrone_Token or other Token which you created.


#### Video Fame Extraction Rate 
The user can set the Fame Extraction Rate for a video. The higher the Fame Extraction Rate (ex.30 FPS)is, the larger the data set will be, but the more time it will take, and the lower the Fame Extraction Rate (ex.6 FPS) is, the smaller the data set will be, but the less time it will take.

![](https://i.imgur.com/qYDb7Nq.png)


#### Source Connection
The user can choose the path from which to enter the video to track, as shown in the following image using Local file System(C:\Drone_Source).

**If you want to share VoTT project with other user, please set the same path**

Press Add Connection like below image.

![](https://i.imgur.com/9s71hk4.png)


![](https://i.imgur.com/nhdayYe.png)


Please to choose Source Connectuion like below image.
![](https://i.imgur.com/AlFBpXX.png)


#### Target Connection
The user can choose the VoTT export path,as shown in the following image using Local file System(C:\Drone_Target\Drone_036).

**If you want to share VoTT project with other user, please set the same path.**

![](https://i.imgur.com/TSJ87pv.png)

![](https://i.imgur.com/Cn88JNU.png)

Please to choose Target Connectuion like below image.

![](https://i.imgur.com/tBLLo5i.png)

Finally to press Save Project will be finished project creation.

![](https://i.imgur.com/yZsmbo7.png)



## Tracking interface 
After completing the project setting, the initial screen comes in as shown in the picture below,Function Bar,Tags,and Timeline.

![](https://i.imgur.com/iXqWIic.png)

::: info 
Please note TAGS area needs to create by yourself. Default has nothing.
:::

### NTUT VoTT Function Bar 

below function icons and functionality are made by NTUT

![](https://i.imgur.com/HDymnhB.png)

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
![](https://i.imgur.com/SoaRHYr.jpg)

:::warning
Please note using the function of NTUT_VoTT it must label id_00x tag on the object,  otherwise it can't work , like the below figure.
:::

![](https://i.imgur.com/ywaEWpj.png)



NTUT_VoTT executes CVTRK_WIN10 and the track result will appears on the screen as shown below

tracking tips....
![](https://i.imgur.com/fc7pmev.jpg)

tracking object ...
![](https://i.imgur.com/WIrt3Ip.jpg)

After the tracking is complete, a system message will be displayed indicating tracking object successfully.

![](https://i.imgur.com/wQdZWaR.png)




Then user needs to press "d" to debug the tracking process. If there is any error, the user needs to manually adjust the result

As you can see the below figure, we don't need to label this object on the next frame anymore.
![](https://i.imgur.com/kmayu8W.jpg)

Because above operation we used bbox_calibration, so we can press “a” to the previous frame which is our first labeled.
As you can see this object’s bounding box is fit to the object.

before bbox_calibration
![](https://i.imgur.com/TFNn0Va.png)


after bbox_calibration
![](https://i.imgur.com/9qdhCuw.png)



You can also see that there are many characters is no added tag, and users can also label and give an ID instantly.

![](https://i.imgur.com/bvw9523.jpg)



User can see the Json file generated by NTUT_VoTT in the path(Targer Connection)set at the beginning.

![](https://i.imgur.com/lG8PsXY.png)

In the JSON file we can see information about the labeled person, such as ID, length, width, and the surrounding coordinates.

![](https://i.imgur.com/Q6R3YZ0.png)


## Export label result

Click on the Export icon in the left hand navigation. Select the appropriate export provider and which assets to export.
![](https://i.imgur.com/tjoAYHG.png)




###### tags: `readme`