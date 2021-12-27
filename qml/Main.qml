import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.1

App {

  // Application functionalities
    Timer {
        interval: 1000
        id: pauseMusicTimer
        onTriggered: bgMusic.play()
    }

  FontLoader {
     id: cairoFont
     source: "../assets/fonts/Cairo-Regular.ttf"
  }

  onInitTheme: {
    Theme.normalFont = cairoFont
    Theme.appButton.fontCapitalization = cairoFont
    Theme.boldFont = cairoFont
  }

  NavigationStack {
      BackgroundMusic {
          id: bgMusic
          source: "../assets/background_music/bkm.wav"
          autoLoad: True
      }
        Page {
          id: page
          title: "تعلم الحروف العربية "
          Image {
              fillMode: Image.Stretch
              anchors.fill: parent
              sourceSize.height: parent.height
              sourceSize.width: parent.width
              id: a
              source: "../assets/main_bg.jpg"
          }

          AppButton {
            id: start_learning
            x: (parent.width / 2)
            text: "أبدأ التعلم "
            y:350
            flat: false
            fontBold: true
            textSize: 40
            borderColor: "light blue"
            borderWidth: 5
            backgroundColorPressed: "red"
            radius: 10
            fontFamily: "Cairo"

            onClicked: {
              page.navigationStack.push(subPage)
            }
          }

          AppButton {
            fontFamily: "Cairo"
            id: start_training
            x: (parent.width / 2) - start_learning.width
            y:350
            text: "أبدأ تمارين "

            flat: false
            fontBold: true
            textSize: 40
            borderColor: "light blue"
            radius: 10
            borderWidth: 5
            backgroundColorPressed: "red"
            onClicked: { page.navigationStack.push(ex) }
          }

        }
      }
  Component {
    id: ex
    // Question 1
    Page {
        title: "التمارين"
        id:sup
        Image {
            anchors.fill: parent
            id: a
            source: "../assets/bg333.jpg"
        }
        Column{
            spacing: 5
            anchors.centerIn: parent

        Image {
            id: im
            anchors.horizontalCenter:  parent.horizontalCenter
            source: "../assets/images (1).jpg"
        }
        Text {
            id: text
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
            font.family: cairoFont
            text: "هذه الصوره تبدأ بحرف......"

        }
        AppButton {
            x:400
            y:390
          id: q1_error
          text: " حرف أ"
          flat: false
          fontBold: true
          textSize: 40
          borderColor: "light blue"
          borderWidth: 5
//          backgroundColorPressed: "red"
          onClicked: {
              animationError1.start()
//              waitForAnimation.start()
          }
        }

        AppButton {
            id:qq
            x:90
            y:330

          text: "حرف ب"
          fontFamily: cairoFont
          flat: false
          fontBold: true
          textSize: 40
          borderColor: "light blue"
          borderWidth: 5
          backgroundColorPressed: "green"
          onClicked: {
            animation1.start()
            animation2.start()
            waitForAnimation.start()
          }

        }

        Timer {
            id: waitForAnimation
            interval: 500

        }



        AppButton {
            x:-200
            y:400

          text: "حرف ج"
          id: q2_error
          flat: false
          fontBold: true
          textSize: 40
          borderColor: "light blue"
          borderWidth: 5
          backgroundColorPressed: "red"
          onClicked: {
              animationError2.start()
          }
        }

        // Exercies Animation
        ColorAnimation {
            id: animationError1
            target: q1_error
            properties: "backgroundColor"
            to: "red"
            duration: 100
        }

        ColorAnimation {
            id: animationError2
            target: q2_error
            properties: "backgroundColor"
            to: "red"
            duration: 100
        }

        ColorAnimation {
            id:animation1
            target:qq
            properties: "borderColor"
            to: "green"
            duration: 1000
            onStopped: page.navigationStack.push(ax)
        }

        NumberAnimation {
            id: animation2
            target: qq
            properties: "rotation"
            from: 0
            to: 720
            duration: 500
        }
}

    }
  }
  Component{
  id:ax
  Page {
      // Question 2

      title: "التمارين"
      Image {
          anchors.fill: parent
          id: a
          source: "../assets/bg333.jpg"
      }
        Column{
            spacing: 5
            anchors.centerIn: parent
            Image {
                id: s
                anchors.horizontalCenter:  parent.horizontalCenter
                source: "../assets/aa.jpg"
            }
            Text {
                id: text
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 40
                text: "هذه الصوره تبدأ بحرف......"
            }
            AppButton{
                x:400
                y:390
              text: " حرف أ"
              flat: false
              fontBold: true
              textSize: 40
              borderColor: "light blue"
              borderWidth: 5
              backgroundColorPressed: "red"
              id: q3_error
              onClicked: {
                  animationError2.start()
              }

            }
            AppButton{
                x:90
                y:330
                text: "حرف ب"
               flat: false
               fontBold: true
               textSize: 40
               borderColor: "light blue"
               borderWidth: 5
               backgroundColorPressed: "red"
               id: q4_error
               onClicked: {
                   animationError3.start()
               }
            }
            AppButton{

                x:-200
                y:400

                text: "حرف ج"
                id: correct_2
                flat: false
                fontBold: true
                textSize: 40
                borderColor: "light blue"
                borderWidth: 5
                backgroundColorPressed: "green"
                onClicked: {
                  animation3.start()
                  animation4.start()
                  waitForAnimation.start()
                }


            }

            // Exercies Animation
            // 1
            ColorAnimation {
                id: animationError2
                target: q3_error
                properties: "backgroundColor"
                to: "red"
                duration: 100
            }

            // 2
            ColorAnimation {
                id: animationError3
                target: q4_error
                properties: "backgroundColor"
                to: "red"
                duration: 100
            }

            ColorAnimation {
                id:animation3
                target:correct_2
                properties: "borderColor"
                to: "green"
                duration: 1000
                onStopped: page.navigationStack.push(cx)
            }

            NumberAnimation {
                id: animation4
                target: correct_2
                properties: "rotation"
                from: 0
                to: 720
                duration: 500
            }

        }


  }
  }
  Component{
  id: cx
  // Page 3
  // Question 3
  Page{
      title: "التمارين"
            Image {
                anchors.fill: parent
                id: a
                source: "../assets/bg333.jpg"

  }
      Column{
          spacing: 5
          anchors.centerIn: parent
          Image {
                     id: v
                     anchors.horizontalCenter:  parent.horizontalCenter
                       source: "../assets/pp.png"


      }
          Text {
              id: aa
              anchors.horizontalCenter: parent.horizontalCenter
              font.pixelSize: 40
              text: "هذه الصوره تبدأ بحرف......"
          }
          AppButton{

              x:400
              y:390
              text: " حرف أ"
              flat: false
              fontBold: true
              textSize: 40
              borderColor: "light blue"
              borderWidth: 5
              backgroundColorPressed: "red"
              id: q5_error
              onClicked: {
                  animationError5.start()
              }


          }
          AppButton{

              x:90
              y:330
              text: "حرف ق"

               flat: false
               fontBold: true
               textSize: 40
               borderColor: "light blue"
               id: correct_3
               borderWidth: 5
                backgroundColorPressed: "green"
                onClicked: {
                  animation5.start()
                  animation6.start()
                  waitForAnimation.start()
                }

          }
          AppButton{

              x:-200
              y:400

              text: "حرف ج"
             id: q6_error
             flat: false
             fontBold: true
             textSize: 40
             borderColor: "light blue"
             borderWidth: 5
             backgroundColorPressed: "red"
             onClicked: {
                 animationError6.start()
             }
          }


          // Exercies Animation
          // 1
          ColorAnimation {
              id: animationError5
              target: q5_error
              properties: "backgroundColor"
              to: "red"
              duration: 100
          }

          // 2
          ColorAnimation {
              id: animationError6
              target: q6_error
              properties: "backgroundColor"
              to: "red"
              duration: 100
          }

          ColorAnimation {
              id:animation5
              target:correct_3
              properties: "borderColor"
              to: "green"
              duration: 1000
              onStopped: page.navigationStack.push(wx)
          }

          NumberAnimation {
              id: animation6
              target: correct_3
              properties: "rotation"
              from: 0
              to: 720
              duration: 500
          }
      }
  }
  }
  Component{
      // Page 3
      // Question 3
      id: wx
      Page{
          title: "التمارين"
                Image {
                    anchors.fill: parent
                    id: a
                    source: "../assets/bg333.jpg"

      }
        Column{
            spacing: 5
            anchors.centerIn: parent
            Image
            {
               id: s
               anchors.horizontalCenter:  parent.horizontalCenter
               source: "../assets/ff.jpg"
            }
            Text {
                id: ww
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 40
                text: "هذه الصوره تبدأ بحرف......"
            }
            AppButton
            {
                x:400
                y:390
                text: " حرف س"
                flat: false
                fontBold: true
                textSize: 40
                borderColor: "light blue"
                borderWidth: 5
                backgroundColorPressed: "green"
                id: correct_4
                onClicked: {
                  animation7.start()
                  animation8.start()
                  waitForAnimation.start()
                }
            }
            AppButton{
                x:90
                y:330
                text: "حرف ب"

                flat: false
                fontBold: true
                textSize: 40
                borderColor: "light blue"
                borderWidth: 5
                backgroundColorPressed: "red"
                id: q5_error
                onClicked: {
                    animationError6.start()
                }
            }
            AppButton{
                x:-200
                y:400

                text: "حرف ج"

                flat: false
                fontBold: true
                textSize: 40
                borderColor: "light blue"
                borderWidth: 5
                backgroundColorPressed: "red"
                id: q6_error
                onClicked: {
                    animationError7.start()
                }
            }

            // Exercies Animation
            // 1
            ColorAnimation {
                id: animationError6
                target: q5_error
                properties: "backgroundColor"
                to: "red"
                duration: 100
            }

            // 2
            ColorAnimation {
                id: animationError7
                target: q6_error
                properties: "backgroundColor"
                to: "red"
                duration: 100
            }

            ColorAnimation {
                id:animation7
                target:correct_4
                properties: "borderColor"
                to: "green"
                duration: 1000
                onStopped: page.navigationStack.push(aw)
            }

            NumberAnimation {
                id: animation8
                target: correct_4
                properties: "rotation"
                from: 0
                to: 720
                duration: 500
            }
        }
      }

  }
  Component{
  id:aw
  Page{
      title: "النهايه"
            Image {
                anchors.fill: parent
                id: e
                source:"../assets/rr.jpg"
          }


  }

}



  Component {
    id: subPage
    Page {
        title: "الحروف"
        id:pagge

        Image {
            anchors.fill: parent
            id: a
            source: "../assets/bg4.jpg"
        }
    AppButton{
        fontFamily: "Cairo"
        text: "أ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:5
       onClicked: {
           bgMusic.pause()
           pauseMusicTimer.start()
           sout.play()
       }
    }


   AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(third,arnob.play())
            }
            x:0
            y:80
        }

    AppButton{
        fontFamily: "Cairo"
        text: "ب"
        flat: false
        fontBold: true
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        textSize: 40
        x:200
        y:5
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            bata.play()
        }
       }
   AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(fou,bata1.play())          }
            x:200
            y:80
        }


    AppButton{
        fontFamily: "Cairo"
        text:"ت"
        flat:false
        x:400
        y:5
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            tofa7a.play()
        }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(fi,tofa7a1.play())
        }
        x:400
        y:80
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ث"
        flat:false
        x:600
        y:5
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            sna.play()
        }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(si,snake.play())
        }
        x:600
        y:80
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ج"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:800
        y:5
        fontBold: true
        textSize: 40
         onClicked: {
             bgMusic.pause()
             pauseMusicTimer.start()
             ca.play()}
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(se,camel.play())
        }
        x:800
        y:80
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ح"
        flat:false
        x:1000
        y:5
        borderColor: "light blue"
        backgroundColorPressed: "red"
        borderWidth: 5
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            ho.play()}
    }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(ei,horse.play())
        }
        x:1000
        y:80
    }
    AppButton{
        fontFamily: "Cairo"
        text:"خ"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:1200
        y:5
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            she.play()
        }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(ni,sheep.play())
        }
        x:1200
        y:80
    }
    AppButton{
        fontFamily: "Cairo"
        text:"د"
        //backgroundColor: "red"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"

        flat:false
        x:1400
        y:5
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            da.play()
        }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(te,dob.play())
        }
        x:1400
        y:80
    }
    AppButton{
        fontFamily: "Cairo"
        text: "ذ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:170
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            zn.play()
        }
    }
   AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(el,wolf.play())//هنا مش صوت البطة
            }
            x:0
            y:245
        }
    AppButton{
        fontFamily: "Cairo"
        text: "ر"
        flat: false
        fontBold: true
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        textSize: 40
        x:200
        y:170
        onClicked: {
             bgMusic.pause()
             pauseMusicTimer.start()
             re.play()
         }
       }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(twe,roman.play())//هنا مش صوت البطة
        }
        x:200
        y:245
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ز"
        flat:false
        x:400
        y:170
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
         onClicked: {
             bgMusic.pause()
             pauseMusicTimer.start()
             za.play()
         }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(thi,girraf.play())
        }
        x:400
        y:245
    }
    AppButton{
        fontFamily: "Cairo"
        text:"س"
        flat:false
        x:600
        y:170
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            sen.play()
        }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(foo,fish.play())
        }
        x:600
        y:245
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ش"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:800
        y:170
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            shee.play()
        }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(fif,sun.play())
        }
        x:800
        y:245
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ص"
        flat:false
        x:1000
        y:170
        borderColor: "light blue"
        backgroundColorPressed: "red"
        borderWidth: 5
        fontBold: true
        textSize: 40
        onClicked: {
             bgMusic.pause()
             pauseMusicTimer.start()
             sak.play()
         }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(six,eagle.play())
        }
        x:1000
        y:245
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ض"

        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:1200
        y:170
        fontBold: true
        textSize: 40
        onClicked: {
             bgMusic.pause()
             pauseMusicTimer.start()
             daa.play()
         }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(seve,doo.play())
        }
        x:1200
        y:245
    }
    AppButton{
        fontFamily: "Cairo"
        text:"ط"
        //backgroundColor: "red"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"

        flat:false
        x:1400
        y:170
        fontBold: true
        textSize: 40
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            ta.play()
        }
    }

    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(eig,plane.play())
        }
        x:1400
        y:245
    }
    AppButton{
        fontFamily: "Cairo"
        text: "ظ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:335
        onClicked: {
            bgMusic.pause()
            pauseMusicTimer.start()
            zaa.play()
        }
    }
   AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(nth,zrf.play())//هنا مش صوت البطة
            }
            x:0
            y:410
        }
    AppButton{
        fontFamily: "Cairo"
            text: "ع"
            flat: false
            fontBold: true
            borderColor: "light blue"
            borderWidth: 5
            backgroundColorPressed: "red"
            textSize: 40
            x:200
            y:335
            onClicked: {
                bgMusic.pause()
                pauseMusicTimer.start()
                ein.play()
            }
           }
      AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(twn,einn.play())//هنا مش صوت البطة
            }
            x:200
            y:410
    }
    AppButton{
        fontFamily: "Cairo"
           text:"غ"
           flat:false
           x:400
           y:335
           borderColor: "light blue"
           borderWidth: 5
           backgroundColorPressed: "red"
           fontBold: true
           textSize: 40
            onClicked: {
                 bgMusic.pause()
                 pauseMusicTimer.start()
                 gh.play()
             }
       }

       AppButton{
           text:"مثال"
           flat:false
           onClicked :{pagge.navigationStack.push(tw1,gho.play())
           }
           x:400
           y:410
      }
       AppButton{
           fontFamily: "Cairo"
               text:"ف"
               flat:false
               x:600
               y:335
               borderColor: "light blue"
               borderWidth: 5
               backgroundColorPressed: "red"
               fontBold: true
               textSize: 40
               onClicked: {
                   bgMusic.pause()
                   pauseMusicTimer.start()
                   f.play()
               }

           }

           AppButton{
               text:"مثال"
               flat:false
               onClicked :{pagge.navigationStack.push(tw2,fil.play())
               }
               x:600
               y:410
           }
           AppButton{
               fontFamily: "Cairo"
                   text:"ق"
                   borderColor: "light blue"
                   borderWidth: 5
                   backgroundColorPressed: "red"
                   flat:false
                   x:800
                   y:335
                   fontBold: true
                   textSize: 40
                   onClicked: {
                       bgMusic.pause()
                       pauseMusicTimer.start()
                       qa.play()
                   }

               }

               AppButton{
                   text:"مثال"
                   flat:false
                   onClicked :{pagge.navigationStack.push(tw3,qlm.play())
                   }
                   x:800
                   y:410
               }
               AppButton{
                   fontFamily: "Cairo"
                      text:"ك"
                      flat:false
                      x:1000
                      y:335
                      borderColor: "light blue"
                      backgroundColorPressed: "red"
                      borderWidth: 5
                      fontBold: true
                      textSize: 40
                      onClicked: {
                          bgMusic.pause()
                          pauseMusicTimer.start()
                          kaf.play()
                      }

                  }

                  AppButton{
                      text:"مثال"
                      flat:false
                      onClicked :{pagge.navigationStack.push(tw4,ktab.play())
                      }
                      x:1000
                      y:410
                  } AppButton{
                      fontFamily: "Cairo"
                      text:"ل"

                      borderColor: "light blue"
                      borderWidth: 5
                      backgroundColorPressed: "red"
                      flat:false
                      x:1200
                      y:335
                      fontBold: true
                      textSize: 40
                      onClicked: {
                          bgMusic.pause()
                          pauseMusicTimer.start()
                          lam.play()
                      }

                  }

                  AppButton{
                      text:"مثال"
                      flat:false
                      onClicked :{pagge.navigationStack.push(tw5,limon.play())
                      }
                      x:1200
                      y:410
                  }
                  AppButton{
                         text:"م"
                         fontFamily: "Cairo"

                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"

                         flat:false
                         x:1400
                         y:335
                         fontBold: true
                         textSize: 40
                         onClicked: {
                             bgMusic.pause()
                             pauseMusicTimer.start()
                             m.play()
                         }

                     }

                     AppButton{
                         text:"مثال"
                         flat:false
                         onClicked :{pagge.navigationStack.push(tw6,mirror.play())
                         }
                         x:1400
                         y:410
                     }
                     AppButton{
                         fontFamily: "Cairo"
                         text: "ن"
                         flat: false
                         fontBold: true
                         textSize: 40
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         x:0
                         y:500
                         onClicked: {
                             bgMusic.pause()
                             pauseMusicTimer.start()
                             n.play()
                         }
                     }
                    AppButton{
                             text:"مثال"
                             flat:false
                             onClicked :{pagge.navigationStack.push(tw7,nsr.play())//هنا مش صوت البطة
                             }
                             x:0
                             y:575
                         }

                     AppButton{
                         fontFamily: "Cairo"
                         text: "ه"
                         flat: false
                         fontBold: true
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         textSize: 40
                         x:200
                         y:500
                         onClicked: {
                             bgMusic.pause()
                             pauseMusicTimer.start()
                             h.play()
                         }

                        }
                  AppButton{
                             text:"مثال"
                             flat:false
                             onClicked :{pagge.navigationStack.push(tw8,hrm.play())//هنا مش صوت البطة
                             }
                             x:200
                             y:575
                         }


                     AppButton{
                         fontFamily: "Cairo"
                         text:"و"
                         flat:false
                         x:400
                         y:500
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         fontBold: true
                         textSize: 40
                         onClicked: {
                             bgMusic.pause()
                             pauseMusicTimer.start()
                             w.play()
                         }

                     }

                     AppButton{
                         text:"مثال"
                         flat:false
                         onClicked :{pagge.navigationStack.push(tw9,wrda.play())
                         }
                         x:400
                         y:575
                     }
                     AppButton{
                         fontFamily: "Cairo"
                         text:"ي"
                         flat:false
                         x:600
                         y:500
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         fontBold: true
                         textSize: 40
                         onClicked: {
                             bgMusic.pause()
                             pauseMusicTimer.start()
                             yo.play()
                         }

                     }

                     AppButton{
                         text:"مثال"
                         flat:false
                         onClicked :{pagge.navigationStack.push(tw10,yma.play())
                         }
                         x:600
                         y:575
                     }
                 }
  }



  Component{
      id:third
      Page {
          id:aaa
          title: "أرنب"

          Image {
              anchors.fill: parent
              id: o
              source: "../assets/arnb.png"
            }
   }
}

  Component{
      id:fou
      Page {
          title: "بطة"
  Image {
      anchors.fill: parent
      source: "../assets/duck.png"

 } }}
  Component{
      id:fi
      Page {
          id:oo
          title: "تفاحة"

  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/apple.png"
  }}
}
  Component{
      id:si
      Page {
          id:oo
          title: "ثعبان"

  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/snake.png"
  }}
}
  Component{
      id:se
      Page {
          id:oo
          title: "جمل"

  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/camel.png"
  }}
}
  Component{
      id:ei
      Page {
          id:oo
          title: "حصان"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/horse.png"
  }}
}
  Component{
      id:ni
      Page {
          id:oo
          title: "خروف"

  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/sheep.png"
  }}
}
  Component{
      id:te
      Page {
          id:oo
          title: "دجاجة"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/دجاجة.png"
  }}
}
  Component{
      id:el
      Page {
          id:oo
          title: "ذئب"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/ذئب.png"
  }}
}
  Component{
      id:twe
      Page {
          id:oo
          title: "رمان"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/رمان.png"
  }}
}
  Component{
      id:thi
      Page {
          id:oo
          title: "زرافة"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/زرافة.png"
  }}
}
  Component{
      id:foo
      Page {
          id:oo
          title: "سمكة"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/سمكة.png"
  }}
}
  Component{
      id:fif
      Page {
          id:oo
          title: "شمس"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/شمس.png"
  }}
}
  Component{
      id:six
      Page {
          id:oo
          title: "صقر"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/صقر.png"
  }}
}
  Component{
      id:seve
      Page {
          id:oo
          title: "ضوء"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/ضوء.png"
  }}
}
  Component{
      id:eig
      Page {
          id:oo
          title: "طائرة"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/طائرة.png"
  }}
}

  Component{
      id:nth
      Page {
          id:oo
          title: "ظرف"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/ظرف.png"
  }}
}
  Component{
      id:twn
      Page {
          id:oo
          title: "عين"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/عين.png"
  }}
}
  Component{
      id:tw1
      Page {
          id:oo
          title: "غراب"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/غراب.png"
  }}
}
  Component{
      id:tw2
      Page {
          id:oo
          title: "فيل"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/فيل.png"
  }}
}
  Component{
      id:tw3
      Page {
          id:oo
          title: "قلم"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/قلم.png"
  }}
}
  Component{
      id:tw4
      Page {
          id:oo
          title: "كتاب"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/كتاب.png"
  }}
}
  Component{
      id:tw5
      Page {
          id:oo
          title: "ليمون"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/ليمون.png"
  }}
}
  Component{
      id:tw6
      Page {
          id:oo
          title: "مرأة"
  Image {
      anchors.fill: parent
      id: ooo
      source: "../assets/مرأة.png"
  }}}
  Component{
          id:tw7
          Page {
              id:oo
              title: "نسر"
      Image {
          anchors.fill: parent
          id: ooo
          source: "../assets/نسر.png"
      }}
}
  Component{
          id:tw8
          Page {
              id:oo
              title: "هرم"
      Image {
          anchors.fill: parent
          id: ooo
          source: "../assets/هرم.png"
      }}}
  Component{
          id:tw9
          Page {
              id:oo
              title: "وردة"
      Image {
          anchors.fill: parent
          id: ooo
          source: "../assets/وردة.png"
      }}}
  Component{
          id:tw10
          Page {
              id:oo
              title: "يمامة"
      Image {
          anchors.fill: parent
          id: ooo
          source: "../assets/يمامة.png"
      }}}

  SoundEffect{
  id:sout
  source: "../assets/alphabet/ا.wav"
  }
  SoundEffect{
      id:arnob
      source: "../assets/examples/ارنب.wav"
  }

  SoundEffect{
      id:bata
      source: "../assets/alphabet/ب.wav"
  }
  SoundEffect{
      id :bata1
      source: "../assets/examples/بطة.wav"
  }
  SoundEffect{
      id:tofa7a
      source: "../assets/alphabet/ت.wav"
  }

  SoundEffect{
      id:tofa7a1
      source: "../assets/examples/تفاحة.wav"
  }
  SoundEffect{
      id:sna
      source: "../assets/alphabet/ث.wav"
  }
  SoundEffect{
      id:snake
      source: "../assets/examples/ثعبان.wav"
  }
  SoundEffect{
      id:ca
      source: "../assets/alphabet/ج.wav"
  }
  SoundEffect{
      id:camel
      source: "../assets/examples/جمل.wav"
  }
  SoundEffect{
      id:ho
      source: "../assets/alphabet/ح.wav"
  }
  SoundEffect{
      id:horse
      source: "../assets/examples/حصان.wav"
  }
  SoundEffect{
      id:she
      source: "../assets/alphabet/خ.wav"
  }
  SoundEffect{
      id:sheep
      source: "../assets/examples/خروف.wav"
  }
  SoundEffect{
      id:da
      source: "../assets/alphabet/د.wav"
  }
  SoundEffect{
      id:dob
      source: "../assets/examples/دجاجة.wav"
  }
  SoundEffect{
      id:zn
      source: "../assets/alphabet/ذ.wav"
  }
  SoundEffect{
      id:wolf
      source: "../assets/examples/ذئب.wav"
  }
  SoundEffect{
      id:re
      source: "../assets/alphabet/ر.wav"
  }
  SoundEffect{
      id:roman
      source:"../assets/examples/رمان.wav"
  }
  SoundEffect{
      id:za
      source: "../assets/alphabet/ز.wav"
  }
  SoundEffect{
      id:girraf
      source: "../assets/examples/زرافة.wav"
  }
  SoundEffect{
      id:sen
      source: "../assets/alphabet/س.wav"
  }
  SoundEffect{
      id:fish
      source: "../assets/examples/سمكة.wav"
  }
  SoundEffect{
      id:shee
      source: "../assets/alphabet/ش.wav"
  }
  SoundEffect{
      id:sun
      source: "../assets/examples/شمس.wav"
  }
  SoundEffect{
      id:sak
      source: "../assets/alphabet/ص.wav"
  }
  SoundEffect{
      id:eagle
      source: "../assets/examples/صقر.wav"
  }
  SoundEffect{
      id:daa
      source: "../assets/alphabet/ض.wav"
  }
  SoundEffect{
      id:doo
      source: "../assets/examples/ضوء.wav"
  }
  SoundEffect{
      id:ta
      source: "../assets/alphabet/ط.wav"
  }
  SoundEffect{
      id:plane
      source: "../assets/examples/طائرة.wav"
  }
  SoundEffect{
      id:zaa
      source: "../assets/alphabet/ظ.wav"
  }
  SoundEffect{
      id:zrf
      source: "../assets/examples/ظرف.wav"
  }
  SoundEffect{
      id:ein
      source: "../assets/alphabet/ع.wav"
  }
  SoundEffect{
      id:einn
      source: "../assets/examples/عين.wav"
  }
  SoundEffect{
      id:gh
      source: "../assets/alphabet/غ.wav"
  }
  SoundEffect{
      id:gho
      source: "../assets/examples/غراب.wav"
  }
  SoundEffect{
      id:f
      source: "../assets/alphabet/ف.wav"
  }
  SoundEffect{
      id:fil
      source: "../assets/examples/فيل.wav"
  }
  SoundEffect{
      id:qa
      source: "../assets/alphabet/ق.wav"
  }
  SoundEffect{
      id:qlm
      source: "../assets/examples/قلم.wav"}

  SoundEffect{
      id:kaf
      source: "../assets/alphabet/ك.wav"
  }
  SoundEffect{
      id:ktab
      source: "../assets/examples/كتاب.wav"
  }
  SoundEffect{
      id:lam
      source: "../assets/alphabet/ل.wav"
  }
  SoundEffect{
      id:limon
      source: "../assets/examples/ليمون.wav"
  }
  SoundEffect{
      id:m
      source: "../assets/alphabet/م.wav"
  }
  SoundEffect{
      id:mirror
      source: "../assets/examples/مرآة.wav"
  }
  SoundEffect{
      id:n
      source: "../assets/alphabet/ن.wav"
  }
  SoundEffect{
      id:nsr
      source: "../assets/examples/نسر.wav"
  }
  SoundEffect{
      id:h
      source: "../assets/alphabet/ه.wav"
  }
  SoundEffect{
      id:hrm
      source: "../assets/examples/هرم.wav"
  }
  SoundEffect{
      id:w
      source: "../assets/alphabet/و.wav"
  }
  SoundEffect{
      id:wrda
      source: "../assets/examples/وردة.wav"
  }
  SoundEffect{
      id:yo
      source: "../assets/alphabet/ي.wav"
  }
  SoundEffect{
      id:yma
      source: "../assets/examples/يمامة.wav"}
}

