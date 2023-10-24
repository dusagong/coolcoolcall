import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Page4State createState() => Page4State();
}

class Page4State extends State<Page4> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _words = '';
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    if(_speechEnabled)print('true');
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    _controller.text = result.recognizedWords;
    setState(() {
      _words = result.recognizedWords;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            Text(_speechToText.isListening
                ? _words
                : _speechEnabled
                    ? 'Press the Microphone to Start Speech to Text'
                    : 'Speech Not Available'),
          ],
        )));
  }
}
