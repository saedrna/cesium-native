# modp_b64.h and libmodpbase64.lib
find_path(modp_b64_INCLUDE_DIR modp_b64.h)
find_library(modp_b64_LIBRARY NAMES modpbase64 libmodpbase64)

if(modp_b64_INCLUDE_DIR AND modp_b64_LIBRARY)
  set(modp_b64_FOUND TRUE)
  message(STATUS "Found modp_b64: ${modp_b64_INCLUDE_DIR}")
  add_library(modp_b64::modp_b64 STATIC IMPORTED GLOBAL)
  target_include_directories(modp_b64::modp_b64 INTERFACE ${modp_b64_INCLUDE_DIR})
  set_target_properties(modp_b64::modp_b64 PROPERTIES
    IMPORTED_LOCATION ${modp_b64_LIBRARY}
  )
else()
  set(modp_b64_FOUND FALSE)
  message(STATUS "Could not find modp_b64")
endif()