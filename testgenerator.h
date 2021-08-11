#pragma once
#include <QObject>
#include <QTimer>
#include <QDateTime>
#include <qqml.h>

class testGenerator: public QObject
{

    Q_OBJECT
    Q_PROPERTY(int capacityBarPercentage     READ getCapacityBarPercentage  NOTIFY dataUpdated)
    Q_PROPERTY(QString jibAngleValue READ jibAngleValue WRITE setJibAngleValue  NOTIFY jibAngleValueChanged)


public:

    testGenerator();
    QString jibAngleValue() { return m_jibAngleValue; }
    int capacityBarPercentage() { return m_capacityBarPercentage; }

signals:
    void jibAngleValueChanged();

public slots:
    void timerHandlerSlot();

private:
    QTimer m_timer;

    void setJibAngleValue(const QString& currentTime);
    void setCapacityBarPercentage(const int& value);

    QString m_jibAngleValue;
    int m_capacityBarPercentage;



};

