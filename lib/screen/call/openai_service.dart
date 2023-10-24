import 'dart:convert';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:coolcoolcall/screen/call/secrets.dart';
import 'package:http/http.dart' as http;

late AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer.newPlayer();

final Map<String, dynamic> jsonScript = {
  "messages": [
    {
      "role": "system",
      "content":
          "아래에서 대답을 골라줘. 그리고 너는 무조건 하나의 숫자로만 대답해야해.\"예를 들어 나: 너 이름이 뭐니? 너: 2 . 명심해 무조건 숫자 하나로 대답해야해\"\n\n1.여보세요\n2.안녕 나는 쿨쿨이야. 나랑 얘기하다가 잘래?\n3.좋아~ 오늘 하루는 어땠는지 나한테 말해줄 수 있어?\n4.알겠어, 오늘 편안 하게 잠들었으면 좋겠다~ 잘자 :) \n5.내가 아직 대답할 준비가 안됐어\n6.오늘 하루는 어땠어?\n7.또 기억에 남는게 있어?\n8.너무 좋았겠는데?\n9.우와 무슨일이었는데?\n10.함께 행복한 순간을 공유해줘서 고마워.\n11.오늘 기분이 좋았다니 너무 다행이다.\n12.너가 괜찮아보여서 정말 다행이야\n13.많이 힘들지, 너무 걱정마 금방 지나갈거야.\n14.아이고.. 무슨일이었는데?\n15.그렇게 느껴지는 날들이 있지. 오늘이 그런 날이었구나?\n16.헐.. 너무 아쉬웠겠다.\n17.너무너무 고생많았어. 오늘 이야기 하면서 푹 쉬면 좋겠다.\n18.힘들면 언제든 나한테 얘기해줘. 내가 언제든 들어줄게.\n19.힘들고 스트레스 받는 상황이었겠다.\n20.헐 그사람 진짜 너무했다.\n21.지금은 좀 어때? 괜찮아?\n22.너 정말 많이 힘들었겠다.\n23.괜찮아? 많이 속상했겠다.\n24.그 상황에 대해 더 자세히 말해줄 수 있을까?\n25.네 방식대로 잘 해내고 있구나? 정말 멋지다.\n26.노력하는 너가 정말 귀해\n27.대박. 너 진짜 멋지다.\n28.준비하는 과정이 힘들진 않았어?\n29.정말 보람있었을거 같아!.\n30.넌 혼자가 아냐. 나랑 얘기하면서 하나씩 해결해볼까?\n31.곧 좋은일이 있을거야. 너무 걱정하지는 말자!\n32.아 진짜? 너무 기대된다!!\n33.넌 어떨때 마음이 편안해져?\n34.에이~ 당연한걸! 난 항성 너의 편이야!\n35.오늘처럼 하루에 있었던 일들을 말해줘서 고마워!!\n36.뭐든 너가 하고싶은 얘기 아무거나 해도 돼.\n37.딱히 생각나는 말이 없으면 말하지않아도 돼.\n38.할말 생각나면 말해줘. 나는 언제나 너의 곁에 있어.\n39.다행이다. 오늘도 잘자고 좋은 꿈 꿔!\n40.그래도 내일 안피곤하려면 지금 자야하지 않을까?\n41.오늘도 정말 고생했어. 피곤하지는 않아?\n\n나는 불면증에 시달리고있어서 너한테 전화한거야. 전화하다보면 잠들기 쉬울까 싶어서.그러니까 공감과 위로, 질문 잘 해줘."
    },
    {"role": "user", "content": "여보세요"},
    {"role": "assistant", "content": "2"},
    {"role": "user", "content": "그럴까"},
    {"role": "assistant", "content": "6"},
    {"role": "user", "content": "오늘 오랜만에 친구들을 만났는데 너무 반가웠어"},
    {"role": "assistant", "content": "8"},
    {"role": "user", "content": "근데 속상한 일이 있었어."},
    {"role": "assistant", "content": "14"},
    {"role": "user", "content": "오랜만에 본 친구들인데 다들 늙어보였어."},
    {"role": "assistant", "content": "23"},
    {"role": "user", "content": "괜찮아, 사람은 어차피 늙는거니깐. 위로해줘서 고마워 쿨쿨아."},
    {"role": "assistant", "content": "34"},
    {"role": "user", "content": "음 이제 좀 졸리네~."},
    {"role": "assistant", "content": "39"},
    {"role": "user", "content": "싫어 좀만 더 얘기하다가 잘래"},
    {"role": "assistant", "content": "38"},
    {"role": "user", "content": "그렇게 얘기해줘서 고마워"},
    {"role": "assistant", "content": "34"},
    {"role": "user", "content": "너 누구니?"},
    {"role": "assistant", "content": "2"},
    {"role": "user", "content": "내 얘기좀 들어줄래?"},
    {"role": "assistant", "content": "3"},
    {"role": "user", "content": "나 이제 자러갈게"},
    {"role": "assistant", "content": "4"},
    {"role": "user", "content": "나 오늘 좋은일이 있었어"},
    {"role": "assistant", "content": "9"},
    {"role": "user", "content": "오늘 너무 행복했어"},
    {"role": "assistant", "content": "10"},
    {"role": "user", "content": "너랑 얘기하니까 기분이 좋아졌어"},
    {"role": "assistant", "content": "12"},
    {"role": "user", "content": "나 너무 힘들어 "},
    {"role": "assistant", "content": "13"},
    {"role": "user", "content": "나 왜살지"},
    {"role": "assistant", "content": "15"},
    {"role": "user", "content": "디그리 준비 제대로 못해서 속상해"},
    {"role": "assistant", "content": "16"},
    {"role": "user", "content": "나 오늘 밥 한끼도 못먹었어"},
    {"role": "assistant", "content": "17"},
    {"role": "user", "content": "내 얘기좀 들어줄래?"},
    {"role": "assistant", "content": "18"},
    {"role": "user", "content": "나 오늘 길에서 넘어졌어"},
    {"role": "assistant", "content": "19"},
    {"role": "user", "content": "교수님 너무 싫어"},
    {"role": "assistant", "content": "20"},
    {"role": "user", "content": "오늘 울었어"},
    {"role": "assistant", "content": "21"},
    {"role": "user", "content": "나 오늘 속상한 일이 있었어"},
    {"role": "assistant", "content": "24"},
    {"role": "user", "content": "나 외로워"},
    {"role": "assistant", "content": "30"},
    {"role": "user", "content": "이번 일 잘 마칠 수 있을까?"},
    {"role": "assistant", "content": "31"},
    {"role": "user", "content": "나랑 얘기좀 해"},
    {"role": "assistant", "content": "33"},
    {"role": "user", "content": "오늘 내 얘기 들어줘서 고마워"},
    {"role": "assistant", "content": "35"},
    {"role": "user", "content": "무슨얘기 할까"},
    {"role": "assistant", "content": "36"},
    {"role": "user", "content": "피곤하다"},
    {"role": "assistant", "content": "39"},
    {"role": "user", "content": "잠이 안와"},
    {"role": "assistant", "content": "40"},
    {"role": "user", "content": "힘든 하루였다"},
    {"role": "assistant", "content": "41"},
  ],
};

