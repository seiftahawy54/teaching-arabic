import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

App {
  NavigationStack {

        Page {
          id: page
          title: "تعلم الحروف العربية "
          Image {
              anchors.fill: parent
              id: a
              source: "../assets/bg4.jpg"
          }
          AppButton {
              text: "أبدأ التعلم "
              x:700
              y:350

            flat: false
            fontBold: true
            textSize: 40
            borderColor: "light blue"
            borderWidth: 5
            backgroundColorPressed: "red"
            onClicked: {
              page.navigationStack.push(subPage)
            }

          }
          AppButton {
              x:400
              y:350
            text: "أبدأ تمارين "

            flat: false
            fontBold: true
            textSize: 40
            borderColor: "light blue"
            borderWidth: 5
            backgroundColorPressed: "red"
            onClicked: { page.navigationStack.push(ex)
            }

          }


        }
      }
  Component {
    id: ex
    Page {
        title: "التمارين"
        id:sup

        Image {
            anchors.fill: parent
            id: a
            source: "../assets/bg333.jpg"
        }}}
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
        text: "أ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:5
       onClicked: sout.play()
    }
   AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(third,arnob.play())//هنا مش صوت البطة
            }
            x:0
            y:80
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
        onClicked: bata.play()
       }
   AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(fou,bata1.play())          }
            x:200
            y:80
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
        onClicked: tofa7a.play()
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
        text:"ث"
        flat:false
        x:600
        y:5
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
        onClicked: sna.play()
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
        text:"ج"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:800
        y:5
        fontBold: true
        textSize: 40
         onClicked: ca.play()
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
        text:"ح"
        flat:false
        x:1000
        y:5
        borderColor: "light blue"
        backgroundColorPressed: "red"
        borderWidth: 5
        fontBold: true
        textSize: 40
        onClicked: ho.play()
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
        text:"خ"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:1200
        y:5
        fontBold: true
        textSize: 40
        onClicked: she.play()
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
         onClicked: da.play()
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
        text: "ذ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:170
           onClicked: zn.play()
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
        text: "ر"
        flat: false
        fontBold: true
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        textSize: 40
        x:200
        y:170
         onClicked: re.play()
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
        text:"ز"
        flat:false
        x:400
        y:170
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
         onClicked: za.play()
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
        text:"س"
        flat:false
        x:600
        y:170
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        fontBold: true
        textSize: 40
        onClicked: sen.play()
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
        text:"ش"
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:800
        y:170
        fontBold: true
        textSize: 40
        onClicked: shee.play()
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
        text:"ص"
        flat:false
        x:1000
        y:170
        borderColor: "light blue"
        backgroundColorPressed: "red"
        borderWidth: 5
        fontBold: true
        textSize: 40
         onClicked: sak.play()
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
        text:"ض"

        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        flat:false
        x:1200
        y:170
        fontBold: true
        textSize: 40
         onClicked: daa.play()
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
         onClicked: ta.play()
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
        text: "ظ"
        flat: false
        fontBold: true
        textSize: 40
        borderColor: "light blue"
        borderWidth: 5
        backgroundColorPressed: "red"
        x:0
        y:335
 onClicked: zaa.play()    }
   AppButton{
            text:"مثال"
            flat:false
            onClicked :{pagge.navigationStack.push(nth,zrf.play())//هنا مش صوت البطة
            }
            x:0
            y:410
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
            y:335
            onClicked: ein.play()
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
           text:"غ"
           flat:false
           x:400
           y:335
           borderColor: "light blue"
           borderWidth: 5
           backgroundColorPressed: "red"
           fontBold: true
           textSize: 40
             onClicked: gh.play()
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
               text:"ف"
               flat:false
               x:600
               y:335
               borderColor: "light blue"
               borderWidth: 5
               backgroundColorPressed: "red"
               fontBold: true
               textSize: 40
               onClicked: f.play()

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
                   text:"ق"
                   borderColor: "light blue"
                   borderWidth: 5
                   backgroundColorPressed: "red"
                   flat:false
                   x:800
                   y:335
                   fontBold: true
                   textSize: 40
                   onClicked: qa.play()

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
                      text:"ك"
                      flat:false
                      x:1000
                      y:335
                      borderColor: "light blue"
                      backgroundColorPressed: "red"
                      borderWidth: 5
                      fontBold: true
                      textSize: 40
                      onClicked: kaf.play()

                  }

                  AppButton{
                      text:"مثال"
                      flat:false
                      onClicked :{pagge.navigationStack.push(tw4,ktab.play())
                      }
                      x:1000
                      y:410
                  } AppButton{
                      text:"ل"

                      borderColor: "light blue"
                      borderWidth: 5
                      backgroundColorPressed: "red"
                      flat:false
                      x:1200
                      y:335
                      fontBold: true
                      textSize: 40
                      onClicked: lam.play()

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

                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"

                         flat:false
                         x:1400
                         y:335
                         fontBold: true
                         textSize: 40
                         onClicked: m.play()

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
                         text: "ن"
                         flat: false
                         fontBold: true
                         textSize: 40
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         x:0
                         y:500
                         onClicked: n.play()
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
                         text: "ه"
                         flat: false
                         fontBold: true
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         textSize: 40
                         x:200
                         y:500
                         onClicked: h.play()

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
                         text:"و"
                         flat:false
                         x:400
                         y:500
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         fontBold: true
                         textSize: 40
                         onClicked: w.play()

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
                         text:"ي"
                         flat:false
                         x:600
                         y:500
                         borderColor: "light blue"
                         borderWidth: 5
                         backgroundColorPressed: "red"
                         fontBold: true
                         textSize: 40
                         onClicked:yo.play()

                     }

                     AppButton{
                         text:"مثال"
                         flat:false
                         onClicked :{pagge.navigationStack.push(tw10,yma.play())
                         }
                         x:600
                         y:575
                     }
                 }}



  Component{
      id:third
      Page {
          id:aaa
          title: "أرنب"

  Image {
      anchors.fill: parent
      id: o
      source: "../assets/arnb.png"
  }}
}

  Component{
      id:fou
      Page {
          title: "بطة"
  Image {
      anchors.fill: parent
      source: "../assets/duc.png"

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
  source: "../assets/Recording (12).wav"
  }
  SoundEffect{
      id:arnob
      source: "../assets/ارنب.wav"
  }

  SoundEffect{
      id:bata
      source: "../assets/ب.wav"
  }
  SoundEffect{
      id :bata1
      source: "../assets/بطة.wav"
  }
  SoundEffect{
      id:tofa7a
      source: "../assets/ت.wav"
  }

  SoundEffect{
      id:tofa7a1
      source: "../assets/تفاحة.wav"
  }
  SoundEffect{
      id:sna
      source: "../assets/ث.wav"
  }
  SoundEffect{
      id:snake
      source: "../assets/ثعبان.wav"
  }
  SoundEffect{
      id:ca
      source: "../assets/ج.wav"
  }
  SoundEffect{
      id:camel
      source: "../assets/جمل.wav"
  }
  SoundEffect{
      id:ho
      source: "../assets/ح.wav"
  }
  SoundEffect{
      id:horse
      source: "../assets/حصان.wav"
  }
  SoundEffect{
      id:she
      source: "../assets/خ.wav"
  }
  SoundEffect{
      id:sheep
      source: "../assets/خروف.wav"
  }
  SoundEffect{
      id:da
      source: "../assets/د.wav"
  }
  SoundEffect{
      id:dob
      source: "../assets/دجاجة.wav"
  }
  SoundEffect{
      id:zn
      source: "../assets/ذال.wav"
  }
  SoundEffect{
      id:wolf
      source: "../assets/ذئب.wav"
  }
  SoundEffect{
      id:re
      source: "../assets/ر.wav"
  }
  SoundEffect{
      id:roman
      source:"../assets/رمان.wav"
  }
  SoundEffect{
      id:za
      source: "../assets/ز.wav"
  }
  SoundEffect{
      id:girraf
      source: "../assets/زرافة.wav"
  }
  SoundEffect{
      id:sen
      source: "../assets/س.wav"
  }
  SoundEffect{
      id:fish
      source: "../assets/سمكة.wav"
  }
  SoundEffect{
      id:shee
      source: "../assets/ش.wav"
  }
  SoundEffect{
      id:sun
      source: "../assets/شمس.wav"
  }
  SoundEffect{
      id:sak
      source: "../assets/ص.wav"
  }
  SoundEffect{
      id:eagle
      source: "../assets/صقر.wav"
  }
  SoundEffect{
      id:daa
      source: "../assets/ض.wav"
  }
  SoundEffect{
      id:doo
      source: "../assets/ضوء.wav"
  }
  SoundEffect{
      id:ta
      source: "../assets/ط.wav"
  }
  SoundEffect{
      id:plane
      source: "../assets/طائرة.wav"
  }
  SoundEffect{
      id:zaa
      source: "../assets/ظ.wav"
  }
  SoundEffect{
      id:zrf
      source: "../assets/ظرف.wav"
  }
  SoundEffect{
      id:ein
      source: "../assets/ع.wav"
  }
  SoundEffect{
      id:einn
      source: "../assets/ع.wav"
  }
  SoundEffect{
      id:gh
      source: "../assets/غ.wav"
  }
  SoundEffect{
      id:gho
      source: "../assets/غراب.wav"
  }
  SoundEffect{
      id:f
      source: "../assets/ف.wav"
  }
  SoundEffect{
      id:fil
      source: "../assets/فيل.wav"
  }
  SoundEffect{
      id:qa
      source: "../assets/ق.wav"
  }
  SoundEffect{
      id:qlm
      source: "../assets/قلم.wav"}

  SoundEffect{
      id:kaf
      source: "../assets/ك.wav"
  }
  SoundEffect{
      id:ktab
      source: "../assets/كتاب.wav"
  }
  SoundEffect{
      id:lam
      source: "../assets/ل.wav"
  }
  SoundEffect{
      id:limon
      source: "../assets/ليمون.wav"
  }
  SoundEffect{
      id:m
      source: "../assets/ميم.wav"
  }
  SoundEffect{
      id:mirror
      source: "../assets/مرأة.wav"
  }
  SoundEffect{
      id:n
      source: "../assets/ن.wav"
  }
  SoundEffect{
      id:nsr
      source: "../assets/نسر.wav"
  }
  SoundEffect{
      id:h
      source: "../assets/ه.wav"
  }
  SoundEffect{
      id:hrm
      source: "../assets/هرم.wav"
  }
  SoundEffect{
      id:w
      source: "../assets/و.wav"
  }
  SoundEffect{
      id:wrda
      source: "../assets/وردة.wav"
  }
  SoundEffect{
      id:yo
      source: "../assets/ي.wav"
  }
  SoundEffect{
      id:yma
      source: "../assets/يمامة.wav"}
}
