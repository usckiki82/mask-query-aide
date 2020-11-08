Project Notes & Documentation
=============================

* Started by running through some of the Open CV tutorials and examples
* Started with this tutorial to detect hard hats:

`https://www.codeproject.com/Articles/5270236/Installing-OpenCV-and-ImageAI-for-Object-Detection`

* Types of NeuralNets available
    - ResNet: a convolutional neural network that’s built for high performance and accuracy, but with a longer detection time
    - YOLOv3: an implementation of the You Only Look Once (YOLO) algorithm that’s built for moderate performance, accuracy, and detection time
    - TinyYOLOv3: another YOLO implementation, but built for quick detection and performance, with moderate accuracy

* Ran into versioning issues using Python 3.8 and imageai, so decided to learn Docker!
    - Install Docker using instructions from website (required WSL2 installation)

`https://hub.docker.com/editions/community/docker-ce-desktop-windows/`

`$ docker run --name repo alpine/git clone https://github.com/docker/getting-started.git`
`$ docker cp repo:/git/getting-started/ .`
`$ docker build -t docker101tutorial .`
`$ docker run -d -p 80:80 --name docker-tutorial docker101tutorial`


* (TODO) Add pylinting etc setup