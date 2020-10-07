import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PageViewApp extends StatefulWidget {
  @override
  _PageViewApp createState() => _PageViewApp();
}

class _PageViewApp extends State<PageViewApp> {
  OutumnVerse _outumnVerse = OutumnVerse();

  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${_outumnVerse.verseOne}', style: TextStyle(fontSize: 23)),
              Text('${_outumnVerse._verse1}', style: TextStyle(fontSize: 23)),
              SizedBox(height: 25),
              Text('<- Вперед', style: TextStyle(fontSize: 23,color: Colors.red)),
            ],
          ),
        )),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${_outumnVerse.verseTwo}', style: TextStyle(fontSize: 23)),
              Text('${_outumnVerse._verse2}', style: TextStyle(fontSize: 23)),
              SizedBox(height: 25),
              Text('<- Вперед || Назад ->', style: TextStyle(fontSize: 23,color: Colors.red)),
            ],
          ),
        )),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('${_outumnVerse.verseThree}',
                  style: TextStyle(fontSize: 23)),
              Text('${_outumnVerse._verse3}', style: TextStyle(fontSize: 23)),
              SizedBox(height: 25),
              Text('<- Вперед || Назад ->', style: TextStyle(fontSize: 23,color: Colors.red)),
            ],
          ),
        )),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${_outumnVerse.verseFour}', style: TextStyle(fontSize: 23)),
              Text('${_outumnVerse._verse4}', style: TextStyle(fontSize: 23)),
              SizedBox(height: 25),
              Text('<- Вперед || Назад ->', style: TextStyle(fontSize: 23,color: Colors.red)),
            ],
          ),
        )),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${_outumnVerse.verseFive}', style: TextStyle(fontSize: 23)),
              Text('${_outumnVerse._verse5}', style: TextStyle(fontSize: 23)),
              SizedBox(height: 25),
              Text('Назад ->', style: TextStyle(fontSize: 23,color: Colors.red)),
            ],
          ),
        )),
      ],
    );
  }
}

class OutumnVerse {
  String verseOne = 'I';
  List _verse1 = [
    'Октябрь уж наступил — уж роща отряхает',
    'Последние листы с нагих своих ветвей;',
    'Дохнул осенний хлад — дорога промерзает.',
    'Журча еще бежит за мельницу ручей,',
    'Но пруд уже застыл; сосед мой поспешает',
    'В отъезжие поля с охотою своей,',
    'И страждут озими от бешеной забавы,',
    'И будит лай собак уснувшие дубравы.',
  ];

  String verseTwo = 'II';
  List _verse2 = [
    'Теперь моя пора: я не люблю весны;',
    'Скучна мне оттепель; вонь, грязь — весной я болен;',
    'Кровь бродит; чувства, ум тоскою стеснены.',
    'Суровою зимой я более доволен,',
    'Люблю ее снега; в присутствии луны',
    'Как легкий бег саней с подругой быстр и волен,',
    'Когда под соболем, согрета и свежа,',
    'Она вам руку жмет, пылая и дрожа!',
  ];
  String verseThree = 'III';
  List _verse3 = [
    'Как весело, обув железом острым ноги,',
    'Скользить по зеркалу стоячих, ровных рек!',
    'А зимних праздников блестящие тревоги?..',
    'Но надо знать и честь; полгода снег да снег,'
        'Ведь это наконец и жителю берлоги,',
    'Медведю, надоест. Нельзя же целый век',
    'Кататься нам в санях с Армидами младыми',
    'Иль киснуть у печей за стеклами двойными.',
  ];
  String verseFour = 'IV';
  List _verse4 = [
    'Ох, лето красное! любил бы я тебя,',
    'Когда б не зной, да пыль, да комары, да мухи.',
    'Ты, все душевные способности губя,',
    'Нас мучишь; как поля, мы страждем от засухи;',
    'Лишь как бы напоить, да освежить себя —',
    'Иной в нас мысли нет, и жаль зимы старухи,',
    'И, проводив ее блинами и вином,',
    'Поминки ей творим мороженым и льдом.',
  ];
  String verseFive = 'V';
  List _verse5 = [
    'Дни поздней осени бранят обыкновенно,',
    'Но мне она мила, читатель дорогой,',
    'Красою тихою, блистающей смиренно.',
    'Так нелюбимое дитя в семье родной',
    'К себе меня влечет. Сказать вам откровенно,',
    'Из годовых времен я рад лишь ей одной,',
    'В ней много доброго; любовник не тщеславный,',
    'Я нечто в ней нашел мечтою своенравной.',
  ];
}
