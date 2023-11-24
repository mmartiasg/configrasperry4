sudo apt-get install libcamera-apps
#check
libcamera-hello


# Verify instalation
# If everything went OK, a window will be open and a video capture can be acquired.
# To use the camera in the demos you must enable the camera's legacy interface following the nest steps:
# 1- Open a terminal and run:

# sudo raspi-config

# Select the  "Interface Options" menu and then click on "Legacy Camera". Here, you can choose what you want to enable. Save changes and re-start the system:

# sudo reboot


# 2- Run the following command:

# sudo modprobe bcm2835-v4l2


# Now you should be able to use the Pi v2 Camera in the demos. In you are using an USB webcam instead, you just need to connect it.