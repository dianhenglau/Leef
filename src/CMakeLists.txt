# Target is Leev. It is a shared library. It has no sources initially.
add_library(Leev SHARED "")

# For target Leev, add the following sources.
target_sources(Leev
    PUBLIC
        leev.h
    PRIVATE
        leev.cpp
        ${TEMPLATES_SRC}
)

# For target Leev, link the following libraries.
target_link_libraries(Leev
    PUBLIC
        Cutelyst::Core
        Qt5::Core
        Qt5::Network
        Cutelyst::View::Grantlee
        Cutelyst::StaticSimple
)

# Include subdirectories.
include(controllers/CMakeLists.txt)
include(models/CMakeLists.txt)

