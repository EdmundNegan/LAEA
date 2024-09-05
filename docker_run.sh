xhost local:docker &&
docker run -it --rm \
    --privileged \
    --gpus all \
    --net=host \
    --ipc host \
    --name laea \
    -e "DISPLAY=$DISPLAY" \
    -e "QT_X11_NO_MITSHM=1" \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v "$HOME/.Xauthority:/root/.Xauthority" \
    -v "/home/intern/LAEA:/root/ros_ws/src/LAEA" \
    edmundngan/laea:latest \
    bash -c "
    cd ~/ros_ws && source devel/setup.bash; 
    cd .. && source .bashrc;
    bash"
