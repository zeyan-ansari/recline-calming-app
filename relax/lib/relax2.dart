import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:relax/special.dart';
import 'package:quotes/quotes.dart';

class Relax2 extends StatefulWidget {
  @override
  _Relax2State createState() => _Relax2State();
}

class _Relax2State extends State<Relax2> {

  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  bool isPlaying = false;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }
void initPlayer(){
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);

}



  @override
  Widget build(BuildContext context) {



    return Material(
      child: Stack(
        children: <Widget>[


          Container(decoration: BoxDecoration(

              image:DecorationImage(image: AssetImage("assets/bg.jpg"),
                fit: BoxFit.cover,

              ) ),
            child:
            Stack(
              children: <Widget>[
                Container(margin: EdgeInsets.only(top: 180,left: 10,right: 10),padding:EdgeInsets.all(15),decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                ),
                  child: Text(Quotes.getRandom().getContent(),textAlign: TextAlign.center,style: GoogleFonts.roboto(
                    textStyle: TextStyle(color: Colors.white, letterSpacing: 1,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),),),
                DraggableScrollableSheet(
                  maxChildSize: 0.8,initialChildSize: 0.1,minChildSize: 0.1,
                  builder: (context, scrollController){
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Container(child:
                      BackdropFilter(filter: ImageFilter.blur(sigmaY: 50,sigmaX: 50),
                        child: Container(


                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Container(margin: EdgeInsets.only(top: 20,bottom: 20),

                                    child: Icon(Icons.keyboard_arrow_up,size: 40,color: Colors.white,)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: InkWell(onTap: () => audioCache.play('s1.wav'),onDoubleTap: () => advancedPlayer.pause(),
                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                  child: FaIcon(FontAwesomeIcons.envira,size: 40,color: Colors.white,)),
                                              Container(
                                                child: Text('Muse', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                ))
                                              ),
//
                                            ],
                                          ),
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(onTap: () => audioCache.play('s3.wav'),onDoubleTap: () => advancedPlayer.pause(),
                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: FaIcon(FontAwesomeIcons.water,size: 40,color: Colors.white,)),
                                            Container(
                                                child: Text('Ocean', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                ))
                                            ),

                                          ],
                                        ),

                                      ),
                                    ),
                                  ),





                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: InkWell(onTap: () => audioCache.play('s4.wav'),onDoubleTap: () => advancedPlayer.pause(),
                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: FaIcon(FontAwesomeIcons.cloudShowersHeavy,size: 40,color: Colors.white,)),
                                            Container(
                                                child: Text('Rain', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                ))
                                            ),

                                          ],
                                        ),),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(onTap: () => audioCache.play('s5.wav'),onDoubleTap: () => advancedPlayer.pause(),
                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: FaIcon(FontAwesomeIcons.bolt,size: 40,color: Colors.white,)),
                                            Container(
                                                child: Text('Storm', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                )),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),





                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: InkWell(onTap: () => audioCache.play('s2.wav'),onDoubleTap: () => advancedPlayer.pause(),
                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: FaIcon(FontAwesomeIcons.dove,size: 40,color: Colors.white,)),
                                            Container(
                                                child: Text('Nature', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                ))
                                            ),

                                          ],
                                        ),),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(onTap: () => audioCache.play('s8.wav'),onDoubleTap: () => advancedPlayer.pause(),

                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: FaIcon(FontAwesomeIcons.wind,size: 40,color: Colors.white,)),
                                            Container(
                                                child: Text('Wind', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                ))
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),





                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: InkWell(onTap:(){ Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>Special()),
                                    );},
                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: FaIcon(FontAwesomeIcons.stripeS,size: 40,color: Colors.white,)),
                                            Container(
                                                child: Text('Special', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                ))
                                            ),

                                          ],
                                        ),),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(onTap: () => audioCache.play('s7.wav'),onDoubleTap: () => advancedPlayer.pause(),
                                      child: Container(height: MediaQuery.of(context).size.width*0.5,margin:EdgeInsets.all(10),decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                                      ),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                                child: FaIcon(FontAwesomeIcons.waveSquare,size: 40,color: Colors.white,)),
                                            Container(
                                                child: Text('White\nNoise', style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.w300),
                                                ))
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),





                                ],),

                            ],
                          ),


                        ),),



                      ),
                    );
                  },

                ),

              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(margin: EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                child: Text('Recline.',style: GoogleFonts.pacifico(
                textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 55),
              ),),),


            ],
          ),
        ],
      ),
    );
  }
}



