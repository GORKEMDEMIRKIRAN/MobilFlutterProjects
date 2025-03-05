import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';


// THE CASE STUDY

// User interface design has been carried out in this project.
// Packages have been added for icons.


void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp>{

   Widget _currentBody=HomePage();


   void _changePage(Widget newPage) {
     setState(() {
       _currentBody = newPage;
     });
   }

   final List<Widget> _pages = [
     HomePage(),
     SearchPage(),
     ProfilePage(),
   ];

   int _currentIndex=0;
   void _ch_Page(int index) {
     setState(() {
       _currentIndex = index;
     });
   }


   int _selectedIndex = 0;
   @override
   Widget build(BuildContext context){
     return MaterialApp(
         home:Scaffold(
         body:IndexedStack(
           index:_currentIndex,
           children: _pages,
         ),
         bottomNavigationBar: BottomNavigationBar(
           type:BottomNavigationBarType.fixed,
           selectedItemColor: Colors.green,
           unselectedItemColor: Colors.black,
           currentIndex: _selectedIndex,
           onTap:(int index){
             setState(() {
               _selectedIndex=index;
             });
           },
           items: const <BottomNavigationBarItem>[
             BottomNavigationBarItem(icon: Icon(Icons.home,size:18,),label:"Home"),
             BottomNavigationBarItem(icon: Icon(Icons.window,size:15,),label:"Products"),
             BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner,size:55),label:"Al Scanner"),
             BottomNavigationBarItem(icon: Icon(Icons.wallet_travel,size:18,),label:"My Cart"),
             BottomNavigationBarItem(icon: Icon(Icons.person,size:18,),label:"Profile"),
           ],
         ),
       ),
     );

   }

}



// HomePage
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
//========================================================
// FIRST PAGE
// accept the terms
class _HomePageState extends State<HomePage> {
  bool _isChecked_one=false;
  bool _isChecked_two=false;
  bool _ex=true;
  @override
  Widget build(BuildContext context){

    final parentState = context.findAncestorStateOfType<_MyAppState>();
    return Scaffold(
        body:Column(
        children:<Widget>[
          Expanded(
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 304,
                        width: 327,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border:Border.all(
                              color:Colors.blueGrey,
                              width: 1,
                            )
                        ),
                        child: Center(
                          child: Container(
                            color: Colors.white,
                            height: 266,
                            width: 287,
                            child: Column(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent, // Butonun arka planını şeffaf yap
                                      elevation: 0, // Butonun gölgesini kaldır
                                      padding: EdgeInsets.all(0), // Butonun içindeki boşluğu sıfırla
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _ex = !_ex;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end, // Sağ tarafa yaslamak
                                      children: <Widget>[
                                        Icon(
                                          color: Colors.black,
                                          _ex
                                              ? Icons.close // "X" simgesi
                                              : Icons.restart_alt, // Alternatif simge
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Text(
                                  "Terms & Conditions",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  "By using the AI Skin Reader, I understand"
                                      " that Smart Beauty will collect and process"
                                      " my image and information that I provide "
                                      "(such as age, skin type, etc.) In accordance"
                                      " with the The Purest Solutions Privacy Policy"
                                      " to provide me with my skin analysis, recommend "
                                      "formulas and internal research, including the"
                                      " ability to improve our skin analysis and product"
                                      " formulas. Visit our Privacy Policy page to learn more.",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color:Colors.black54,
                                  ),
                                ),

                                SizedBox(height: 20,),



                                Flexible(
                                  fit:FlexFit.tight,
                                  flex:1,
                                  child:ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shadowColor: Colors.transparent,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide.none,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isChecked_one = !_isChecked_one;
                                      });
                                    },
                                    child:Align(
                                      alignment: Alignment.centerLeft,
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:<Widget> [
                                          Icon(
                                            _isChecked_one
                                                ? Icons.check_box
                                                :Icons.check_box_outline_blank,
                                            size: 10,
                                          ),
                                          SizedBox(width:5.0,),
                                          Text(
                                              "I understand and accept the Privacy Policy.",
                                              style:TextStyle(
                                                fontSize: 8,
                                                color:Colors.black54,
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 2,),

                                Flexible(
                                  fit:FlexFit.tight,
                                  flex:1,
                                  child:ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shadowColor: Colors.transparent,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide.none,
                                      ),
                                    ),
                                    child:Align(
                                      alignment: Alignment.centerLeft,
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:<Widget> [
                                          Icon(
                                            _isChecked_two
                                                ? Icons.check_box
                                                :Icons.check_box_outline_blank,
                                            size: 10,
                                          ),
                                          SizedBox(width:5.0,),
                                          Text(
                                              "I understand and accept the Terms & Conditions",
                                              style:TextStyle(
                                                fontSize: 8,
                                                color:Colors.black54,
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _isChecked_two= !_isChecked_two;
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(height: 20,),



                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                    ],
                  ),

                  SizedBox(height:16,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [

                      Center(
                        child:ElevatedButton(
                          child:Container(
                              height: 56,
                              width: 326,
                              decoration: BoxDecoration(
                                color:Colors.black,
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ACCEPT THE TERMS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white,fontSize: 24),
                                  ),
                                ],
                              )
                          ) ,
                          onPressed: (){
                            if (_isChecked_one && _isChecked_two) {
                            // Her iki checkbox da false ise, yeni sayfaya geç
                                  parentState?._ch_Page(1);
                            }
                          },
                        ),
                      ),



                    ],
                  )

                ],
              ),
            ),
          ),



        ],
      )
    );
  }
}
//========================================================

