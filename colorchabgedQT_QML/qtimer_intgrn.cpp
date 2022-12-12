#include "qtimer_intgrn.h"
#include<QTimer>

qtimer_intgrn::qtimer_intgrn()
{
    connect(&t1,&QTimer::timeout ,this,&qtimer_intgrn::timeout);
    t1.setInterval(1000);
    emit notice(QVariant(color));
}

void qtimer_intgrn::timeout()
{
    color="skyblue";

    emit notice(QVariant(color));
}

void qtimer_intgrn::startTimer()
{
    color="green";

    emit notice(QVariant(color));
    t1.start();
}

void qtimer_intgrn::stoptTimer()
{
    color="orange";

    emit notice(QVariant(color));
    t1.stop();
}
