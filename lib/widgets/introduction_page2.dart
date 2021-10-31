import 'package:flutter/material.dart';
import 'package:sen_rules/widgets/homepage.dart';
import 'package:sen_rules/widgets/introduction_page1.dart';
import 'package:video_player/video_player.dart';

class IntroductionPage2 extends StatefulWidget {
  const IntroductionPage2({Key? key}) : super(key: key);

  @override
  _IntroductionPage2State createState() => _IntroductionPage2State();
}

class _IntroductionPage2State extends State<IntroductionPage2> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

 @override
 void initState() {
   _controller = VideoPlayerController.network(
       "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
   //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
   _initializeVideoPlayerFuture = _controller.initialize();
   _controller.setLooping(true);
   _controller.setVolume(1.0);
   super.initState();
 }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo_small.png',
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  'Pourquoi combattre la corruption?',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,  
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: InkWell(
                    onTap: (){
                        setState(() {
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }
                      });
                    },
                      child: FutureBuilder(
                            future: _initializeVideoPlayerFuture,
                            builder: (context, snapshot) {
                                if (snapshot.connectionState == ConnectionState.done) {
                                    return Center(
                                        child: AspectRatio(
                                        aspectRatio: _controller.value.aspectRatio,
                                        child: VideoPlayer(_controller),
                                        ),
                                    );
                                } else {
                                    return Center(
                                        child: CircularProgressIndicator(),
                                    );
                                }
                            },
                      ),
                  ),
                ),
                 Padding(padding: EdgeInsets.all(10)),
                Text(
                  "La corruption est un phénomène social, politique et économique complexe qui touche tous les pays. La corruption sape les institutions démocratiques, ralentit le développement économique et contribue à l'instabilité gouvernementale. La corruption s'attaque aux institutions démocratiques en faussant les processus électoraux, en pervertissant l'État de droit et en créant des bourbiers bureaucratiques. Le développement économique est freiné parce que les investissements directs étrangers sont découragés et que les petites entreprises du pays sont souvent dans l'impossibilité de surmonter les \"coûts de démarrage\" exigés par la corruption.La corruption est un phénomène social, politique et économique complexe qui touche tous les pays. La corruption sape les institutions démocratiques, ralentit le développement économique et contribue à l'instabilité gouvernementale. La corruption s'attaque aux institutions démocratiques en faussant les processus électoraux, en pervertissant l'État de droit et en créant des bourbiers bureaucratiques. Le développement économique est freiné parce que les investissements directs étrangers sont découragés et que les petites entreprises du pays sont souvent dans l'impossibilité de surmonter les \"coûts de démarrage\" exigés par la corruption.",
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                Padding(padding: EdgeInsets.all(12)),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homepage()));
                    },
                    child: Text(
                      'Continuer',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[900]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         _controller.play();
      //       }
      //     });
      //   },
      //   child:
      //       Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      // ),
    );
  }
}
