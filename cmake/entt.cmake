include(fetchcontent)

set(ENTT_LIB EnTT)

fetchcontent_declare(${ENTT_LIB}
   GIT_REPOSITORY https://github.com/skypjack/entt.git
   GIT_TAG v3.14.0
   GIT_SHALLOW TRUE)
fetchcontent_makeavailable(${ENTT_LIB})

target_link_libraries(${PROJECT_NAME} PRIVATE ${ENTT_LIB})