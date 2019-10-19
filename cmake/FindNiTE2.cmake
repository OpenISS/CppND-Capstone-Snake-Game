#
FIND_PATH(
        NITE2_INCLUDE_DIR NiTE.h
        /usr/local/include/nite2 /usr/include/nite2 $ENV{NITE2_INCLUDE} PATH
)
FIND_LIBRARY(
        NITE2_LIBRARY NiTE2
        /usr/local/lib/ni2 /usr/lib/ni2 $ENV{NITE2_REDIST} $ENV{NITE2_REDIST64} PATH
)

set(NITE2_INCLUDE_DIRS ${NITE2_INCLUDE_DIR})
set(NITE2_LIBRARIES ${NITE2_LIBRARY})

IF (NITE2_INCLUDE_DIR AND NITE2_LIBRARY)
#    message("NITE2_INCLUDE_DIR and NITE2_LIBRARY found")
    SET(NITE2_FOUND TRUE)
    include_directories(${NITE2_INCLUDE_DIRS})

#    install(DIRECTORY ${PROJECT_SOURCE_DIR}/NiTE2/ DESTINATION ${PROJECT_BINARY_DIR}/NiTE2/)

ELSE(NITE2_INCLUDE_DIR AND NITE2_LIBRARY)
    message("NITE2_INCLUDE_DIR and NITE2_LIBRARY not found")
ENDIF (NITE2_INCLUDE_DIR AND NITE2_LIBRARY)