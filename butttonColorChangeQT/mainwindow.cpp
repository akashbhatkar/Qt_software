#include "mainwindow.h"
#include "ui_mainwindow.h"
#include<QTimer>
#include<QDebug>
#include<QPushButton>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);


    QTimer *time=new QTimer(this);
    connect(time,SIGNAL(timeout()),this,SLOT(myslot()) );
    time->start(2000);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::myslot()
{
    qDebug()<<"triggered";
}

