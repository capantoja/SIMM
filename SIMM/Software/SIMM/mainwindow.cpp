/*****************************************************************/
/*                 ___  __ _   __ _   __                         */
/*                ,' _/ / // \,' // \,' /                        */
/*               _\ `. / // \,' // \,' /                         */
/*              /___,'/_//_/ /_//_/ /_/                          */
/*                                                               */
/*  Sistema de informacion multimedia para motocicletas V1.0     */
/*  Cesar A. Pantoja       capantojar@unal.edu.co                */
/*****************************************************************/

#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtCore>
#include <QtGui>
#include <string.h>
#include <fstream>
#include <map>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <sstream>
#include <QPixmap>
#include <QIcon>
#include <QWSServer>
#include <sys/time.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <QDebug>
#include <QList>
#include <QFileSystemModel>
#include "SlidingStackedWidget.h"

using namespace std;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    AnimTime = 0;
    GuiButtons();
    Screens();
    CreateSlidingStackedWidget();
    ScreenLayout();
}

MainWindow::~MainWindow()
{

}

//Establece el color de los botones cuando no estan activos
void MainWindow::ButtonsOff(){
    ButtonUP->setIcon(ButtonUP_off);
    ButtonDOWN->setIcon(ButtonDOWN_off);
    ButtonREPR->setIcon(ButtonREPR_off);
    ButtonPLAY->setIcon(ButtonPLAY_off);
}

//Se crean los botones para control y navegacion de la interfaz
void MainWindow::GuiButtons() {
//Boton UP
    ButtonUP          = new QPushButton();
    ButtonUP->setFixedSize( 60,40 );                      //Tamaño del boton
    ButtonUPImage_off = QPixmap(":/images/buttonUP_off.png");
    ButtonUPImage_on  = QPixmap(":/images/buttonUP.png");
    ButtonUP_off      = QIcon(ButtonUPImage_off);
    ButtonUP_on       = QIcon(ButtonUPImage_on);
    ButtonUP->setIcon(ButtonUP_off);
    ButtonUP->setIconSize(ButtonUPImage_off.rect().size());
    connect(ButtonUP,SIGNAL(pressed()),this,SLOT(UpAction()));

//Boton DOWN
    ButtonDOWN         = new QPushButton();
    ButtonDOWN->setFixedSize( 60,40 );                   //Tamaño del boton
    ButtonDOWNImage_off= QPixmap(":/images/buttonDOWN_off.png");
    ButtonDOWNImage_on = QPixmap(":/images/buttonDOWN.png");
    ButtonDOWN_off     = QIcon(ButtonDOWNImage_off);
    ButtonDOWN_on      = QIcon(ButtonDOWNImage_on);
    ButtonDOWN->setIcon(ButtonDOWN_off);
    ButtonDOWN->setIconSize(ButtonDOWNImage_off.rect().size());
    connect(ButtonDOWN,SIGNAL(pressed()),this,SLOT(DownAction()));

//Boton REPRODUCTOR
    ButtonREPR          = new QPushButton();
    ButtonREPR->setFixedSize( 58,44 );                   //Tamaño del boton
    ButtonREPRImage_off = QPixmap(":/images/buttonMUSIC_off.png");
    ButtonREPRImage_on  = QPixmap(":/images/buttonMUSIC.png");
    ButtonREPR_off      = QIcon(ButtonREPRImage_off);
    ButtonREPR_on       = QIcon(ButtonREPRImage_on);
    ButtonREPR->setIcon(ButtonREPR_off);
    ButtonREPR->setIconSize(ButtonREPRImage_off.rect().size());
    connect(ButtonREPR,SIGNAL(pressed()),this,SLOT(ReprAction()));

//Boton PLAY/PAUSE
    ButtonPLAY          = new QPushButton();
    ButtonPLAY->setFixedSize( 66,40 );                    //Tamaño del boton
    ButtonPLAYImage_off = QPixmap(":/images/buttonPLAY_off.png");
    ButtonPLAYImage_on  = QPixmap(":/images/buttonPLAY.png");
    ButtonPLAY_off      = QIcon(ButtonPLAYImage_off);
    ButtonPLAY_on       = QIcon(ButtonPLAYImage_on);
    ButtonPLAY->setIcon(ButtonPLAY_off);
    ButtonPLAY->setIconSize(ButtonPLAYImage_off.rect().size());
    connect(ButtonPLAY,SIGNAL(pressed()),this,SLOT(PlayAction()));
}

//Accion realizada al presionar el boton UP
void MainWindow::UpAction(){
    ButtonsOff();
    ButtonUP->setIcon(ButtonUP_on);
    }

//Accion realizada al presionar el boton DOWN
void MainWindow::DownAction(){
    ButtonsOff();
    ButtonDOWN->setIcon(ButtonDOWN_on);
    }

