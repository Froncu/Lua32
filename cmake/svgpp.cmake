include(fetchcontent)

set(SVGPP_LIB svgpp)

fetchcontent_declare(${SVGPP_LIB}
   GIT_REPOSITORY https://github.com/svgpp/svgpp.git
   GIT_TAG v1.3.1
   GIT_SHALLOW TRUE)
fetchcontent_makeavailable(${SVGPP_LIB})

add_library(${SVGPP_LIB} INTERFACE)
target_include_directories(${SVGPP_LIB} INTERFACE ${${SVGPP_LIB}_SOURCE_DIR}/include)

# SVGPP requires the following Boost libraries
set(BOOST_LIB Boost)
set(BOOST_INCLUDE_LIBRARIES utility tti iterator range algorithm format math ratio variant spirit)
foreach(LIB ${BOOST_INCLUDE_LIBRARIES})
   list(APPEND BOOST_TARGET_LIBRARIES Boost::${LIB})
endforeach()
set(BOOST_ENABLE_CMAKE ON)

fetchcontent_declare(${BOOST_LIB}
   URL https://github.com/boostorg/boost/releases/download/boost-1.84.0/boost-1.84.0.7z
   USES_TERMINAL_DOWNLOAD TRUE
   DOWNLOAD_NO_EXTRACT FALSE
   DOWNLOAD_EXTRACT_TIMESTAMP TRUE)
fetchcontent_makeavailable(${BOOST_LIB})

target_link_libraries(${SVGPP_LIB} INTERFACE ${BOOST_TARGET_LIBRARIES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${SVGPP_LIB})