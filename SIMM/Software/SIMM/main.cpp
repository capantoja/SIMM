#include <QtGui/QApplication>
#include "mainwindow.h"

/*****************************************************************/
/*                 ___  __ _   __ _   __                         */
/*                ,' _/ / // \,' // \,' /                        */
/*               _\ `. / // \,' // \,' /                         */
/*              /___,'/_//_/ /_//_/ /_/                          */
/*                                                               */
/*     Sistema de informacion multimedia para motocicletas       */
/*****************************************************************/

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;

#ifdef Q_OS_SYMBIAN
    w.showMaximized();

#else
    w.setMaximumSize(480,272);
    w.setMinimumSize(480,272);
    w.resize(480, 272);
    w.showFullScreen();
#endif
    return a.exec();
}
