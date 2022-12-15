import 'package:appsweech/Screens/happy_birthday.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Todo: apply here is my gift to you sound
//todo: add first sem orentation photo. add animation, add blackpink image,
//add birthday wish cards.
//add drawer and style it.

//changing the back pic of app

class BirthdayWishesScreen extends StatefulWidget {
  const BirthdayWishesScreen({super.key});

  @override
  State<BirthdayWishesScreen> createState() => _BirthdayWishesScreenState();
}

class _BirthdayWishesScreenState extends State<BirthdayWishesScreen> {
  final _musicController = AssetsAudioPlayer.newPlayer();

  @override
  void initState() {
    _musicController.open(
      Audio("assets/happy_birthday_its_my_birthday_gitf_toyou.mp3"),
      autoStart: true,
      showNotification: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    _musicController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "My wishes to you sweech",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      )),
      body: SingleChildScrollView(
        //

        child: Column(children: [
          // _buildBlackCard(size, "just tune", "yo ritto maan ko boj sarhai garungo risauna khojda jhan bhari hune bhayo"),

          _buildTopicPinkCard(size,
              "I highly encourage you aja mommy ra daddy lai feel gara, how they feel for you, timili hurkayara thulo banaunu bhayo just keep in mind they will not be forever with you , sabai kura birsera thanking them for bringing in this world, feel the word family 'pariwar' and how it's like to be with them "),
          _buildBlackCard(size, "Life",
              "Bihani saberi jurukka uthera dugurxau khai k lachya samatna, bhaktapur bus ko auta kuna ma tolaudai bityo 4 barsha BMC ma jindagani"),

          _buildPinkCard(size, "Gorw old",
              "They say you lose your memory as you grow older. I say forget about the past and live life to the fullest today. Happy birthday."),
          _buildBlackCard(size, "Live",
              "You will never be as young again as you are today, so have fun. But be careful, because you have never been this old before. Happy birthday."),
          _buildPinkCard(size, "special",
              "It's normal, malai birthday bhanni kehi kuro lagdaina untill i make it remarkable kehi thulo kuro life ma na garda samma , it's like normal days to me"),
          _buildBlackCard(size, "jeunu",
              "Jeunu nai hola yesari nai yo geet gaudai aru lai sunaudai"),
          _buildPinkCard(size, "Just",
              "Just wanted to say where you are or where you will be in life stay happy"),

          _buildTopicBlackCard(size,
              "Akdin bachelor sakinxa hai, koi kata koi kata tespaxi bhetinxa kinai ani just memories haru hunxa akdin we will forget everything ani will be busy in worldy things, imagine you at 40 and remember these things, sahaid yadd ni hudaina hola ani samjida ni achamma lagxa yeso ni maile gare bhanera.Maile spirituality ra meditate garni auta karan yo ni ho i just want to be in every moment,ma aile past present ani future feel garxu. Life ko bare gahirera sochxu ani happy hunxu,  main ta laijane le laijaus tara mitho memory laijaus, sabai ko afno afno personality hunxa jun hami bahira wa sangat bata garxam  tyo arkai hunxa bhiitra arku roop hunxa mero timro sabai ko auta bhitri roop hunxa jum afu lai matra tha hunxa tyo aru lai tha hunna. malai kasto lagxa ramro na ramro bhanni kehi hudaina just hunxa afno matlab anusar percept garni ho ramro na ramro jaba samma aru lai harm hunna "),
          _buildPinkCard(size, "One thing",
              "Maile timili message garni bolni ani kura haru share garda timili aptharo ta lagdaina ni, alli awkward ta lagdaina ni.alli weird ta lagdaina ni?. bhana hai jhyau lagxa bhani i won't do that"),
          _buildBlackCard(size, "Fun 😂",
              "You won't blieve maile splash screen ko photo ko lagi yeti black pink lai heri sakya xu i am sure 1200+ time farak farak photo herya xu  😂😂😂   "),
        ]),
      ),
    );
  }
}

Widget _buildBlackCard(Size size, String topic, String desc) {
  return Card(
    child: Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(230, 8, 6, 6),
            Colors.black,
            Colors.black87,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            topic,
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.8,
            child: Text(
              desc,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildTopicBlackCard(Size size, String desc) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(20),
      height: size.height * 0.9,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(230, 8, 6, 6),
            Colors.black,
            Colors.black87,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: size.width * 0.8,
        child: Text(
          desc,
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget _buildPinkCard(Size size, String topic, String desc) {
  return Card(
    child: Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink,
            Colors.pinkAccent,
            Colors.pink.shade600,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            topic,
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Flexible(child: const SizedBox(height: 10)),
          SizedBox(
            width: size.width * 0.8,
            child: Text(
              desc,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildTopicPinkCard(Size size, String desc) {
  return Card(
    child: Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: size.height * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink,
            Colors.pinkAccent,
            Colors.pink.shade600,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: size.width * 0.8,
        child: Text(
          desc,
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
