# TODO: find a way to get rid of the additional targets &
# figure out why sol2 doesn't build Lua itself even though it should

include(fetchcontent)

set(SOL2_LIB SOL2)

fetchcontent_declare(${SOL2_LIB}
   GIT_REPOSITORY https://github.com/ThePhD/sol2.git
   GIT_TAG v3.3.0
   GIT_SHALLOW TRUE)
fetchcontent_makeavailable(${SOL2_LIB})

target_link_libraries(${PROJECT_NAME} PRIVATE sol2)