#ifndef LOGINMANAGER_H
#define LOGINMANAGER_H

#include <QObject>
#include <QDebug>
#include <QString>


class loginManager : public QObject
{
    Q_OBJECT
public:
    explicit loginManager(QObject *parent = nullptr);

private:
    bool accessGranted();

signals:

public slots:
    bool loginClicked(QString username, QString password);
    void forgotPassword();

};

#endif // LOGINMANAGER_H
