include(fetchcontent)

set(LUA_LIB Lua)

fetchcontent_declare(${LUA_LIB}
   GIT_REPOSITORY https://github.com/lua/lua.git
   GIT_TAG v5.4.7
   GIT_SHALLOW TRUE)
fetchcontent_makeavailable(${LUA_LIB})

add_library(${LUA_LIB} STATIC ${lua_SOURCE_DIR}/onelua.c)

target_include_directories(${LUA_LIB} PUBLIC ${lua_SOURCE_DIR})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LUA_LIB})