#
# Set flags for the C Compiler
#
IF ("${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")
  INCLUDE(CouchbaseGccOptions)
ELSEIF ("${CMAKE_C_COMPILER_ID}" STREQUAL "Clang")
  INCLUDE(CouchbaseClangOptions)
ELSEIF ("${CMAKE_C_COMPILER_ID}" STREQUAL "MSVC")
  INCLUDE(CouchbaseMsvcOptions)
ELSEIF ("${CMAKE_C_COMPILER_ID}" STREQUAL "SunPro")
  INCLUDE(CouchbaseSproOptions)
ENDIF ("${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")

#
# Set flags for the C++ compiler
#
IF ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
  INCLUDE(CouchbaseGxxOptions)
ELSEIF ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
  INCLUDE(CouchbaseClangxxOptions)
ELSEIF ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
  INCLUDE(CouchbaseMsvcxxOptions)
ELSEIF ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "SunPro")
  INCLUDE(CouchbaseSproxxOptions)
ENDIF ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")

# Add common -D sections
INCLUDE(CouchbaseDefinitions)

# Setup the RPATH
INCLUDE(CouchbaseRpath)
