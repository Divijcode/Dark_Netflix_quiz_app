

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:rflutter_alert/rflutter_alert.dart';
import 'quizpage.dart';
import 'package:social_share/social_share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


Quizpage quizPage=Quizpage();

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new AfterSplash(),

        image: new Image.asset('assets/trivia.png'),
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 80.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.white

    );


  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new FirstScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Image.asset(
            'assets/darkp.jpg',
            height: (MediaQuery.of(context).size.height),
            width: (MediaQuery.of(context).size.width),
            fit: BoxFit.fill,
          ),

          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,



              children: <Widget>[
                RaisedButton(

                  splashColor: Colors.blue,
                  color: Colors.tealAccent.shade100,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3.0,color: Colors.yellow.shade50),
                    borderRadius: BorderRadius.circular(5.0),
                  ),


                  padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,right:35.0,left:38.0),
                  child: Text(
                    "Play",
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                        color: Colors.teal.shade800,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 3.0,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );

                  },
                ),
                Padding(
                  padding: const EdgeInsets.only( bottom: 100.0,top:20.0),

                  child: RaisedButton(

                    splashColor: Colors.blue,
                    color: Colors.tealAccent.shade100,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 3.0,color: Colors.yellow.shade50),
                      borderRadius: BorderRadius.circular(5.0),
                    ),


                    padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,right:30.0,left:30.0),
                    child: Text(
                      "About",
                      style: GoogleFonts.lobster(
                        textStyle: TextStyle(
                          fontSize: 30,
                          letterSpacing: 3.0,

                          color: Colors.teal.shade800,
                          fontWeight: FontWeight.w100,


                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()),
                      );

                    },
                  ),
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('About'),
      ),
      backgroundColor: Colors.grey.shade900,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
              'DEVELOPER',
            style: TextStyle(
              letterSpacing:18.0,
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(25.0),

              child: CircleAvatar(

                radius:123.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(


                  radius: 120.0,
                  backgroundImage: AssetImage('assets/divij.jpg'),
                ),
              ),
            ),
          ),
            Text(
                'Divij Chhabra\n',

                style: GoogleFonts.aclonica(
                  textStyle:TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,

                  ),

    ),
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( 'Status : Alive  ',
                        style: GoogleFonts.aclonica(
                          textStyle:TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,

                          ),

    ),
                      ),
                      Icon(Icons.check,color:Colors.green,),
                    ],
                  ),






          Padding(
            padding: const EdgeInsets.only(top:80.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,


              children: [
                IconButton(
                    iconSize: 35.0,
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    color: Colors.white,
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      print("Pressed");
                    }),
                IconButton(
                    iconSize: 35.0,
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    color: Colors.white,
                    icon: FaIcon(FontAwesomeIcons.github),
                    onPressed: () {
                      print("Pressed");
                    }),
                IconButton(
                    iconSize: 35.0,
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    color: Colors.white,
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () {
                      print("Pressed");
                    }),
              ],
            ),
          ),


        ],

      )
    );
  }
}

class SecondPadding extends StatefulWidget {
  final text;
  const SecondPadding ({ Key key, this.text }): super(key: key);

  @override
  _SecondPaddingState createState() => _SecondPaddingState();
}

