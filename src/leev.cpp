#include "leev.h"

#include "root.h"

using namespace Cutelyst;

Leev::Leev(QObject *parent) : Application(parent)
{
}

Leev::~Leev()
{
}

bool Leev::init()
{
    new Root(this);

    return true;
}

