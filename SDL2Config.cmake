include("${CMAKE_CURRENT_LIST_DIR}/SDL2Targets.cmake")

if(NOT TARGET SDL2::SDL2)
  set_target_properties(
    SDL2::SDL2-static
    PROPERTIES
    IMPORTED_GLOBAL True
  )
  add_library(SDL2::SDL2 ALIAS SDL2::SDL2-static)
endif()
