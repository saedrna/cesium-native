# find picosha2.h
find_path(picosha2_INCLUDE_DIR picosha2.h)

if(picosha2_INCLUDE_DIR)
  set(picosha2_FOUND TRUE)
  message(STATUS "Found picosha2: ${picosha2_INCLUDE_DIR}")
  add_library(picosha2::picosha2 INTERFACE IMPORTED GLOBAL)
  target_include_directories(picosha2::picosha2 INTERFACE ${picosha2_INCLUDE_DIR})
else()
  set(picosha2_FOUND FALSE)
  message(STATUS "Could not find picosha2")
endif()
