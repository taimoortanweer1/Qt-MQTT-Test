#include "testgenerator.h"
#include <qdebug.h>
testGenerator::testGenerator()
{
    capacityBarPercentage = 0;

    connect(&m_timer, SIGNAL(timeout()),this, SLOT(timerHandlerSlot()));

    m_timer.start(1000);

}
void testGenerator::timerHandlerSlot()
{
    if(capacityBarPercentage > 100)
        capacityBarPercentage=0;
    else
        capacityBarPercentage++;

    //test values
    setJibAngleValue(QVariant(capacityBarPercentage).toString());
    emit jibAngleValueChanged();


    qDebug() << "JibAngleValue" << m_jibAngleValue << endl;

}


void testGenerator::setJibAngleValue(const QString &text){
    m_jibAngleValue = text;
}
void testGenerator::setCapacityBarPercentage(const int& value){
    m_capacityBarPercentage = value;
}
