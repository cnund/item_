QT       += core gui
QT +=network
QT += multimedia multimediawidgets
QT += sql

RC_FILE+=app.rc
#RC_ICONS = favicon.ico

CONFIG += resources_big

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    login_in.cpp \
    main.cpp \
    mainwindow.cpp \
    monitoring.cpp \
    musicplayer.cpp \
    register_in.cpp \
    smarthome.cpp \
    weather_forecast.cpp

HEADERS += \
    login_in.h \
    mainwindow.h \
    monitoring.h \
    musicplayer.h \
    public.h \
    register_in.h \
    smarthome.h \
    weather_forecast.h

FORMS += \
    login_in.ui \
    mainwindow.ui \
    monitoring.ui \
    musicplayer.ui \
    register_in.ui \
    smarthome.ui \
    weather_forecast.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res.qrc

DISTFILES += \
    app.rc \
    favicon.ico