//Accion realizada al presionar el boton REPRODUCTOR
void MainWindow::ReprAction(){
    ButtonsOff();
    ButtonREPR->setIcon(ButtonREPR_on);
    }

//Accion realizada al presionar el boton PLAY/PAUSE
void MainWindow::PlayAction(){
    ButtonsOff();
    ButtonPLAY->setIcon(ButtonPLAY_on);
    }

void MainWindow::BatteryIndicator(int Charge)
{
//Modifica la apariencia del widget QProgress
     Battery->setValue(Charge);
     QString myStyleSheet = "QProgressBar:horizontal {"
                  "border: 1px solid gray;"
                  "border-radius: 3px;"
                  "background: black;"
                  "padding: 1px;"
                  "}"
                  " QProgressBar::chunk {"\
                  "     background-color: ";
//Cambia de color la barra de Progreso dependiendo del valor de voltaje de la bateria
     if(Charge < 80)
     {
         myStyleSheet.append("rgb(255,0,0);");
     }
         else if((Charge >= 80)&&(Charge < 90))
               {
                 myStyleSheet.append("rgb(255,140,0);");
               }
                   else
                    {
                     myStyleSheet.append("rgb(0,255,0);");
                    }

     myStyleSheet.append("     width: 5px;"\
                         "     margin: 1px;"\
                         " }");


    Battery->setStyleSheet(myStyleSheet);

}

void MainWindow::FuelIndicator(int level)
{
//Modifica la apariencia del widget QProgress
     Fuel->setValue(level);
     QString myStyleSheet2 = "QProgressBar:horizontal {"
                  "border: 1px solid gray;"
                  "border-radius: 3px;"
                  "background: black;"
                  "padding: 1px;"
                  "}"
                  " QProgressBar::chunk {"\
                  "     background-color: ";
//Cambia de color la barra de Progreso dependiendo del nivel de combustible
     if(level < 21)
       {
         myStyleSheet2.append("rgb(255,0,0);");
       }
           else if((20 < level)&&(level < 50))
                 {
                   myStyleSheet2.append("rgb(255,140,0);");
                  }
                    else
                      {
                       myStyleSheet2.append("rgb(0,255,0);");
                      }

          myStyleSheet2.append("     width: 5px;"\
                              "     margin: 1px;"\
                              " }");

    Fuel->setStyleSheet(myStyleSheet2);

}

void MainWindow::RPMIndicator(int RPMValue)
{
//Modifica la apariencia del widget QProgress
     RPMBar->setValue(RPMValue);
     QString myStyleSheet3 = "QProgressBar:horizontal {"
                  "border: 1px black;"
                  "border-radius: 3px;"
                  "background: black;"
                  "padding: 1px;"
                  "}"
                  " QProgressBar::chunk {"\
                  "     background-color: ";

//Cambia de color la barra de Progreso dependiendo del valor de las RPM
     if(80 < RPMValue)
     {
         myStyleSheet3.append("rgb(255,0,0);");
     }
         else if((70 < RPMValue)&&(RPMValue < 79))
               {
                 myStyleSheet3.append("rgb(255,140,0);");
               }
                  else
                    {
                     myStyleSheet3.append("rgb(0,255,0);");
                    }

     myStyleSheet3.append("     width: 5px;"\
                         "     margin: 1px;"\
                         " }");

        RPMBar->setStyleSheet(myStyleSheet3);
}


//Se crean los datos de RPM, velocidad, GPS, Phonon
void MainWindow::Screens() {

}

void MainWindow::CreateSlidingStackedWidget() {
    SlidingStacked = new SlidingStackedWidget(this);
   // SlidingStacked->addWidget(ScreenParameter);
   // SlidingStacked->addWidget(slideWidget4);
   // SlidingStacked->addWidget(slideWidget1);
   // SlidingStacked->addWidget(slideWidget3);
   // SlidingStacked->addWidget(slideWidget5);
    SlidingStacked->setSpeed(AnimTime);

}