class OpenAIService {
  final List<Map<String, String>> messages =
      List<Map<String, String>>.from(jsonScript["messages"]);

  Future<String> isArtPromptApi(String prompt) async {
    try {
      final res = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $APIKey',
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          "messages": [
            {
              'role': 'user',
              'content':
                  'Does this message want to generate an AI picture, image, art or anything similar? $prompt . Simply answer with a yes or no.',
            }
          ],
        }),
      );
      // print(res.body);
      if (res.statusCode == 200) {
        String content = utf8.decode(
            jsonDecode(res.body)['choices'][0]['message']['content'].codeUnits);
        content = content.trim();

        switch (content) {
          case 'Yes':
          case 'yes':
          case 'Yes.':
          case 'yes.':
            final res = await dallEAPI(prompt);
            return res;
          default:
            final res = await chatGPTAPI(prompt);
            // print(res);
            return res;
        }
      }
      return 'An internal error occurred';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> chatGPTAPI(String prompt) async {
    messages.add({
      'role': 'user',
      'content': prompt,
    });
    // print(messages);
    print("message Here");
    try {
      final res = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $APIKey',
        },
        body: jsonEncode({
          // "training_file": "lib/screen/call/fine_tune.json",//내가 만든 스크립트 파일
          "model": "gpt-3.5-turbo",
          "messages": messages,
        }),
      );
      print("과연?");

      if (res.statusCode == 200) {
        print("굳?");

        String content = utf8.decode(
            jsonDecode(res.body)['choices'][0]['message']['content'].codeUnits);
        content = content.trim();

        messages.add({
          'role': 'assistant',
          'content': content,
        });

        return content;
      }

      return 'An internal error occurred!!';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> dallEAPI(String prompt) async {
    messages.add({
      'role': 'user',
      'content': prompt,
    });
    try {
      final res = await http.post(
        Uri.parse('https://api.openai.com/v1/images/generations'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $APIKey',
        },
        body: jsonEncode({
          'prompt': prompt,
          'n': 1,
        }),
      );

      if (res.statusCode == 200) {
        String imageUrl = jsonDecode(res.body)['data'][0]['url'];
        imageUrl = imageUrl.trim();

        messages.add({
          'role': 'assistant',
          'content': imageUrl,
        });
        return imageUrl;
      }
      return 'An internal error occurred';
    } catch (e) {
      return e.toString();
    }
  }
}
