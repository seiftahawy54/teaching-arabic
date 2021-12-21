import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
App {


    // You can try different navigation modes by uncommenting the lines below
    // By default, the mode is chosen depending on the platform. Tabs on iOS, drawer on Android
    //navigationMode: navigationModeDrawer
    //navigationMode: navigationModeTabs


      NavigationStack {

        Page {
          id: page
          title: "لعبة الحروف"
          Image {
              anchors.fill: parent
              id: a
              source: "../background game.png"
          }
          AppButton {
            anchors.centerIn: parent
            text: "أبدأ اللعبة"
            onClicked: {
              page.navigationStack.push(subPage)
            }

          }
        }
      }

  Component {
    id: subPage
    Page {
        title: "الحروف"
        id:pagge
     // title: "Sub Page"
        Image {
            anchors.fill: parent
            id: a
            source: "../background game.png"
        }
    AppButton{
        text: "أ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:5
        //anchors.fill: parent
    }
    AppButton{
            text: "استماع"
            flat: false
            x:0
            y:80
            onClicked: sout.play()
            }AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(third,arnob.play())//هنا مش صوت البطة
            }
            x:0
            y:150
        }

    AppButton{
        text: "ب"
        flat: false
        fontBold: true
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        textSize: 40
        x:200
        y:5

       }
    AppButton{
            text: "استماع"
            flat: false
            x:200
            y:80
            onClicked: bata.play()
            }AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(fou,bata1.play())//هنا مش صوت البطة
            }
            x:200
            y:150
        }


    AppButton{
        text:"ت"
        flat:false
        x:400
        y:5
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:400
            y:80
            onClicked: tofa7a.play()
            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(fi,tofa7a1.play())
        }
        x:400
        y:150
    }
    AppButton{
        text:"ث"
        flat:false
        x:600
        y:5
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:600
            y:80
            onClicked: sna.play()

            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(si,snake.play())
        }
        x:600
        y:150
    }
    AppButton{
        text:"ج"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:800
        y:5
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:800
            y:80
            onClicked: ca.play()

            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(se,camel.play())
        }
        x:800
        y:150
    }
    AppButton{
        text:"ح"
        flat:false
        x:1000
        y:5
        borderColor: "light blue"
        backgroundColorPressed: "red"
        borderWidth: 5
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:1000
            y:80
            onClicked: ho.play()
            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(ei,horse.play())
        }
        x:1000
        y:150
    }
    AppButton{
        text:"خ"
       // backgroundColor: "brown"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:1200
        y:5
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:1200
            y:80
            onClicked: she.play()
            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(ni,sheep.play())
        }
        x:1200
        y:150
    }
    AppButton{
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
    }
    AppButton{

            text: "استماع"
            flat: false
            x:1400
            y:80
            onClicked: da.play()

            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(te,dob.play())
        }
        x:1400
        y:150
    }
    AppButton{
        text: "ذ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:250
        //anchors.fill: parent
    }
    AppButton{
            text: "استماع"
            flat: false
            x:0
            y:325
            onClicked: zn.play()
            }AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(el,wolf.play())//هنا مش صوت البطة
            }
            x:0
            y:395
        }
    AppButton{
        text: "ر"
        flat: false
        fontBold: true
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        textSize: 40
        x:200
        y:250
       }
    AppButton{
            text: "استماع"
            flat: false
            x:200
            y:325
            onClicked: re.play()
            }AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(twe,roman.play())//هنا مش صوت البطة
        }
        x:200
        y:395
    }
    AppButton{
        text:"ز"
        flat:false
        x:400
        y:250
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:400
            y:325
            onClicked: za.play()
            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(thi,girraf.play())
        }
        x:400
        y:395
    }
    AppButton{
        text:"س"
        flat:false
        x:600
        y:250
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:600
            y:325
            onClicked: sen.play()

            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(foo,fish.play())
        }
        x:600
        y:395
    }
    AppButton{
        text:"ش"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:800
        y:250
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:800
            y:325
            onClicked: shee.play()

            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(fif,sun.play())
        }
        x:800
        y:395
    }
    AppButton{
        text:"ص"
        flat:false
        x:1000
        y:250
        borderColor: "light blue"
        backgroundColorPressed: "red"
        borderWidth: 5
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:1000
            y:325
            onClicked: sak.play()
            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(six,eagle.play())
        }
        x:1000
        y:395
    }
    AppButton{
        text:"ض"
       // backgroundColor: "brown"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:1200
        y:250
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:1200
            y:325
            onClicked: daa.play()
            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(seve,doo.play())
        }
        x:1200
        y:395
    }
    AppButton{
        text:"ط"
        //backgroundColor: "red"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"

        flat:false
        x:1400
        y:250
        fontBold: true
        textSize: 40
    }
    AppButton{

            text: "استماع"
            flat: false
            x:1400
            y:325
            onClicked: ta.play()

            }
    AppButton{
        text:"مثال"
        flat:false
        onClicked :{pagge.navigationStack.push(eig,plane.play())
        }
        x:1400
        y:395
    }
    AppButton{
        text: "ظ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:500
        //anchors.fill: parent
    }
    AppButton{
            text: "استماع"
            flat: false
            x:0
            y:575
            onClicked: zaa.play()
            }AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(nth,zrf.play())//هنا مش صوت البطة
            }
            x:0
            y:645
        }
    AppButton{
            text: "ع"
            flat: false
            fontBold: true
            borderColor: "light blue"
            borderWidth: 5
            backgroundColorPressed: "red"
            textSize: 40
            x:200
            y:500
           }
        AppButton{
                text: "استماع"
                flat: false
                x:200
                y:575
                onClicked: ein.play()
                }AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(twn,einn.play())//هنا مش صوت البطة
            }
            x:200
            y:645
    }
    AppButton{
           text:"غ"
           flat:false
           x:400
           y:500
           borderColor: "light blue"
           borderWidth: 5
           backgroundColorPressed: "red"
           fontBold: true
           textSize: 40
       }
       AppButton{

               text: "استماع"
               flat: false
               x:400
               y:575
               onClicked: gh.play()
               }
       AppButton{
           text:"مثال"
           flat:false
           onClicked :{pagge.navigationStack.push(tw1,gho.play())
           }
           x:400
           y:645
      }
       AppButton{
               text:"ف"
               flat:false
               x:600
               y:500
               borderColor: "light blue"
               borderWidth: 5
               backgroundColorPressed: "red"
               fontBold: true
               textSize: 40
           }
           AppButton{

                   text: "استماع"
                   flat: false
                   x:600
                   y:575
                   onClicked: f.play()

                   }
           AppButton{
               text:"مثال"
               flat:false
               onClicked :{pagge.navigationStack.push(tw2,fil.play())
               }
               x:600
               y:645
           }
           AppButton{
                   text:"ق"
                   borderColor: "light blue"
                   borderWidth: 5
                   backgroundColorPressed: "red"
                   flat:false
                   x:800
                   y:500
                   fontBold: true
                   textSize: 40
               }
               AppButton{

                       text: "استماع"
                       flat: false
                       x:800
                       y:575
                       onClicked: qa.play()

                       }
               AppButton{
                   text:"مثال"
                   flat:false
                   onClicked :{pagge.navigationStack.push(tw3,qlm.play())
                   }
                   x:800
                   y:645
               }
               AppButton{
                      text:"ك"
                      flat:false
                      x:1000
                      y:500
                      borderColor: "light blue"
                      backgroundColorPressed: "red"
                      borderWidth: 5
                      fontBold: true
                      textSize: 40
                  }
                  AppButton{

                          text: "استماع"
                          flat: false
                          x:1000
                          y:575
                          onClicked: kaf.play()
                          }
                  AppButton{
                      text:"مثال"
                      flat:false
                      onClicked :{pagge.navigationStack.push(tw4,ktab.play())
                      }
                      x:1000
                      y:645
                  } AppButton{
                      text:"ل"
                     // backgroundColor: "brown"
                      borderColor: "light blue"
                      borderWidth: 5
                      backgroundColorPressed: "red"
                      flat:false
                      x:1200
                      y:500
                      fontBold: true
                      textSize: 40
                  }
                  AppButton{

                          text: "استماع"
                          flat: false
                          x:1200
                          y:575
                          onClicked: lam.play()
                          }
                  AppButton{
                      text:"مثال"
                      flat:false
                      onClicked :{pagge.navigationStack.push(tw5,limon.play())
                      }
                      x:1200
                      y:645
                  }
                  AppButton{
                         text:"م"
                         //backgroundColor: "red"
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"

                         flat:false
                         x:1400
                         y:500
                         fontBold: true
                         textSize: 40
                     }
                     AppButton{

                             text: "استماع"
                             flat: false
                             x:1400
                             y:575
                             onClicked: m.play()

                             }
                     AppButton{
                         text:"مثال"
                         flat:false
                         onClicked :{pagge.navigationStack.push(tw6,mirror.play())
                         }
                         x:1400
                         y:645
                     }
                     AppButton{
                         text: " أضغط لباقي الحروف"
                         flat: false
                         backgroundColor: "light green"
                         fontBold: true
                         textSize: 40
                         textColor: "black"
                         borderColor: "green"
                         borderWidth: 15
                         backgroundColorPressed: "red"
                         x:700
                         y:760
                         onClicked: {pagge.navigationStack.push(ppage)

                         }

                         //anchors.fill: parent
                     }}}

    Component{
      id:ppage
      Page{
          id:ppp
          title:"باقي الحروف"
          Image {
              id: pp
              anchors.fill: parent
              source: "../background game.png"
          }
      //تكملة الحرووف
      AppButton{
          text: "ن"
          flat: false
          fontBold: true
          textSize: 40
          borderColor: "light blue"
          borderWidth: 5
          backgroundColorPressed: "red"
          x:0
          y:5
          //anchors.fill: parent
      }
      AppButton{
              text: "استماع"
              flat: false
              x:0
              y:80
              onClicked: n.play()
              }AppButton{
              text:"مثال"
              flat:false
              onClicked :{ppp.navigationStack.push(tw7,nsr.play())//هنا مش صوت البطة
              }
              x:0
              y:150
          }

      AppButton{
          text: "ه"
          flat: false
          fontBold: true
          borderColor: "light blue"
          borderWidth: 5
          backgroundColorPressed: "red"
          textSize: 40
          x:200
          y:5

         }
      AppButton{
              text: "استماع"
              flat: false
              x:200
              y:80
              onClicked: h.play()
              }AppButton{
              text:"مثال"
              flat:false
              onClicked :{ppp.navigationStack.push(tw8,hrm.play())//هنا مش صوت البطة
              }
              x:200
              y:150
          }


      AppButton{
          text:"و"
          flat:false
          x:400
          y:5
          borderColor: "light blue"
          borderWidth: 5
          backgroundColorPressed: "red"
          fontBold: true
          textSize: 40
      }
      AppButton{

              text: "استماع"
              flat: false
              x:400
              y:80
              onClicked: w.play()
              }
      AppButton{
          text:"مثال"
          flat:false
          onClicked :{ppp.navigationStack.push(tw9,wrda.play())
          }
          x:400
          y:150
      }
      AppButton{
          text:"ي"
          flat:false
          x:600
          y:5
          borderColor: "light blue"
          borderWidth: 5
          backgroundColorPressed: "red"
          fontBold: true
          textSize: 40
      }
      AppButton{

              text: "استماع"
              flat: false
              x:600
              y:80
              onClicked:yo.play()

              }
      AppButton{
          text:"مثال"
          flat:false
          onClicked :{ppp.navigationStack.push(tw10,yma.play())
          }
          x:600
          y:150
      }}}



  Component{
      id:third
      Page {
          id:aaa
          title: "أرنب"

  Image {
      anchors.fill: parent
      id: o
      source: "../arnb.png"
  }}
}
//NavigationStack{
  Component{
      id:fou
      Page {
          title: "بطة"
  Image {
      anchors.fill: parent
      source: "../pngaaa.com-1240252.png"

 } }}
  Component{
      id:fi
      Page {
          id:oo
          title: "تفاحة"

  Image {
      anchors.fill: parent
      id: ooo
      source: "../apple.png"
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
      source: "../snake.png"
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
      source: "../camel.png"
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
      source: "../horse.png"
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
      source: "../sheep.png"
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
      source: "../دجاجة.png"
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
      source: "../ذئب.png"
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
      source: "../رمان.png"
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
      source: "../زرافة.png"
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
      source: "../سمكة.png"
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
      source: "../شمس.png"
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
      source: "../صقر.png"
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
      source: "../ضوء.png"
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
      source: "../طائرة.png"
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
      source: "../ظرف.png"
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
      source: "../عين.png"
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
      source: "../غراب.png"
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
      source: "../فيل.png"
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
      source: "../قلم.png"
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
      source: "../كتاب.png"
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
      source: "../ليمون.png"
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
      source: "../مرأة.png"
  }}}
      Component{
          id:tw7
          Page {
              id:oo
              title: "نسر"
      Image {
          anchors.fill: parent
          id: ooo
          source: "../نسر.png"
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
          source: "../هرم.png"
      }}}
      Component{
          id:tw9
          Page {
              id:oo
              title: "وردة"
      Image {
          anchors.fill: parent
          id: ooo
          source: "../وردة.png"
      }}}
      Component{
          id:tw10
          Page {
              id:oo
              title: "يمامة"
      Image {
          anchors.fill: parent
          id: ooo
          source: "../يمامة.png"
      }}}

  SoundEffect{
  id:sout
  source: "../Recording (12).wav"
  }
  SoundEffect{
      id:arnob
      source: "../ارنب.wav"
  }

  SoundEffect{
      id:bata
      source: "../ب.wav"
  }
  SoundEffect{
      id :bata1
      source: "../بطة.wav"
  }
  SoundEffect{
      id:tofa7a
      source: "../ت.wav"
  }

  SoundEffect{
      id:tofa7a1
      source: "../تفاحة.wav"
  }
  SoundEffect{
      id:sna
      source: "../ث.wav"
  }
  SoundEffect{
      id:snake
      source: "../ثعبان.wav"
  }
  SoundEffect{
      id:ca
      source: "../ج.wav"
  }
  SoundEffect{
      id:camel
      source: "../جمل.wav"
  }
  SoundEffect{
      id:ho
      source: "../ح.wav"
  }
  SoundEffect{
      id:horse
      source: "../حصان.wav"
  }
  SoundEffect{
      id:she
      source: "../خ.wav"
  }
  SoundEffect{
      id:sheep
      source: "../خروف.wav"
  }
  SoundEffect{
      id:da
      source: "../د.wav"
  }
  SoundEffect{
      id:dob
      source: "../دجاجة.wav"
  }
  SoundEffect{
      id:zn
      source: "../ذال.wav"
  }
  SoundEffect{
      id:wolf
      source: "../ذئب.wav"
  }
  SoundEffect{
      id:re
      source: "../ر.wav"
  }
  SoundEffect{
      id:roman
      source:"../رمان.wav"
  }
  SoundEffect{
      id:za
      source: "../ز.wav"
  }
  SoundEffect{
      id:girraf
      source: "../زرافة.wav"
  }
  SoundEffect{
      id:sen
      source: "../س.wav"
  }
  SoundEffect{
      id:fish
      source: "../سمكة.wav"
  }
  SoundEffect{
      id:shee
      source: "../ش.wav"
  }
  SoundEffect{
      id:sun
      source: "../شمس.wav"
  }
  SoundEffect{
      id:sak
      source: "../ص.wav"
  }
  SoundEffect{
      id:eagle
      source: "../صقر.wav"
  }
  SoundEffect{
      id:daa
      source: "../ض.wav"
  }
  SoundEffect{
      id:doo
      source: "../ضوء.wav"
  }
  SoundEffect{
      id:ta
      source: "../ط.wav"
  }
  SoundEffect{
      id:plane
      source: "../طائرة.wav"
  }
  SoundEffect{
      id:zaa
      source: "../ظ.wav"
  }
  SoundEffect{
      id:zrf
      source: "../ظرف.wav"
  }
  SoundEffect{
      id:ein
      source: "../ع.wav"
  }
  SoundEffect{
      id:einn
      source: "../ع.wav"
  }
  SoundEffect{
      id:gh
      source: "../غ.wav"
  }
  SoundEffect{
      id:gho
      source: "../غراب.wav"
  }
  SoundEffect{
      id:f
      source: "../ف.wav"
  }
  SoundEffect{
      id:fil
      source: "../فيل.wav"
  }
  SoundEffect{
      id:qa
      source: "../ق.wav"
  }
  SoundEffect{
      id:qlm
      source: "../قلم.wav"
  }

  SoundEffect{
      id:kaf
      source: "../ك.wav"
  }
  SoundEffect{
      id:ktab
      source: "../كتاب.wav"
  }
  SoundEffect{
      id:lam
      source: "../ل.wav"
  }
  SoundEffect{
      id:limon
      source: "../ليمون.wav"
  }
  SoundEffect{
      id:m
      source: "../ميم.wav"
  }
  SoundEffect{
      id:mirror
      source: "../مرأة.wav"
  }
  SoundEffect{
      id:n
      source: "../ن.wav"
  }
  SoundEffect{
      id:nsr
      source: "../نسر.wav"
  }
  SoundEffect{
      id:h
      source: "../ه.wav"
  }
  SoundEffect{
      id:hrm
      source: "../هرم.wav"
  }
  SoundEffect{
      id:w
      source: "../و.wav"
  }
  SoundEffect{
      id:wrda
      source: "../وردة.wav"
  }
  SoundEffect{
      id:yo
      source: "../ي.wav"
  }
  SoundEffect{
      id:yma
      source: "../يمامة.wav"
  }

}
