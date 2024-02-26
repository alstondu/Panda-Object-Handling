<div align="left">
<h1 align="left">
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" />
<br>Panda-PaP</h1>

<p align="left">
    
![python 10.5%](https://img.shields.io/badge/python-10.5%25-blue?style=flat-square)
![C++ 6.2%](https://img.shields.io/badge/C++-6.2%25-blue?style=flat-square)
![Languages Count](https://img.shields.io/github/languages/count/alstondu/Panda-Object-Handling?style=flat-square)

</p>
<img src="https://img.shields.io/github/license/alstondu/Panda-Object-Handling?style=flat-square&color=5D6D7E" alt="GitHub license" />

## 📖 Table of Contents
- [📖 Table of Contents](#-table-of-contents)
- [📍 Overview](#-overview)
- [📂 repository Structure](#-repository-structure)
- [🤖 Demo](#-demo)
- [🚀 Pre-Requisites](#-pre-requisites)
- [⚙️ Installation](#️-installation)
- [► Running](#-running)
- [📄 License](#-license)


## 📍 Overview

The objective is to perform pick and place tasks in Gazebo, using MoveIt!
to move the robot and PCL to detect object positions and colours.

Pick and Place, Object Detection and Localization are performed with [Franka Emika Panda](https://franka.de/).

### 🚀 Tasks
+ Task1: Pick up one cube and place it in the basket without collision.
+ Task2: Report the colour of randomly generated baskets at each given location or if any locations are empty.
+ Task3: Place each cube into a basket of the same colour

---
## 📂 Repository Structure

```sh
└── Panda-Object-Handling/
    ├── build/
    ├── devel/
    ├── doc/
    │   ├── html/
    │   │   └── index.html
    │   └── manifest.yaml
    ├── src/
    │   ├── CMakeLists.txt
    │   ├── realsense_gazebo_plugin/
    │   └── rpl_panda_with_rs/
    │   ├── panda_description/
    │   ├── panda_moveit_config/
    │   ├── object_handling/
    │   │   ├── package.xml
    │   │   ├── CMakeLists.txt
    │   │   ├── include/
    │   │   │   └──object_handling_class.h
    │   │   ├── launch/
    │   │   │   └── run_solution.launch
    │   │   └── src/
    │   │       ├── object_handling_class.cpp
    │   │       └── object_handling_node.cpp
    │   └── panda_world_spawner/
    │       ├── package.xml
    │       ├── CMakeLists.txt
    │       ├── launch/
    │       ├── models/
    │       ├── scripts/
    │       │   └── world_spawner.py
    │       ├── src/
    │       ├── srv/
    │       │   ├── Task1Service.srv
    │       │   ├── Task2Service.srv
    │       │   ├── Task3Service.srv
    │       │   └──TaskSetup.srv
    │       └── setup.py
    ├── LICENSE.txt
    ├── README.md
    └── .catkin_tools/
```

---
## 🤖 Demo
### Task 1
The task is to pick up the cube and place it in the basket without collision.

*Click to watch the video demonstration.*
[![UCL COMP0129 CW1 Task1 Demo](https://img.youtube.com/vi/x9lzZYu5evA/maxresdefault.jpg)](https://youtu.be/x9lzZYu5evA?si=-7IbD1lFVUl6R-C1 "UCL COMP0129 CW1 Task1 Demo")

### Task 2
The task is to report the basket colours at each location or if any locations are empty.

*Click to watch the video demonstration.*
[![UCL COMP0129 CW1 Task2 Demo](https://img.youtube.com/vi/eL6g-Ro2v_U/maxresdefault.jpg)](https://youtu.be/eL6g-Ro2v_U "UCL COMP0129 CW1 Task2 Demo")

### Task 3
The task is to place each cube into a basket of the same colour.

*Click to watch the video demonstration.*
[![UCL COMP0129 CW1 Task3 Demo](https://img.youtube.com/vi/Xb1QOhp2of8/maxresdefault.jpg)](https://youtu.be/Xb1QOhp2of8 "UCL COMP0129 CW1 Task3 Demo")

---
## 🚀 Pre-Requisites
+ ROS Noetic
+ MoveIt
+ Point Cloud Library

---
## ⚙️ Installation
```bash
> git clone https://github.com/alstondu/Panda-Object-Handling.git
> cd Panda-Object-Handling
> catkin build
```

---
# ► Running
The workspace needs to be sourced in each new terminal:
```bash
> source /PATH/TO/Panda-Object-Handling/devel/setup.bash
```
<br>

To start the programme, run the launch script in one terminal:
```bash
> roslaunch object_handling run_solution.launch
```
+ Task 1
```bash
> rosservice call /task 1
```
+ Task 2
```bash
> rosservice call /task 2
```
+ Task 3
```bash
> rosservice call /task 3
```

---
## 📄 License
LICENSE: MIT.  See [LICENSE.txt](LICENSE.txt)

DISCLAIMER:

THIS INFORMATION AND/OR SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS INFORMATION AND/OR
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Copyright (C) 2019-2024 alstondu except where specified
