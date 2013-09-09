#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtGui>
#include <QPushButton>
#include <QCheckBox>
#include <QListWidget>
#include <QSlider>
#include <QCursor>
#include <QTimer>
#include <QPixmap>
#include <QIcon>
#include "SlidingStackedWidget.h"


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();


public slots:
    void UpAction();
    void DownAction();
    void ReprAction();
    void PlayAction();
    void ButtonsOff();
    void BatteryIndicator(int Charge);
    void FuelIndicator(int level);
    void RPMIndicator(int RPMValue);



private:
    Ui::MainWindow *ui;
    QLabel         *SpeedLabel;
    QLCDNumber     *Speed;
    QLabel         *RPMLabel;
    QLCDNumber     *RPM;
    QWidget        *ScreenParameter;
    QWidget        *InfoWidget;
    QLabel         *LeftIcon;
    QLabel         *RightIcon;
    QLabel         *MessIcon;
    QLCDNumber     *GPSLat;
    QLCDNumber     *GPSLon;
    QLabel         *GPSLatLabel;
    QLabel         *GPSLonLabel;
    QLabel         *MessLabel;



protected:
    void  ScreenLayout();
    void  GuiButtons();
    void  Screens();
    void  CreateSlidingStackedWidget();

    int          AnimTime;
    QPushButton *ButtonUP;
    QPushButton *ButtonDOWN;
    QPushButton *ButtonREPR;
    QPushButton *ButtonPLAY;
    QIcon        ButtonUP_on;
    QIcon        ButtonUP_off;
    QIcon        ButtonDOWN_on;
    QIcon        ButtonDOWN_off;
    QIcon        ButtonREPR_on;
    QIcon        ButtonREPR_off;
    QIcon        ButtonPLAY_on;
    QIcon        ButtonPLAY_off;
    QPixmap      ButtonUPImage_on;
    QPixmap      ButtonUPImage_off;
    QPixmap      ButtonDOWNImage_on;
    QPixmap      ButtonDOWNImage_off;
    QPixmap      ButtonREPRImage_on;
    QPixmap      ButtonREPRImage_off;
    QPixmap      ButtonPLAYImage_on;
    QPixmap      ButtonPLAYImage_off;

    QHBoxLayout          *mainLayout;
    QHBoxLayout          *BatteryLayout;
    QHBoxLayout          *RPMBarLayout;
    QVBoxLayout          *RightPaneLayout;
    QVBoxLayout          *MainCenterPanelLayout;
    QVBoxLayout          *InfoPanelLayout;
    QVBoxLayout          *RPMInfoLayout;
    QHBoxLayout          *MidCenterLayout;
    QWidget              *MidCenterWidget;
    QWidget              *RPMInfoWidget;
    QWidget              *InfoPanelWidget;
    QWidget              *MainCenterPanelWidget;
    QWidget              *centralWidget;
    QWidget              *RightPanelWidget;
    QWidget              *BatteryWidget;
    QWidget              *RPMBarWidget;
    QGridLayout          *ScreenParameterLayout;
    QGridLayout          *InfoLayout;
    QProgressBar         *Battery;
    QProgressBar         *Fuel;
    QProgressBar         *RPMBar;
    SlidingStackedWidget *SlidingStacked;

};

#endif // MAINWINDOW_H
