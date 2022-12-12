#ifndef QTIMER_INTGRN_H
#define QTIMER_INTGRN_H

#include <QObject>
#include <QTimer>
#include <QVariant>
class qtimer_intgrn:public QObject
{
public:
    qtimer_intgrn();
signals:
    void notice(QVariant data);
private slots:
    void timeout();
public slots:
    void startTimer();
    void stoptTimer();
private:
    QTimer t1;
    QString color="lightgreen";
};

#endif // QTIMER_INTGRN_H
