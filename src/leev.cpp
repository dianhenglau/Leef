#include "leev.h"

#include <Cutelyst/Plugins/View/Grantlee/grantleeview.h>
#include <Cutelyst/Plugins/StaticSimple/StaticSimple>
#include "controllers/root.h"

using namespace Cutelyst;

Leev::Leev(QObject *parent) : Application(parent)
{
}

Leev::~Leev()
{
}

bool Leev::init()
{
    // Init plugins.
    auto viewParser = new GrantleeView(this);
    viewParser->setIncludePaths({ pathTo("resources/views") });

    auto staticContentServer = new StaticSimple(this);
    staticContentServer->setIncludePaths({ pathTo("public") });

    // Init controllers.
    new Root(this);

    return true;
}