//SECOND PAGE
// Take a selfie
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final parentState = context.findAncestorStateOfType<_MyAppState>();
    return Scaffold(
        appBar:AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
          onPressed: () {

            parentState?._ch_Page(0);
          },
        ),
      ),
      body:Column(
      children:<Widget>[
        Expanded(
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 476,
                      width: 327,
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:Border.all(
                            color:Colors.blueGrey,
                            width: 1,
                          )
                      ),
                      child: Center(
                        child: Container(
                          color: Colors.white,
                          height: 420,
                          width: 280,
                          child: Column(
                            children: [
                              //=============================
                              SizedBox(height: 20,),

                              Container(
                                height: 24,
                                width: 279,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Take a Selfie",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),

                              SizedBox(height: 20,),

                              Container(
                                height: 32,
                                width: 259,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Align your face and eyes with the lines and follow these steps for the best scan.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:Colors.black54,
                                  ),
                                ),
                              ),
                              //=============================
                              // second row
                              SizedBox(height: 30,),

                              Flexible(
                                  child:Row(
                                    children:<Widget> [
                                      SizedBox(width:22.0,),
                                      Container(
                                        height: 77,
                                        width: 77,
                                        child: Icon(FontAwesomeIcons.eye, size: 25.0, color: Colors.black54),
                                      ),
                                      SizedBox(width:82.0,),
                                      Container(
                                        height: 77,
                                        width: 77,
                                        child: Icon(Icons.light, size: 25.0, color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),

                              SizedBox(height: 5,),

                              Flexible(
                                  child:Row(
                                    children:<Widget> [
                                      Container(
                                        height: 50,
                                        width: 121,
                                        child: Text(
                                            textAlign: TextAlign.center,
                                            "Pull your hair back and remove anything that hides your skin.",
                                            style:TextStyle(
                                              fontSize: 12,
                                              color:Colors.black54,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:45.0,),
                                      Container(
                                        height: 50,
                                        width: 109,
                                        child: Text(
                                            textAlign: TextAlign.center,
                                            "Use a well-lit area for each scan.",
                                            style:TextStyle(
                                              fontSize: 12,
                                              color:Colors.black54,
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              //================================
                              // third row
                              SizedBox(height: 30,),

                              Flexible(
                                child:Row(
                                  children:<Widget> [
                                    SizedBox(width:22.0,),
                                    Container(
                                      height: 77,
                                      width: 77,
                                      child: Icon(FontAwesomeIcons.meh, size: 25.0, color: Colors.black54),
                                    ),
                                    SizedBox(width:82.0,),
                                    Container(
                                      height: 77,
                                      width: 77,
                                      child: Icon(FontAwesomeIcons.soap, size: 25.0, color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 5,),

                              Flexible(
                                child:Row(
                                  children:<Widget> [
                                    SizedBox(width:14.5,),
                                    Container(
                                      height: 30,
                                      width: 92,
                                      alignment: Alignment.center,
                                      child: Center(
                                        child: Text(
                                            textAlign: TextAlign.center,
                                            "Relax your face. No smiling.",
                                            style:TextStyle(
                                              fontSize: 12,
                                              color:Colors.black54,
                                            ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:58.0,),
                                    Container(
                                      height: 50,
                                      width: 101,
                                      alignment: Alignment.center,
                                      child: Center(
                                            child: Text(
                                                textAlign: TextAlign.center,
                                                "Make sure your face is clean of any products.",
                                                style:TextStyle(
                                                  fontSize: 12,
                                                  color:Colors.black54,
                                                )
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //================================
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
                  ],
                ),


                SizedBox(height:25,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [

                    Center(
                      child:ElevatedButton(
                        child:Container(
                            height: 56,
                            width: 326,
                            decoration: BoxDecoration(
                              color:Colors.black,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "TAKE A SELFIE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,fontSize: 24),
                                ),
                              ],
                            )
                        ) ,
                        onPressed: (){
                          parentState?._ch_Page(2);
                        },
                      ),
                    ),



                  ],
                )

              ],
            ),
          ),
        ),

      ],
    ),
    );
  }
}

//========================================================

// THIRD PAGE

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
      final parentState = context.findAncestorStateOfType<_MyAppState>();
      return Scaffold(
          appBar:AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {

                parentState?._ch_Page(1);
              },
            ),
          ),
          body:Column(
          children:<Widget>[
            Expanded(
              child:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 273,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              border:Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                              ),
                          ),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "“Smart Beauty” Would Like to Access the Camera",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                          ),
                        ],
                        ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Cancel Button
                        Container(
                          height: 50,
                          width: 136.5,
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide.none,
                              ),
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Allow Button
                        Container(
                          height: 50,
                          width: 136.5,
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide.none,
                              ),
                            ),
                            onPressed: () {
                              print("Tıklandı.");
                            },
                            child: Center(
                              child: Text(
                                "Allow",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),


                  ],
                ),
              ),
            ),
          ],


        ),
    );

  }
}
//========================================================









