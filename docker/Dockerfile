FROM paopaorobot/ros-vnc:indigo

# SVO dependencies
RUN mkdir -p /root/third_party

# Sophus
WORKDIR /root/third_party
RUN git clone https://github.com/strasdat/Sophus.git --depth 1\
    && cd Sophus \
    && git fetch --unshallow
    && git checkout a621ff \
    && mkdir Sophus/build \
    && cd Sophus/build \
    && cmake ..

# Fast corner detector
WORKDIR /root/third_party
RUN git clone https://github.com/uzh-rpg/fast.git \
    && cd fast \
    && git checkout 1153981 \
    && mkdir fast/build \
    && cd fast/build \
    && cmake .. \
    && make

# G2O
WORKDIR /root/third_party
RUN wget https://github.com/RainerKuemmerle/g2o/archive/20160424_git.tar.gz -O g2o-20160424_git.tar.gz \
    && tar xvzf g2o-20160424_git.tar.gz \
    && cd g2o-20160424_git \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make \
    && make install

# Rpg Vikit
WORKDIR /root/catkin_ws/src
RUN mkdir -p /root/catkin_ws/src \
    && git clone https://github.com/uzh-rpg/rpg_vikit.git \
    && cd rpg_vikit \
    && git checkout 10871da

# ROS
RUN echo "source /root/catkin_ws/devel/setup.bash" >> /root/.bashrc