import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// String apiKey = "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";
// String apiUrl = "https://api.openai.com/vi/completions";
String apiUrl = "https://api.openai.com/v1/engines/text-davinci-003/completions";


class SpeechSampleApp extends StatefulWidget {
  const SpeechSampleApp({Key? key}) : super(key: key);

  @override
  State<SpeechSampleApp> createState() => _SpeechSampleAppState();
}

/// An example that demonstrates the basic functionality of the
/// SpeechToText plugin for using the speech recognition capability
/// of the underlying platform.
class _SpeechSampleAppState extends State<SpeechSampleApp> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _words = '';
  String send = '';
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult, localeId: 'ko_KR');
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
      _controller.text = '';
      send = _words;
    });
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    _controller.text = result.recognizedWords;
    setState(() {
      _words = result.recognizedWords;
    });
  }

  static Future<String> generateText(String _words) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey'
      },
      body: jsonEncode({
        'prompt': "with $_words, could you pleas respode that you are talking to a person who is having hard time to sleep so needed someone to talk with and it is you",
        // 'message':[
        //   {
        //     'role' : 'user',
        //     'content' :'does this message '
        //   }
        // ],
        'max_tokens': 1000,
        'temperature': 1,
        'top_p': 0.53,
        'frequency_penalty': 0,
        'presence_penalty': 0
      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      var msg = data['choices'][0]['text'];
      return msg;
    } else {
      print('Request failed with status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      throw Exception('Failed to make a valid API request.');
    }
}


  // static Map<String, String> header = {
  //   'Content-Type': 'application/json',
  //   'Authorization': 'Bearer $apiKey'
  // };
  // sendMessage(String? message) async {
  //   var res = await http.post(Uri.parse(apiUrl),
  //       headers: header,
  //       body: jsonEncode({
  //         "model": "text-davinci-003",
  //         "prompt": '$message',
  //         "temperature": 0,
  //         "max_tokens": 100,
  //         "top_p": 1,
  //         "frequency_penalty": 0.0,
  //         "presence_penalty": 0.0,
  //         "stop": ["Human:", "AI:"],
  //       }));
  //   if(res.statusCode ==200){
  //     var data = jsonDecode(res.body.toString());
  //     var msg = data['choices'][0]['text'];
  //     return msg;
  //   }
  //   else {
  //     print('fail');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    _speechToText.isListening ? print('on') : print('off');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Speech to Text Demo'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      suffix: IconButton(
                        onPressed: _speechToText.isListening
                            ? _stopListening
                            : _startListening,
                        icon: Icon(_speechToText.isListening
                            ? Icons.mic_off
                            : Icons.mic),
                      ),
                      hintText: 'Your Spoken Text'),
                )),
            _speechToText.isListening
                ? Text(_words)
                : _speechEnabled
                    ? FutureBuilder<String>(
                        future: generateText(send),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            print("loading!!!!!!");

                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            print("faile!!!!!!");
                            return Text('Error: ${snapshot.error}');
                          } else {
                            print("success???");
                            return Text('${snapshot.data}');
                          }
                        },
                      )
                    : Text('errpr')
          ],
        )));
  }
}