class _SecondPaddingState extends State<SecondPadding> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0,right:20.0,top:5.0,bottom:5.0),

      child: MaterialButton(
        colorBrightness: Brightness.light,
        height: 41.0,
        minWidth: 1000.0,
        color: Colors.transparent,

        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.5,color: Colors.white),
          borderRadius: BorderRadius.circular(10.0),
        ),

        padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
        child: Text(
          widget.text,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              letterSpacing: 2.0,
              color: Colors.white70,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdScreen()),
          );

        },
      ),

    );
  }
}
SecondPadding secondPadding=SecondPadding();

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          new Image.asset(
            'assets/sec.jpg',
            height: (MediaQuery.of(context).size.height),
            width: (MediaQuery.of(context).size.width),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,


              children: <Widget>[
                SecondPadding(text: "1. EVERYTHING IS CONNECTED"),
                SecondPadding(text: "2. YOU AND I"),
                SecondPadding(text: "3. BEGINNING IS THE END"),
                SecondPadding(text: "4. THE BOOTSTRAP PARADOX"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}
int count=0;
class _ThirdScreenState extends State<ThirdScreen> {

  List<Icon> ScoreKeeper= [];
  var alertStyle = AlertStyle(
    animationType: AnimationType.grow,
    backgroundColor: Colors.white,
    isCloseButton: true,

    isOverlayTapDismiss: true,
     descStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
    descTextAlign: TextAlign.center,
    buttonAreaPadding : EdgeInsets.only(top:20.0,bottom:20.0),
    animationDuration: Duration(milliseconds: 1500),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),

    alertAlignment: Alignment.center,
  );

  void checkAnswer(String userPickedAnswer){
    setState(() {
      if(userPickedAnswer==quizPage.getCorrectAnswer()){
        count++;
        ScoreKeeper.add(Icon(Icons.thumb_up,color:Colors.green.shade400,size: 20.0,));
      }
      else{
        ScoreKeeper.add(Icon(Icons.thumb_down,color:Colors.red.shade400,size: 20.0,));
      }

      if(quizPage.isFinished()==quizPage.questionNumberAgain+14){

        Alert(
          context: context,

          style: alertStyle,
          image: Image.asset("assets/awesome.jpg",width: 120.0,),
          title:"",
          desc: "WOOHOO!\n You scored $count/15 points.",
          buttons: [
            DialogButton(

              child: Text(
                "Share your score",
                style: TextStyle(color: Colors.white,),
              ),
              onPressed:(){
                //without an image
                SocialShare.shareOptions("Hi! I scored $count points in this Quiz. https://www.github.com/divijcode");

              },

            ),
            DialogButton(

              child: Text(
                "One more round",
                style: TextStyle(color: Colors.white, ),
              ),
              onPressed: () => Navigator.of(context, rootNavigator: true).pop(),

            ),
          ],
        ).show();

        setState(() {
          ScoreKeeper.clear();
          quizPage.quizAgain();
        });
      }
      else {

        setState(() {
          quizPage.nextQuestion();
        });
      }
    });

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('D A Я K'),
      ),
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Container(


                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      border: Border.all(

                        color: Colors.red[900],

                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [BoxShadow(color:Colors.white,blurRadius: 0)]


                  ),


                  child: Text(

                    quizPage.getQuestionText(),
                    style: GoogleFonts.patrickHand(
                     textStyle:TextStyle(
                       letterSpacing: 0.8,
                       color:Colors.black,
                       fontSize: 20.0,
                      
                     ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: MaterialButton(

                      shape: RoundedRectangleBorder(
                        side: BorderSide(width:0,color: Colors.deepPurpleAccent.shade700),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      height: 40.0,
                      minWidth: 100.0,
                      color: Colors.white,
                      child: Text(
                        quizPage.getoption1(),
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(),
                        ),
                      ),
                      onPressed: () {
                        checkAnswer(quizPage.getoption1());
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: MaterialButton(
                      height:40.0,
                      minWidth:100.0,
                      color: Colors.white,

                      child: Text(
                        quizPage.getoption2(),
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(),
                        ),
                      ),
                      onPressed: (){
                        checkAnswer(quizPage.getoption2());

                      },


                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: MaterialButton(
                      height:40.0,
                      minWidth:100.0,
                      color: Colors.white,

                      child: Text(
                        quizPage.getoption3(),
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(),
                        ),
                      ),
                      onPressed: (){
                        checkAnswer(quizPage.getoption3());

                      },


                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: MaterialButton(
                      height:40.0,
                      minWidth:100.0,
                      color: Colors.white,
                        padding: EdgeInsets.all(1.0),
                      child: Text(
                        quizPage.getoption4(),
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(),
                        ),
                      ),
                      onPressed: (){
                        checkAnswer(quizPage.getoption4());

                      },


                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0,bottom:8.0,left:8.0,right:16.0),
            child: Row(

              children: ScoreKeeper,
            ),
          ),

        ],
      ),
    );
  }
}




