include(FindPackageHandleStandardArgs)
find_package(PkgConfig)
if(PKGCONFIG_FOUND)
    pkg_check_modules(FCL fcl>=0.3.1)
    if(FCL_LIBRARIES AND NOT FCL_INCLUDE_DIRS)
        set(FCL_INCLUDE_DIRS "/usr/include")
    endif()
endif()
find_package_handle_standard_args(FCL DEFAULT_MSG FCL_LIBRARIES FCL_INCLUDE_DIRS)
