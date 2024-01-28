#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/alston/Automated-Object-Handling/src/cw1_world_spawner"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/alston/Automated-Object-Handling/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/alston/Automated-Object-Handling/install/lib/python3/dist-packages:/home/alston/Automated-Object-Handling/build/cw1_world_spawner/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/alston/Automated-Object-Handling/build/cw1_world_spawner" \
    "/usr/bin/python3" \
    "/home/alston/Automated-Object-Handling/src/cw1_world_spawner/setup.py" \
     \
    build --build-base "/home/alston/Automated-Object-Handling/build/cw1_world_spawner" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/alston/Automated-Object-Handling/install" --install-scripts="/home/alston/Automated-Object-Handling/install/bin"
