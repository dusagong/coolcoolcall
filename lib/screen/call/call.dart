import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:coolcoolcall/screen/call/openai_service.dart';
import 'package:coolcoolcall/screen/home.dart';
import 'package:coolcoolcall/screen/onBoarding/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

late AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer.newPlayer();

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  final audio1 = Audio(
    "assets/sound/1.mp3",
    metas: Metas(
      id: 'audio1',
      title: 'Audio 1',
    ),
  );
  final audio2 = Audio(
    "assets/sound/2.mp3",
    metas: Metas(
      id: 'audio2',
      title: 'Audio 2',
    ),
  );
  final audio3 = Audio(
    "assets/sound/3.mp3",
    metas: Metas(
      id: 'audio3',
      title: 'Audio 3',
    ),
  );
  final audio4 = Audio(
    "assets/sound/4.mp3",
    metas: Metas(
      id: 'audio4',
      title: 'Audio 4',
    ),
  );
  final audio5 = Audio(
    "assets/sound/5.mp3",
    metas: Metas(
      id: 'audio5',
      title: 'Audio 5',
    ),
  );
  final audio6 = Audio(
    "assets/sound/6.mp3",
    metas: Metas(
      id: 'audio6',
      title: 'Audio 6',
    ),
  );
  final audio7 = Audio(
    "assets/sound/7.mp3",
    metas: Metas(
      id: 'audio7',
      title: 'Audio 7',
    ),
  );
  final audio8 = Audio(
    "assets/sound/8.mp3",
    metas: Metas(
      id: 'audio8',
      title: 'Audio 8',
    ),
  );
  final audio9 = Audio(
    "assets/sound/9.mp3",
    metas: Metas(
      id: 'audio9',
      title: 'Audio 9',
    ),
  );
  final audio10 = Audio(
    "assets/sound/10.mp3",
    metas: Metas(
      id: 'audio10',
      title: 'Audio 10',
    ),
  );
  final audio11 = Audio(
    "assets/sound/11.mp3",
    metas: Metas(
      id: 'audio11',
      title: 'Audio 11',
    ),
  );
  final audio12 = Audio(
    "assets/sound/12.mp3",
    metas: Metas(
      id: 'audio12',
      title: 'Audio 12',
    ),
  );
  final audio13 = Audio(
    "assets/sound/13.mp3",
    metas: Metas(
      id: 'audio13',
      title: 'Audio 13',
    ),
  );
  final audio14 = Audio(
    "assets/sound/14.mp3",
    metas: Metas(
      id: 'audio14',
      title: 'Audio 14',
    ),
  );
  final audio15 = Audio(
    "assets/sound/15.mp3",
    metas: Metas(
      id: 'audio15',
      title: 'Audio 15',
    ),
  );
  final audio16 = Audio(
    "assets/sound/16.mp3",
    metas: Metas(
      id: 'audio16',
      title: 'Audio 16',
    ),
  );
  final audio17 = Audio(
    "assets/sound/17.mp3",
    metas: Metas(
      id: 'audio17',
      title: 'Audio 17',
    ),
  );
  final audio18 = Audio(
    "assets/sound/18.mp3",
    metas: Metas(
      id: 'audio18',
      title: 'Audio 18',
    ),
  );
  final audio19 = Audio(
    "assets/sound/19.mp3",
    metas: Metas(
      id: 'audio19',
      title: 'Audio 19',
    ),
  );
  final audio20 = Audio(
    "assets/sound/20.mp3",
    metas: Metas(
      id: 'audio20',
      title: 'Audio 20',
    ),
  );
  final audio21 = Audio(
    "assets/sound/21.mp3",
    metas: Metas(
      id: 'audio21',
      title: 'Audio 21',
    ),
  );
  final audio22 = Audio(
    "assets/sound/22.mp3",
    metas: Metas(
      id: 'audio22',
      title: 'Audio 22',
    ),
  );
  final audio23 = Audio(
    "assets/sound/23.mp3",
    metas: Metas(
      id: 'audio23',
      title: 'Audio 23',
    ),
  );
  final audio24 = Audio(
    "assets/sound/24.mp3",
    metas: Metas(
      id: 'audio24',
      title: 'Audio 24',
    ),
  );
  final audio25 = Audio(
    "assets/sound/25.mp3",
    metas: Metas(
      id: 'audio25',
      title: 'Audio 25',
    ),
  );
  final audio26 = Audio(
    "assets/sound/26.mp3",
    metas: Metas(
      id: 'audio26',
      title: 'Audio 26',
    ),
  );
  final audio27 = Audio(
    "assets/sound/27.mp3",
    metas: Metas(
      id: 'audio27',
      title: 'Audio 27',
    ),
  );
  final audio28 = Audio(
    "assets/sound/28.mp3",
    metas: Metas(
      id: 'audio28',
      title: 'Audio 28',
    ),
  );

  final audio29 = Audio(
    "assets/sound/29.mp3",
    metas: Metas(
      id: 'audio29',
      title: 'Audio 29',
    ),
  );

  final audio30 = Audio(
    "assets/sound/30.mp3",
    metas: Metas(
      id: 'audio30',
      title: 'Audio 30',
    ),
  );

  final audio31 = Audio(
    "assets/sound/31.mp3",
    metas: Metas(
      id: 'audio31',
      title: 'Audio 31',
    ),
  );

  final audio32 = Audio(
    "assets/sound/32.mp3",
    metas: Metas(
      id: 'audio32',
      title: 'Audio 32',
    ),
  );

  final audio33 = Audio(
    "assets/sound/33.mp3",
    metas: Metas(
      id: 'audio33',
      title: 'Audio 33',
    ),
  );

  final audio34 = Audio(
    "assets/sound/34.mp3",
    metas: Metas(
      id: 'audio34',
      title: 'Audio 34',
    ),
  );

  final audio35 = Audio(
    "assets/sound/35.mp3",
    metas: Metas(
      id: 'audio35',
      title: 'Audio 35',
    ),
  );

  final audio36 = Audio(
    "assets/sound/36.mp3",
    metas: Metas(
      id: 'audio36',
      title: 'Audio 36',
    ),
  );

  final audio37 = Audio(
    "assets/sound/37.mp3",
    metas: Metas(
      id: 'audio37',
      title: 'Audio 37',
    ),
  );

  final audio38 = Audio(
    "assets/sound/38.mp3",
    metas: Metas(
      id: 'audio38',
      title: 'Audio 38',
    ),
  );

  final audio39 = Audio(
    "assets/sound/39.mp3",
    metas: Metas(
      id: 'audio39',
      title: 'Audio 39',
    ),
  );

  final audio40 = Audio(
    "assets/sound/40.mp3",
    metas: Metas(
      id: 'audio40',
      title: 'Audio 40',
    ),
  );

  final audio41 = Audio(
    "assets/sound/41.mp3",
    metas: Metas(
      id: 'audio41',
      title: 'Audio 41',
    ),
  );
  final audio42 = Audio(
    "assets/sound/42.mp3",
    metas: Metas(
      id: 'audio42',
      title: 'Audio 42',
    ),
  );
  final audio43 = Audio(
    "assets/sound/43.mp3",
    metas: Metas(
      id: 'audio43',
      title: 'Audio 43',
    ),
  );

  final audio44 = Audio(
    "assets/sound/44.mp3",
    metas: Metas(
      id: 'audio44',
      title: 'Audio 44',
    ),
  );

  final audio45 = Audio(
    "assets/sound/45.mp3",
    metas: Metas(
      id: 'audio45',
      title: 'Audio 45',
    ),
  );

  final audio46 = Audio(
    "assets/sound/46.mp3",
    metas: Metas(
      id: 'audio46',
      title: 'Audio 46',
    ),
  );

  final audio47 = Audio(
    "assets/sound/47.mp3",
    metas: Metas(
      id: 'audio47',
      title: 'Audio 47',
    ),
  );

  // bool _speechEnabled = false;
  Timer? _speechTimeoutTimer;

  SpeechToText speechToText = SpeechToText();
  bool isOverlayVisible = false;
  Timer? _overlayTimer; // Declare a Timer variable
  late Widget mychoice;
  String lastWords = '';
  double width_ = 1000.0; // Initialize with default values
  double height_ = 2000.0;
  bool isOut = false;
  final OpenAIService openAIService = OpenAIService();
  @override
  // void initState() async {
  //   super.initState();
  //   mychoice = b();
  //   await initSpeechToText();
  //   await _assetsAudioPlayer.open(audio1); // Play audio1
  //   await Future.delayed(
  //       Duration(milliseconds: 1150)); // Delay for 3 milliseconds
  //   _assetsAudioPlayer.stop();
  //   print('hear?');
  //   if (await speechToText.hasPermission && speechToText.isNotListening)
  //     await startListening();
  // }

