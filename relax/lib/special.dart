import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audio_cache.dart';



final songs = ['Chris Brown - Next To You','Justin Bieber - Love Me','Justin Bieber - Never Let You Go',
  'Justin Bieber - One Time','Karol G & Bad Bunny - Ahora Me Llama','Phosphorescent - Song for Zula',
  'Sia - Salted Wound', 'Chris Brown - Next To You',
];

final path = ['Chris Brown - Next To You .mp3', 'Justin Bieber - Love Me.mp3','Justin Bieber - Never Let You Go.mp3',
  'Justin Bieber - One Time.mp3','Karol G & Bad Bunny - Ahora Me Llama.mp3',
  'Phosphorescent - Song for Zula.mp3','Sia - Salted Wound.mp3','Titanic - My Heart Will Go On.mp3',
];





class Special extends StatefulWidget {
  @override
  _SpecialState createState() => _SpecialState();
}

class _SpecialState extends State<Special> {
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
    return SafeArea(
      child: Material(
        child: Container(
          decoration: BoxDecoration(

              image:DecorationImage(image: AssetImage("assets/bg.jpg"),
                fit: BoxFit.cover,

              ) ),
          child: SingleChildScrollView(
           child: Container(child: BackdropFilter(filter:ImageFilter.blur(sigmaY: 50,sigmaX: 50),
            child: Column(
              children: <Widget>[
                Container(margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.topCenter,
                  child: Text('Recline.',textAlign: TextAlign.center,style: GoogleFonts.pacifico(
                    textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontSize: 55),
                  ),),),
                Container(
                  height: MediaQuery.of(context).size.width*1.3,margin:EdgeInsets.all(15),padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(25),color: Colors.black.withOpacity(0.5),
                  ),
                  child: Container(margin: EdgeInsets.all(15),alignment: Alignment.center,
                    child: ListView.separated(
                      itemCount: songs.length,
                      separatorBuilder: (BuildContext context, int index) => Divider(thickness: 2,),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(songs[index],style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Colors.white, letterSpacing: 1,fontWeight: FontWeight.w300,fontSize: 12),
                          ),),
                          leading: FaIcon(FontAwesomeIcons.compactDisc,size: 50,),
                          onTap: () =>  audioCache.play(path[index]),onLongPress: () => advancedPlayer.pause(),

                        );
                      },
                    ),
                  )
                ),
              ],
            ),

          ),
        ),
        ),
      )),
    );
  }
}
