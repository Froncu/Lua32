include(fetchcontent)

set(POLYPARTITION_LIB polypartition)

fetchcontent_declare(${POLYPARTITION_LIB}
   GIT_REPOSITORY https://github.com/ivanfratric/polypartition.git
   GIT_TAG master
   GIT_SHALLOW TRUE)
fetchcontent_makeavailable(${POLYPARTITION_LIB})

add_library(${POLYPARTITION_LIB} STATIC ${${POLYPARTITION_LIB}_SOURCE_DIR}/src/polypartition.cpp)

target_include_directories(${PROJECT_NAME} PUBLIC ${${POLYPARTITION_LIB}_SOURCE_DIR}/src)

target_link_libraries(${PROJECT_NAME} PRIVATE ${POLYPARTITION_LIB})