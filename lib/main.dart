import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Register Page',
      theme: ThemeData(
        // This is the theme of your application.
        //

        primarySwatch: Colors.blue,
      ),
    home: const MyHomePage(title: 'Register Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  late String email;
  late String username;
  late String password;
  late String phone;




  @override

  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child:SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0), child:
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                ),

              ),
              onChanged: (value){
                setState(() {
                  email=value;

                });
              },

            ),),
            Padding(padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0), child:
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.verified_user),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                ),

              ),


              onChanged: (value){
                setState(() {
                  username=value;

                });
              },

            ),),
            Padding(padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0), child:
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.password_rounded),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                ),

              ),
              onChanged: (value){
                setState(() {
                  password=value;
                });
              },

            ),),
            Padding(padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0), child:
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                ),

              ),
              onChanged: (value){
                phone=value;

              },



            ),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              child: MaterialButton(
                child: Text('Register', textAlign: TextAlign.center,style: TextStyle(

                  color: Colors.white,
                ),),
                color: Colors.blue,

                onPressed: (

                    ) {
                  print(email);
                  print(username);
                  print(password);
                  print(phone);



                },

              ),

            ),


          ],
        ),
      ),
      ),
    );


  }
}
