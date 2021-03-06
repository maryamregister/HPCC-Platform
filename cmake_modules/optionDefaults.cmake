if ( NOT DESTDIR )
    set( DESTDIR "" )
endif()

if ( NOT PREFIX )
if ( WIN32 )
    set( prog86key "ProgramFiles(x86)" )
    if ("$ENV{${prog86key}}" STREQUAL "")
        set( PREFIX "$ENV{ProgramFiles}" )
    else()
        set( PREFIX "$ENV{${prog86key}}" )
    endif()
    string(REGEX REPLACE "\\\\" "/" PREFIX ${PREFIX})    
else (WIN32)
    set( PREFIX "${DESTDIR}/opt" )
endif (WIN32)    
endif()

if ( NOT EXEC_PREFIX )
    set( EXEC_PREFIX "${DESTDIR}/var" )
endif()

if ( NOT CONFIG_PREFIX )
    set( CONFIG_PREFIX "${DESTDIR}/etc" )
endif()

if ( NOT DIR_NAME )
    set( DIR_NAME "HPCCSystems" )
endif()

if ( NOT ARCHIVE_DIR )
    set( ARCHIVE_DIR "lib" )
endif()

if ( NOT LIB_DIR )
    set( LIB_DIR "lib" )
endif()

if ( NOT EXEC_DIR )
    set( EXEC_DIR "bin" )
endif()

if ( NOT COMPONENTFILES_DIR )
    set( COMPONENTFILES_DIR "componentfiles" )
endif()

if ( NOT ADMIN_DIR )
    set( ADMIN_DIR "sbin" )
endif()

if ( NOT PLUGINS_DIR )
    set( PLUGINS_DIR "plugins" )
endif()

if ( NOT CONFIG_SOURCE_DIR )
    set( CONFIG_SOURCE_DIR "source" )
endif()

if ( NOT RUNTIME_DIR )
    set( RUNTIME_DIR "lib" )
endif()

if ( NOT HOME_DIR )
    if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
        set( HOME_DIR "/Users" )
    else()
        set( HOME_DIR "/home" )
    endif()
endif()

if ( NOT LOCK_DIR )
    set( LOCK_DIR "lock" )
endif()

if ( NOT PID_DIR )
    set( PID_DIR "run" )
endif()

if ( NOT LOG_DIR )
    set( LOG_DIR "log" )
endif()

if ( NOT RUNTIME_USER )
    set( RUNTIME_USER "hpcc" )
endif()

if ( NOT RUNTIME_GROUP )
    set( RUNTIME_GROUP "${RUNTIME_USER}" )
endif()

if ( NOT ENV_XML_FILE )
    set( ENV_XML_FILE "environment.xml" )
endif()

if ( NOT ENV_CONF_FILE )
    set( ENV_CONF_FILE "environment.conf" )
endif()

set( INSTALL_DIR "${PREFIX}/${DIR_NAME}" )
set( CONFIG_DIR "${CONFIG_PREFIX}/${DIR_NAME}" )
set( RUNTIME_PATH "${EXEC_PREFIX}/${RUNTIME_DIR}/${DIR_NAME}" )
set( LOG_PATH "${EXEC_PREFIX}/${LOG_DIR}/${DIR_NAME}" )
set( LOCK_PATH "${EXEC_PREFIX}/${LOCK_DIR}/${DIR_NAME}" )
set( PID_PATH "${EXEC_PREFIX}/${PID_DIR}/${DIR_NAME}" )
set( INIT_PATH "${CONFIG_PREFIX}/init.d")

set( CONFIG_SOURCE_PATH "${CONFIG_DIR}/${CONFIG_SOURCE_DIR}" )
set( COMPONENTFILES_PATH "${INSTALL_DIR}/${COMPONENTFILES_DIR}" )
set( PLUGINS_PATH "${INSTALL_DIR}/${PLUGINS_DIR}" )
set( LIB_PATH "${INSTALL_DIR}/${LIB_DIR}" )
set( EXEC_PATH "${INSTALL_DIR}/${EXEC_DIR}" )
set( ADMIN_PATH "${INSTALL_DIR}/${ADMIN_DIR}" )

