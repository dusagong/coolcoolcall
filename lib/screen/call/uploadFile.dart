// import 'dart:convert';
// import 'dart:io';
// import 'package:coolcoolcall/screen/call/secrets.dart';
// import 'package:dart_openai/dart_openai.dart';
// import 'package:http/http.dart' as http;

// Future<void> uploadDatasetAndGetFileId(String filePath) async {
//   // final String apiUrl = 'https://api.openai.com/v1/files';
//   // final File file = File(filePath);

//   // final request = http.MultipartRequest('POST', Uri.parse(apiUrl))
//   //   ..headers['Authorization'] = 'Bearer $APIKey'
//   //   ..fields['purpose'] = 'fine-tune'
//   //   ..files.add(http.MultipartFile('file', file.openRead(), file.lengthSync(),
//   //       filename: 'mydata.jsonl'));

//   // try {
//   //   final streamedResponse = await request.send();
//   //   final response = await http.Response.fromStream(streamedResponse);

//   //   if (response.statusCode == 200) {
//   //     final Map<String, dynamic> responseJson = json.decode(response.body);
//   //     if (responseJson.containsKey('id')) {
//   //       final String fileId = responseJson['id'];
//   //       print('File ID: $fileId');
//   //     } else {
//   //       print('File upload succeeded, but unable to get the file ID.');
//   //     }
//   //   } else {
//   //     print('File upload failed with status code: ${response.statusCode}');
//   //   }
//   // } catch (e) {
//   //   print('Error uploading file: $e');
//   // }

//   OpenAI.apiKey = APIKey;

//   OpenAIFileModel uploadedFile = await OpenAI.instance.file.upload(
//     file: File("${filePath}"),
//     purpose: "fine-tune",
//   );
// //   bool isFileDeleted = await OpenAI.instance.file.delete("file-vfCGe3HLi9o1zqhDU4iDvWF1");

// // print(isFileDeleted);

//   print(uploadedFile.id); // ...
// }

// // Usage:
// void main() {
//   print(uploadDatasetAndGetFileId(
//       '/Users/yoonseungjae/Documents/Flutter/Project/coolcoolcall/lib/screen/call/convertjson.jsonl'));
// }
// //flutter: file-vLAlcg7XDXNux7SaxgXgam3f
// //flutter: file-eWQLdcsZM5oDJG3bVtG1PBM8