// if (await speechToText.hasPermission &&
//                 speechToText.isNotListening) {
//               await startListening();
//             } else if (speechToText.isListening) {
//               final speech = await openAIService.isArtPromptAPI(lastWords);
//               if (speech.contains('https')) {
//                 generatedImageUrl = speech;
//                 generatedContent = null;
//                 setState(() {});
//               } else {
//                 generatedImageUrl = null;
//                 generatedContent = speech;
//                 setState(() {});
//                 await systemSpeak(speech);
//               }
//               await stopListening();
//             } else {
//               initSpeechToText();
//             }
  Future<void> initSpeechToText() async {
    print('initSpeecj');
    speechToText.initialize();
  }

  Future<void> startListening() async {
    print('started');
    await speechToText.listen(
        onResult: onSpeechResult, localeId: 'ko_KR'); // localeId: 'ko_KR'
    print('object');
    if (speechToText.isListening) {
      print("Listening!!!!!");
      _startSpeechTimeoutTimer();
    }

    setState(() {});
  }

  void _startSpeechTimeoutTimer() {
    if (_speechTimeoutTimer != null) {
      _speechTimeoutTimer!.cancel();
    }

    _speechTimeoutTimer = Timer(Duration(milliseconds: 1700), () {
      // Stop listening if there's no speech for more than 2 milliseconds
      if (speechToText.isListening) {
        stopListening();
        print("Time over");
      }
    });
  }

  void _resetSpeechTimeoutTimer() {
    if (_speechTimeoutTimer != null && _speechTimeoutTimer!.isActive) {
      _speechTimeoutTimer!.cancel();
      _startSpeechTimeoutTimer();
    }
  }

  Future<void> stopListening() async {
    print('stop!');
    await speechToText.stop();
    await Future.delayed(Duration(milliseconds: 30));
    print(lastWords);
    if (isOut == false) {
      print('ai에게로//');
      print(lastWords);
      final response = await openAIService.chatGPTAPI(lastWords);
      print(response);
      print("response");
      print("isOut is )");
      print(isOut);
      if (isOut == false) print(response);
      switch (response) {
        case '1':
          _assetsAudioPlayer.open(audio1);
          await Future.delayed(Duration(milliseconds: 1300));
          break;
        case '2':
          _assetsAudioPlayer.open(audio2);
          await Future.delayed(Duration(milliseconds: 5500));
          break;
        case '3':
          _assetsAudioPlayer.open(audio3);
          await Future.delayed(Duration(milliseconds: 4800));
          break;
        case '4':
          _assetsAudioPlayer.open(audio4);
          await Future.delayed(Duration(milliseconds: 5100));
          break;
        case '5':
          _assetsAudioPlayer.open(audio5);
          await Future.delayed(Duration(milliseconds: 2600));
          break;
        case '6':
          _assetsAudioPlayer.open(audio6);
          await Future.delayed(Duration(milliseconds: 1800));
          break;
        case '7':
          _assetsAudioPlayer.open(audio7);
          await Future.delayed(Duration(milliseconds: 1900));
          break;
        case '8':
          _assetsAudioPlayer.open(audio8);
          await Future.delayed(Duration(milliseconds: 1700));
          break;
        case '9':
          _assetsAudioPlayer.open(audio9);
          await Future.delayed(Duration(milliseconds: 2100));
          break;
        case '10':
          _assetsAudioPlayer.open(audio10);
          await Future.delayed(Duration(milliseconds: 3100));
          break;
        case '11':
          _assetsAudioPlayer.open(audio11);
          await Future.delayed(Duration(milliseconds: 2400));
          break;
        case '12':
          _assetsAudioPlayer.open(audio12);
          await Future.delayed(Duration(milliseconds: 3000));
          break;
        case '13':
          _assetsAudioPlayer.open(audio13);
          await Future.delayed(Duration(milliseconds: 4250));
          break;
        case '14':
          _assetsAudioPlayer.open(audio14);
          await Future.delayed(Duration(milliseconds: 3400));
          break;
        case '15':
          _assetsAudioPlayer.open(audio15);
          await Future.delayed(Duration(milliseconds: 4000));
          break;
        case '16':
          _assetsAudioPlayer.open(audio16);
          await Future.delayed(Duration(milliseconds: 2600));
          break;
        case '17':
          _assetsAudioPlayer.open(audio17);
          await Future.delayed(Duration(milliseconds: 4900));
          break;
        case '18':
          _assetsAudioPlayer.open(audio18);
          await Future.delayed(Duration(milliseconds: 4700));
          break;
        case '19':
          _assetsAudioPlayer.open(audio19);
          await Future.delayed(Duration(milliseconds: 3100));
          break;
        case '20':
          _assetsAudioPlayer.open(audio20);
          await Future.delayed(Duration(milliseconds: 3150));
          break;
        case '21':
          _assetsAudioPlayer.open(audio21);
          await Future.delayed(Duration(milliseconds: 2400));
          break;
        case '22':
          _assetsAudioPlayer.open(audio22);
          await Future.delayed(Duration(milliseconds: 2200));
          break;
        /////////////
        case '23':
          _assetsAudioPlayer.open(audio23);
          await Future.delayed(Duration(milliseconds: 2600));
          break;
        case '24':
          _assetsAudioPlayer.open(audio24);
          await Future.delayed(Duration(milliseconds: 3300));
          break;
        case '25':
          _assetsAudioPlayer.open(audio25);
          await Future.delayed(Duration(milliseconds: 3900));
          break;
        case '26':
          _assetsAudioPlayer.open(audio26);
          await Future.delayed(Duration(milliseconds: 2700));
          break;
        case '27':
          _assetsAudioPlayer.open(audio27);
          await Future.delayed(Duration(milliseconds: 2100));
          break;
        case '28':
          _assetsAudioPlayer.open(audio28);
          await Future.delayed(Duration(milliseconds: 2300));
          break;
        case '29':
          _assetsAudioPlayer.open(audio29);
          await Future.delayed(Duration(milliseconds: 2300));
          break;
        case '30':
          _assetsAudioPlayer.open(audio30);
          await Future.delayed(Duration(milliseconds: 4400));
          break;
        case '31':
          _assetsAudioPlayer.open(audio31);
          await Future.delayed(Duration(milliseconds: 3500));
          break;
        case '32':
          _assetsAudioPlayer.open(audio32);
          await Future.delayed(Duration(milliseconds: 2600));
          break;
        case '33':
          _assetsAudioPlayer.open(audio33);
          await Future.delayed(Duration(milliseconds: 2500));
          break;
        case '34':
          _assetsAudioPlayer.open(audio34);
          await Future.delayed(Duration(milliseconds: 3500));
          break;
        case '35':
          _assetsAudioPlayer.open(audio35);
          await Future.delayed(Duration(milliseconds: 5000));
          break;
        case '36':
          _assetsAudioPlayer.open(audio36);
          await Future.delayed(Duration(milliseconds: 4000));
          break;
        case '37':
          _assetsAudioPlayer.open(audio37);
          await Future.delayed(Duration(milliseconds: 4000));
          break;
        case '38':
          _assetsAudioPlayer.open(audio38);
          await Future.delayed(Duration(milliseconds: 4000));
          break;
        case '39':
          _assetsAudioPlayer.open(audio39);
          await Future.delayed(Duration(milliseconds: 4000));
          break;
        case '40':
          _assetsAudioPlayer.open(audio40);
          await Future.delayed(Duration(milliseconds: 5000));
          break;
        case '41':
          _assetsAudioPlayer.open(audio41);
          await Future.delayed(Duration(milliseconds: 4000));
          break;
        case '42':
          _assetsAudioPlayer.open(audio42);
          ////
          await Future.delayed(Duration(milliseconds: 1660));
          break;
        case '43':
          _assetsAudioPlayer.open(audio43);
          await Future.delayed(Duration(milliseconds: 6550));
          break;
        case '44':
          _assetsAudioPlayer.open(audio44);
          await Future.delayed(Duration(milliseconds: 4150));
          break;
        case '45':
          _assetsAudioPlayer.open(audio45);
          await Future.delayed(Duration(milliseconds: 2880));
          break;
        case '46':
          _assetsAudioPlayer.open(audio46);
          await Future.delayed(Duration(milliseconds: 3300));
          break;
        case '47':
          _assetsAudioPlayer.open(audio47);
          await Future.delayed(Duration(milliseconds: 3700));
          break;

        default:
          _assetsAudioPlayer.open(audio5);
          await Future.delayed(Duration(milliseconds: 4000));
          break;
      }
      _assetsAudioPlayer.stop();
      if (isOut == false) if (await speechToText.hasPermission &&
          speechToText.isNotListening) await startListening();

      print(response);
      print("YAYAYA");
    }
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    print('onon');
    _resetSpeechTimeoutTimer();
    setState(() {
      lastWords = result.recognizedWords;
    });

    if (result.finalResult) {
      // This is a final result; speech recognition has finished.
      // Process the final result.
      print("Final result: ${result.recognizedWords} & $lastWords");
      setState(() {
        lastWords = result.recognizedWords;
        print('last!');
        //
    // _speechTimeoutTimer?.cancel(); 
    //     stopListening();
      });
      // Add any additional logic you want when listening has finished.
    }
  }

  void _toggleOverlay() {
    setState(() {
      isOverlayVisible = !isOverlayVisible;
      isOverlayVisible ? mychoice = a() : mychoice = b();
    });

    if (isOverlayVisible) {
      _overlayTimer = Timer(Duration(milliseconds: 3000), () {
        setState(() {
          isOverlayVisible = false;
          mychoice = b();
        });
      });
    } else {
      _overlayTimer?.cancel();
    }
  }

  @override
  void dispose() {
    _overlayTimer?.cancel();
    speechToText.stop();
    _speechTimeoutTimer?.cancel(); // Cancel the speech timeout timer

    if (speechToText.isListening) {
      speechToText.stop();
    }
    _assetsAudioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width_ = MediaQuery.of(context).size.width;
    height_ = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background/callBackTop.png'), // 배경 이미지
          ),
        ),
        child: GestureDetector(
          onTap: () {
            _toggleOverlay();
            print("ScreenTouch");
          },
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: AnimatedSwitcher(
                // switchInCurve: Curves.fastOutSlowIn,
                // switchOutCurve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(milliseconds: 2000),
                // key: ValueKey<Widget>(mychoice),
                child: isOverlayVisible ? a() : b(),
              )),
        ),
      ),
    );
  }

  Widget a() {
    return Stack(
      key: ValueKey<String>('a'),
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 560,
              ),
              Text("전화를 종료하고 싶으시면",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA),
                  )),
              SizedBox(
                height: 5,
              ),
              Text("음량 버튼을 누르거나 화면을 터치해",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA),
                  )),
              SizedBox(
                height: 5,
              ),
              Text("종료하기 버튼을 누르세요",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA),
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isOut = true;
                    });
                    Get.offAll(Home(),
                        transition: Transition.fadeIn,
                        duration: Duration(
                          milliseconds: 700,
                        ));
                    print("GetOff");
                    if (speechToText.isListening) {
                      speechToText.stop();
                    }
                    _assetsAudioPlayer.stop();
                    dispose();
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Image.asset("assets/Call/closeMoon.png"),
                      Text(
                        "전화 종료하기",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(229, 221, 234, 1),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }

  Widget b() {
    return Stack(
      key: ValueKey<String>('b'),
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 560,
              ),
              Text("전화를 종료하고 싶으시면",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA),
                  )),
              SizedBox(
                height: 5,
              ),
              Text("음량 버튼을 누르거나 화면을 터치해",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA),
                  )),
              SizedBox(
                height: 5,
              ),
              Text("종료하기 버튼을 누르세요",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE5DDEA),
                  )),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _toggleOverlay();
            });
          },
          child: Container(
              color: Colors.black
                  .withOpacity(0.7), // Black overlay with 50% opacity
              width: width_,
              height: height_),
        ),
      ],
    );
  }
}
