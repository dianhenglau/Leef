#ifndef LEEF_H
#define LEEF_H

#include <Cutelyst/Application>

using namespace Cutelyst;

class Leef : public Application
{
    Q_OBJECT
    CUTELYST_APPLICATION(IID "Leef")
public:
    Q_INVOKABLE explicit Leef(QObject *parent = 0);
    ~Leef();

    bool init();
};

#endif //LEEF_H

