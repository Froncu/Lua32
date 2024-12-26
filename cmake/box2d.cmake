include(fetchcontent)

set(BOX2D_LIB box2d)

fetchcontent_declare(${BOX2D_LIB}
   GIT_REPOSITORY https://github.com/erincatto/box2d.git
   GIT_TAG v3.0.0
   GIT_SHALLOW TRUE)
fetchcontent_makeavailable(${BOX2D_LIB})

# Disable warning C4244 & C4018; Box2D treats warnings as errors while triggering these warnings
target_compile_options(${BOX2D_LIB} PRIVATE /wd4244 /wd4018)

target_link_libraries(${PROJECT_NAME} PRIVATE ${BOX2D_LIB})