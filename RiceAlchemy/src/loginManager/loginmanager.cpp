#include "loginmanager.h"

loginManager::loginManager(QObject *parent) : QObject(parent)
{

}

bool loginManager::accessGranted(){

    //ask oauth2 manager and return proper code
    return true;
}

bool loginManager::loginClicked(QString username, QString password){
    return this->accessGranted();
}


void loginManager::forgotPassword()
{
    qDebug()<<"not implemented yet";
}

