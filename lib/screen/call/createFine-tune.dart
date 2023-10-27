// import 'dart:convert';

// import 'package:coolcoolcall/screen/call/secrets.dart';
// import 'package:dart_openai/dart_openai.dart';
// import 'package:http/http.dart' as http;

// Future<void> FINETUNE() async {
//   try {
//     final res = await http.post(
//       Uri.parse('https://api.openai.com/v1/fine_tuning/jobs'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $APIKey',
//       },
//       body: jsonEncode({
//         "model": "gpt-3.5-turbo",
//         "messages": [
//           {
//             'role': 'user',
//             'content':
//                 'Does this message want to generate an AI picture, image, art or anything similar? . Simply answer with a yes or no.',
//           }
//         ],
//       }),
//     );
//     // print(res.body);
//     if (res.statusCode == 200) {
//       String content = utf8.decode(
//           jsonDecode(res.body)['choices'][0]['message']['content'].codeUnits);
//       content = content.trim();

//     }
//   } catch (e) {
//     print('prob in isAPI');

//   }
// }

// void main() {
//   print(FINETUNE());
// }
