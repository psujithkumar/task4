import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'This is sujith fluter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,

      //   title: Center(child: Text("hello")),
        // leading: Icon(Icons.home), 
        //  actions: [
        //      Icon(Icons.login),Icon(Icons.logout)],
      // ),

      // drawer: Drawer(
      //   child: ListView(children: [
      //     Center(child: Text("welcome sujith")),
      //     ListTile(
      //       title: Text("login"),
      //       trailing: Icon(Icons.login),
      //     ),
      //     Divider(thickness:2,color:Colors.blue),
      //     ListTile(
      //       title: Text("logout"),
      //       trailing: Icon(Icons.logout),
      //     ),
      //     Divider(thickness:2,color:Colors.blue),
      //     ListTile(
      //       title: Text("help"),
      //       trailing: Icon(Icons.help),
      //       onTap: (){
      //         print("clicked help button");
      //       },
      //     ),
      //     Divider(thickness:2,color:Colors.blue),
      //     ListTile(
      //       title: Text("support"),
      //       trailing: Icon(Icons.support),
      //     ),
      //   ],),
      //   ),
      body: Container(
        //  height: MediaQuery.of(context).size.width /3,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back.jpg"),
             fit: BoxFit.cover,
          ),
        ),
      
        child: Column(

           mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
                
            //     Icon(Icons.home,size: 150,color: Colors.red,),
            //     Icon(Icons.local_gas_station,size: 150,color: Colors.blue),
            //     Icon(Icons.money,size: 50,color: Colors.green),
            //   ],
            // ),
            
            Column(
              
              children: <Widget>[
                MaterialButton(
                  minWidth: double.infinity,
                   height: 50,
                  // minWidth: 400,
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: false,
                builder: (context){
                return SecondScreen();
              }));
             },
            //  child: Text("LOGIN"),
            color: Colors.white,
             shape: RoundedRectangleBorder(
               side: BorderSide (
                 color: Colors.black ),
                 borderRadius: BorderRadius.circular(60)
               
               ),
               child: Text("LOGIN"),
                )

            ],
          ),

          Column(
              
              children: <Widget>[
                MaterialButton(
                   minWidth: double.infinity,
                  height: 50,
                  // minWidth: 350,
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: false,
                builder: (context){
                return ThirdScreen();
              }));
             },
            //  child: Text("REGISTER"),
            color: Colors.blue,
             shape: RoundedRectangleBorder(
               side: BorderSide (
                 color: Colors.black ),
                 borderRadius: BorderRadius.circular(60)
               
               ),
               child: Text("REGISTER"),
                )

            ],
          ),
            

            // Column(
            //   children: [
            //     ElevatedButton(onPressed:(){
            //       Navigator.push(context, MaterialPageRoute(
            //     fullscreenDialog: false,
            //     builder: (context){
            //     return SecondScreen();
            //   }));
            //       // print("clicked submit button");
            //       // Fluttertoast.showToast(msg:"clicked");
            //     }, child: Text("LOGIN")),
            //   ],
            // ),

            //  Column(
            //   children: [
            //     ElevatedButton(onPressed:(){
            //       // print("clicked submit button");
            //       // Fluttertoast.showToast(msg:"clicked");
            //     }, child: Text("REGISTER")),
            //   ],
            // ),
            // Icon(Icons.account_balance,size:150,color: Colors.purple),
            // SizedBox(
            //   height: 200,
            //   width: 200,
            //   child: Image.network("https://static3.depositphotos.com/1002188/144/i/600/depositphotos_1448005-stock-photo-smile.jpg")
              
            //   ),
              // SizedBox(
              // height:200,
              // width:200,
              //   child: Image.network("https://images.saymedia-content.com/.image/t_share/MTc2Mjk3ODQ0NTY1NjE1Nzg5/mobile-legends-alucard-build-guide.jpg")
              // ),
                // Column(
                //   children: [
                //     Container(
                //       height: 100,
                //       width: 200,
                //       color: Colors.black,
                //       child: Center(child: Text("This is container",style: TextStyle(color: Colors.white),)),
                //     ),
                //   ],
                // ),
            // Column(
            //   children: [
            //     Text("welcome to sujith demo flutter project app",style:TextStyle(color: Colors.green,fontSize: 20)),
  
            // Text("You have pushed the button this many times:",style: TextStyle(fontSize: 20)),
            //   ],
            // )
             
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            // ElevatedButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(
            //     fullscreenDialog: false,
            //     builder: (context){
            //     return SecondScreen();
            //   }));
            // }, child: Text("Click here for next screen"))
            //  ]),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
        ),
      ),
          body: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),

            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
               children: [
              //     InkWell(
              // onTap: ()async{
              //   await launch("https://learn.verzeo.in/courses/take/copy-of-android-development-may-2021-batch/lessons/25770591-class-5");
              // },
              // child: Icon(Icons.help)),
                //  SizedBox(
                //    height: 200,
                //    width: 200,
                //    child: Image.asset('assets/insta.png')),
            // InkWell(
            //   onTap: ()async{
            //     await launch("https://learn.verzeo.in/courses/take/copy-of-android-development-may-2021-batch/lessons/25770591-class-5");
            //   },
            //   child: Icon(Icons.help)),
              // Icon(Icons.help),
            Column(
              children: [
                // Text("welcome to 2nd screen",style: TextStyle(fontSize: 25),),
                // Text("Thank you for submitting",style: TextStyle(fontSize: 25),),
                ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: false,
                builder: (context){
                return ThirdScreen();
              }));
            }, child: Text("Click here for third screen"))
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.logout,size:65,color:Colors.blue)),
          ],
          
        ),  
      ),
    );
  }
}


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({ Key? key }) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
           
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
               children: [
            Column(
              children: [
                Text("welcome to 3rd screen",style: TextStyle(fontSize: 25),),
                Text("Thank you for submitting",style: TextStyle(fontSize: 25),),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: false,
                builder: (context){
                return FourthScreen();
              }));
            }, child: Text("Click here for fourth screen"))
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.logout,size:65,color:Colors.blue)),
          ], 
        ),  
      ),
    );
  }
}

