#include "leef.h"

#include "root.h"

using namespace Cutelyst;

Leef::Leef(QObject *parent) : Application(parent)
{
}

Leef::~Leef()
{
}

bool Leef::init()
{
    new Root(this);

    return true;
}