//Se crea el fondo del aplicativo y se ubican los widgets creados
void MainWindow::ScreenLayout() {
    AnimTime              = 0;
    centralWidget         = new QWidget(this);
    mainLayout            = new QHBoxLayout();
    MidCenterLayout       = new QHBoxLayout();
    RightPaneLayout       = new QVBoxLayout();
    MainCenterPanelLayout = new QVBoxLayout();
    InfoPanelLayout       = new QVBoxLayout();
    RPMInfoLayout         = new QVBoxLayout();
    MidCenterWidget       = new QWidget();
    RPMInfoWidget         = new QWidget();
    InfoPanelWidget       = new QWidget();
    RightPanelWidget      = new QWidget();
    MainCenterPanelWidget = new QWidget();
    BatteryLayout         = new QHBoxLayout();
    BatteryWidget         = new QWidget();
    ScreenParameterLayout = new QGridLayout();
    ScreenParameter       = new QWidget();
    RPMBarLayout          = new QHBoxLayout();
    RPMBarWidget          = new QWidget();
    InfoLayout            = new QGridLayout();
    InfoWidget            = new QWidget();


//Se crean los paneles
    centralWidget          -> setLayout(mainLayout);
    MainCenterPanelWidget  -> setLayout(MainCenterPanelLayout);
    RightPanelWidget       -> setLayout(RightPaneLayout);
    MidCenterWidget        -> setLayout(MidCenterLayout);
    BatteryWidget          -> setLayout(BatteryLayout);
    ScreenParameter        -> setLayout(ScreenParameterLayout);
    RPMBarWidget           -> setLayout(RPMBarLayout);
    InfoPanelWidget        -> setLayout(InfoPanelLayout);
    InfoWidget             -> setLayout(InfoLayout);
    RPMInfoWidget          -> setLayout(RPMInfoLayout);

//Se establece el tamaño del panel derecho que contiene los botones
    RightPanelWidget->setMinimumWidth(63);
    RightPanelWidget->setMaximumWidth(63);

//Se establece el tamaño del panel que contiene el indicador de la bateria
    BatteryWidget->setMaximumWidth(330);
    BatteryWidget->setMinimumWidth(330);
  //  BatteryWidget->setMaximumHeight(30);
  //  BatteryWidget->setMinimumHeight(30);

//Se establece el tamaño del panel con los indicadores de velocidad y RPM
  //  ScreenParameter->setMaximumWidth(270);
  //  ScreenParameter->setMinimumWidth(270);
    ScreenParameter->setMaximumHeight(120);
    ScreenParameter->setMinimumHeight(120);

 //   InfoWidget->setMaximumWidth(90);
 //   InfoWidget->setMinimumWidth(90);
    InfoWidget->setMaximumHeight(120);
    InfoWidget->setMinimumHeight(120);

/*Ubicacion de los elementos en la pantalla
El orden determina la ubicacion en la pantalla:
Si es QHBox los widgets de encima empujan hacia abajo
Si es QVBox los widgets de encima empujan hacia la derecha */
    mainLayout->addWidget(MainCenterPanelWidget);   //Panel izquierdo
    mainLayout->addWidget(RightPanelWidget);        //Panel de botones lado derecho

    MainCenterPanelLayout->addWidget(RPMBarWidget,0,Qt::AlignBottom);    //arriba
    MainCenterPanelLayout->addWidget(MidCenterWidget,0,Qt::AlignBottom); //mitad
    MainCenterPanelLayout->addWidget(BatteryWidget,0,Qt::AlignBottom);   //abajo

    MidCenterLayout->addWidget(RPMInfoWidget,0,Qt::AlignRight);     //mitad izquierda
    MidCenterLayout->addWidget(InfoPanelWidget,0,Qt::AlignRight);   //mitad derecha


    RPMInfoLayout->addWidget(ScreenParameter,0,Qt::AlignRight);  //Elementos mitad izquierda
    InfoPanelLayout->addWidget(InfoWidget,0,Qt::AlignRight);     //Elementos mitad derecha

//Se establece el fondo para los paneles y los espacios se dejan en cero
  //  MainCenterPanelWidget->setStyleSheet("background-image: url(:/images/Fondo.png)");
    MainCenterPanelWidget->setStyleSheet("background-color: black");
    RightPanelWidget->setStyleSheet("background-color: black");
    mainLayout->setSpacing(0);
    mainLayout->setMargin(0);
    MainCenterPanelLayout->setSpacing(0);
    MainCenterPanelLayout->setMargin(0);
    MidCenterLayout->setSpacing(0);
    MidCenterLayout->setMargin(0);
    RightPaneLayout->setSpacing(0);
    RightPaneLayout->setMargin(0);
    BatteryLayout->setSpacing(0);
    BatteryLayout->setMargin(0);
    RPMBarLayout->setSpacing(0);
    RPMBarLayout->setMargin(0);
    InfoPanelLayout->setSpacing(0);
    InfoPanelLayout->setMargin(0);
    InfoLayout->setSpacing(0);
    InfoLayout->setMargin(0);

//Se crea el indicador de bateria
    Battery = new QProgressBar(this);
    Battery->setTextDirection(QProgressBar::TopToBottom);
    Battery->setOrientation(Qt::Horizontal);
    Battery->setRange(0,100);
    Battery->setTextVisible(false);
    Battery->setFixedSize(105,20);
    BatteryIndicator(100);

//Se adiciona el icono del indicador de nivel de bateria
    QLabel *BatteryIcon =new QLabel;
    BatteryIcon->setPixmap(QPixmap(":/images/battery5.png"));
    BatteryLayout->addWidget(Battery);
    BatteryLayout->addWidget(BatteryIcon);

//Se crea el indicador de combustible
    Fuel = new QProgressBar(this);
    Fuel->setTextDirection(QProgressBar::TopToBottom);
    Fuel->setOrientation(Qt::Horizontal);
    Fuel->setRange(0,100);
    Fuel->setTextVisible(false);
    Fuel->setFixedSize(105,20);
    FuelIndicator(100);

//Se crea el icono para el indicador de combustible
    QLabel *FuelIcon = new QLabel;
    FuelIcon->setPixmap(QPixmap(":/images/FuelIcon1.png"));

//El Widget del combustible se agrega al mismo creado para la bateria
    BatteryLayout->addWidget(Fuel);
    BatteryLayout->addWidget(FuelIcon);

//Indicador de velocidad y RPM
    SpeedLabel  = new QLabel();
    SpeedLabel -> setText("km/h");
    SpeedLabel -> setStyleSheet("color: white;font: 24px");
    Speed       = new QLCDNumber();
    Speed -> setFixedWidth(200);
   // Speed -> setFixedHeight(85);
    Speed -> setStyleSheet("color: white;");
    RPMLabel    = new QLabel();
    RPMLabel -> setText("RPM");
    RPMLabel -> setStyleSheet("color: white;font: 20px");
    RPM         = new QLCDNumber();
    RPM -> setFixedWidth(200);
    RPM -> setFixedHeight(35);
    RPM -> setStyleSheet("color: white;");

    ScreenParameterLayout->addWidget(SpeedLabel,0,1,Qt::AlignBottom);
    ScreenParameterLayout->addWidget(RPMLabel,1,1,Qt::AlignBottom);
    ScreenParameterLayout->addWidget(Speed,0,0);
    ScreenParameterLayout->addWidget(RPM,1,0);
    ScreenParameterLayout->setMargin(0);

//Se crea la barra de revoluciones por minuto
    RPMBar = new QProgressBar(this);
    RPMBar->setTextDirection(QProgressBar::TopToBottom);
    RPMBar->setOrientation(Qt::Horizontal);
    RPMBar->setRange(0,100);
    RPMBar->setTextVisible(false);
    RPMBar->setFixedSize(300,20);
    RPMIndicator(100);
    RPMBarLayout->addWidget(RPMBar);
    RPMBarLayout->setMargin(0);

//Se crean indicadores de direccionales
   LeftIcon  = new QLabel();
   LeftIcon->setPixmap(QPixmap(":/images/direccionalizq.png"));

   RightIcon = new QLabel();
   RightIcon->setPixmap(QPixmap(":/images/direccionalder.png"));

   MessIcon = new QLabel();
   MessIcon->setPixmap(QPixmap(":/images/motorycle3.png"));
   MessLabel  = new QLabel();
   MessLabel -> setText("SIMM");
   MessLabel -> setStyleSheet("color: yellow;font: italic 15px");

//Se crea objetos para info del GPS, Lat:latitud, Lon: longitud
   GPSLatLabel  = new QLabel();
   GPSLatLabel -> setText("Latitude");
   GPSLatLabel -> setStyleSheet("color: white;font: 10px");
   GPSLat       = new QLCDNumber();
  // GPSLat -> setFixedWidth(200);
  //GPSLat -> setFixedHeight(85);
   GPSLat -> setStyleSheet("color: white;");

   GPSLonLabel  = new QLabel();
   GPSLonLabel -> setText("Longitude");
   GPSLonLabel -> setStyleSheet("color: white;font: 10px");
   GPSLon       = new QLCDNumber();
  // GPSLon -> setFixedWidth(200);
  //GPSLon -> setFixedHeight(85);
   GPSLon -> setStyleSheet("color: white;");


   InfoLayout->addWidget(LeftIcon,0,0);
   InfoLayout->addWidget(RightIcon,0,1,Qt::AlignRight);
   InfoLayout->addWidget(GPSLatLabel,1,0);
   InfoLayout->addWidget(GPSLonLabel,2,0);
   InfoLayout->addWidget(GPSLat,1,1);
   InfoLayout->addWidget(GPSLon,2,1);
   InfoLayout->addWidget(MessIcon,3,0);
   InfoLayout->addWidget(MessLabel,3,1,Qt::AlignRight);

//Se adicionan los botones al panel creado
// Estos botones son provisionales y no iran en la version final
    RightPaneLayout->addWidget(ButtonUP,0,Qt::AlignTop);
    RightPaneLayout->addWidget(ButtonDOWN,0,Qt::AlignTop);
    RightPaneLayout->addWidget(ButtonREPR,0,Qt::AlignBottom);
    RightPaneLayout->addWidget(ButtonPLAY,0,Qt::AlignBottom);

    this->setCentralWidget(centralWidget);
}