class FourthScreen extends StatefulWidget {
  const FourthScreen({ Key? key }) : super(key: key);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
               children: [
              Icon(Icons.help),
            Column(
              children: [
                Text("welcome to 4th screen",style: TextStyle(fontSize: 25),),
                Text("Thank you for submitting",style: TextStyle(fontSize: 25),),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: false,
                builder: (context){
                return FifthScreen();
              }));
            }, child: Text("Click here for fifth screen"))
              ],
            ),
          ], 
        ),  
      ),
    );
  }
}

class FifthScreen extends StatefulWidget {
  const FifthScreen({ Key? key }) : super(key: key);

  @override
  _FifthScreenState createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
               children: [
              Icon(Icons.help),
            Column(
              children: [
                Text("welcome to 5th screen",style: TextStyle(fontSize: 25),),
                Text("Thank you for submitting",style: TextStyle(fontSize: 25),),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: false,
                builder: (context){
                return SixthScreen();
              }));
            }, child: Text("Click here for sixth screen"))
              ],
            ),
          ], 
        ),  
      ),
    );
  }
}

class SixthScreen extends StatefulWidget {
  const SixthScreen({ Key? key }) : super(key: key);

  @override
  _SixthScreenState createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
               children: [
              Icon(Icons.help),
            Column(
              children: [
                Text("welcome to 6th screen",style: TextStyle(fontSize: 25),),
                Text("Thank you for submitting",style: TextStyle(fontSize: 25),),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: false,
                builder: (context){
                return SeventhScreen();
              }));
            }, child: Text("Click here for seventh screen"))
              ],
            ),
          ], 
        ),  
      ),
    );
  }
}

class SeventhScreen extends StatefulWidget {
  const SeventhScreen({ Key? key }) : super(key: key);

  @override
  _SeventhScreenState createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.tealAccent,
          body: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      //     body: Center(
      //       child: ListView(
      //         //mainAxisAlignment: MainAxisAlignment.center,
      //          children: [
      //         Icon(Icons.help),
      //       Column(
      //         children: [
      //           Text("welcome to 7th screen",style: TextStyle(fontSize: 25),),
      //           Text("Thank you for submitting",style: TextStyle(fontSize: 25),),

      //         ],
      //       ),
      //     ], 
      //   ),  
      // ),
      child: Column(
        children: [
          Text("welcome to 7th screen",style: TextStyle(fontSize: 35),),
        ],
      ),
          ),
    );
  }
}