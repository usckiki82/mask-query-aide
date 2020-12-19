Project Notes & Documentation
=============================

* Started by running through some of the Open CV tutorials and examples:

    `https://docs.opencv.org/master/da/df6/tutorial_py_table_of_contents_setup.html`

* Then found this tutorial to detect hard hats as a starting point:

    `https://www.codeproject.com/Articles/5270236/Installing-OpenCV-and-ImageAI-for-Object-Detection`

* Learned about types of NeuralNets available
    - ResNet: a convolutional neural network that is built for high performance and accuracy, but with a longer detection time
    - YOLOv3: an implementation of the You Only Look Once (YOLO) algorithm that’s built for moderate performance, accuracy, and detection time
    - TinyYOLOv3: another YOLO implementation, but built for quick detection and performance, with moderate accuracy

* Ran into versioning issues using Python 3.8 and `imageai` pckg, so decided to learn Docker!
    - Install Docker using instructions from website (required WSL2 installation)

        `https://hub.docker.com/editions/community/docker-ce-desktop-windows/`

    - Then I followed the tutorial in this URL to learn the basics:

        `https://realpython.com/python-versions-docker/`
        `https://u.group/thinking/how-to-put-jupyter-notebooks-in-a-dockerfile/`

    - Later, Jupyter notebook kept crashing and looked like it would take > 24hrs to train so tried to incorporate GPU

        `https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker`

*  Migrated repo over to Git LFS for larger file management (ipynb larger) and also had to clean repo using `filter-branch` as outlined here `https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/removing-sensitive-data-from-a-repository`

* Learned to use `labelImg` to annotate photos `https://github.com/tzutalin/labelImg

* (TODO) Convert code to using GPU enabled tensor flow : https://www.tensorflow.org/install/gpu

* (TODO) Add pylinting etc setup