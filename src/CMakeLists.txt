file(GLOB_RECURSE Leef_SRCS *.cpp *.h)

set(Leef_SRCS
    ${Leef_SRCS}
    ${TEMPLATES_SRC}
)

# Create the application
add_library(Leef SHARED ${Leef_SRCS})

# Link to Cutelyst
target_link_libraries(Leef
    Cutelyst::Core
    Qt5::Core
    Qt5::Network
)

