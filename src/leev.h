#ifndef LEEV_H
#define LEEV_H

#include <Cutelyst/Application>

using namespace Cutelyst;

class Leev : public Application
{
    Q_OBJECT
    CUTELYST_APPLICATION(IID "Leev")
public:
    Q_INVOKABLE explicit Leev(QObject *parent = 0);
    ~Leev();

    bool init();
};

#endif //LEEV_H

