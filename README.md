The Open Motion Planning Library (OMPL)
=======================================

Linux [![Build Status](https://travis-ci.org/yuzhangbit/omplapp.svg?branch=master)](https://travis-ci.org/yuzhangbit/omplapp)

This is OMPL.app, an extended version of OMPL that adds support for mesh
loading and collision checking as well as a simple GUI.

Visit the [OMPL.app installation page](http://ompl.kavrakilab.org/installation.html) for
detailed installation instructions.

OMPL.app has the following required dependencies:

* [Boost](http://www.boost.org) (version 1.48 or higher)
* [CMake](http://www.cmake.org) (version 2.8.7 or higher)
* [Assimp](http://assimp.org)
* [FCL](https://github.com/flexible-collision-library/fcl)

OMPL.app's build system will attempt to automatically download and build
Assimp and FCL if not already installed.

The following dependencies are optional:

* [PyQt5](http://www.riverbankcomputing.co.uk/software/pyqt/download5) (for GUI)
* [PyOpenGL](http://pyopengl.sourceforge.net/) (for GUI)
* [Py++](https://bitbucket.org/ompl/ompl/src/tip/doc/markdown/installPyPlusPlus.md) (needed to generate Python bindings)
* [ODE](http://ode.org) (needed to compile support for planning using the Open Dynamics Engine)
* [Doxygen](http://www.doxygen.org) (needed to create a local copy of the documentation at
  http://ompl.kavrakilab.org)
* [Eigen](http://eigen.tuxfamily.org) (needed for an informed sampling technique to improve the optimization of path length)

Once dependencies are installed, you can build OMPL.app on Linux, OS X,
and MS Windows. Go to the top-level directory of OMPL.app and type the
following commands:

    mkdir -p build/Release
    cd build/Release
    cmake ../..
    # next step is optional
    make -j 4 update_bindings # if you want to use the GUI or Python bindings
    make -j 4 # replace "4" with the number of cores on your machine

