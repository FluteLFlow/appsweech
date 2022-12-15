import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YHomePAge extends StatefulWidget {
  @override
  YHomePAgeState createState() => YHomePAgeState();
}

class YHomePAgeState extends State<YHomePAge> {
  List<String> videoID = [
    "https://youtu.be/Bk_bTrCXXK8",
    "https://youtu.be/Kv-MUAcOIVU",
    "https://youtu.be/obnPGgILvSU",
    "https://youtu.be/imUZHltfjAk"
  ];
  List<String> videoTitle = [
    "Pink Venom ( Fanmade)",
    "BLACKPINK Pretty Savage Fanmade",
    "Ice Cream (fanmade)",
    "How You Like That (Fanmade)"
  ];
  bool showItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Swechha\'s creative videos',style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Flexible(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: ListView.builder(
                      itemCount: videoID.length,
                      itemBuilder: (context, index) {
                        final idVideo =
                            YoutubePlayer.convertUrlToId(videoID[index]);
                        return Column(
                          children: [
                            Container(
                              decoration:const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30))
                              ),
                              margin: const EdgeInsets.all(8),
                              child: YoutubePlayer(
                                controller: YoutubePlayerController(
                                    initialVideoId: idVideo!,
                                    flags: const YoutubePlayerFlags(
                                      autoPlay: false,
                                    )),
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.blue,
                                progressColors: const ProgressBarColors(
                                    playedColor: Colors.blue,
                                    handleColor: Colors.blueAccent),
                              ),
                            ),
                            Text(videoTitle[index], style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                          ],
                        );
                      }))),
        ],
      ),
    );
  }
}
