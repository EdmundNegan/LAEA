# Execute commands inside the running container
docker exec -it laea bash -c "
cd;
source ros_ws/devel/setup.bash;
bash"
