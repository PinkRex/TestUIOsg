# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appTestUI_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appTestUI_autogen.dir/ParseCache.txt"
  "appTestUI_autogen"
  )
endif()
