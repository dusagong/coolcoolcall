import 'dart:convert';

import 'package:http/http.dart' as http;

String apiKey = "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";

class ApiServices {
  String baseUrl = "https://api.openai.com/vi/completions";

  Map<String, String> header = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $apiKey'
  };
  sendMessage(String? message) async {
    var res = await http.post(Uri.parse(baseUrl),
        headers: header,
        body: jsonEncode({
          "model": "text-davinci-003",
          "prompt": '$message',
          "temperature": 0,
          "max_tokens": 100,
          "top_p": 1,
          "frequency_penalty": 0.0,
          "presence_penalty": 0.0,
          "stop": ["Human:", "AI:"],
        }));
    if(res.statusCode ==200){
      var data = jsonDecode(res.body.toString());
      var msg = data['choices'][0]['text'];
      return msg;
    }
    else {
      print('fail');
    }
  }
}
