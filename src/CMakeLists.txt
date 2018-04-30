file(GLOB_RECURSE Leev_SRCS *.cpp *.h)

set(Leev_SRCS
    ${Leev_SRCS}
    ${TEMPLATES_SRC}
)

# Create the application
add_library(Leev SHARED ${Leev_SRCS})

# Link to Cutelyst
target_link_libraries(Leev
    Cutelyst::Core
    Qt5::Core
    Qt5::Network
)

