import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetup_app/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Firebase Meetup',
      theme: ThemeData(

          buttonTheme: Theme
              .of(context)
              .buttonTheme
              .copyWith(

              highlightColor: Colors.deepPurple

          ),
          primarySwatch: Colors.deepPurple,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme
                .of(context)
                .textTheme,
          ),

          visualDensity: VisualDensity.adaptivePlatformDensity
      ),

      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Firebase MeetUp'),
        ),

        body: ListView(
          children: [

            Image.asset("assets/codelab.png"),
            SizedBox(height: 8,),
            IconAndDetail(Icons.calendar_month, "October 30"),
            IconAndDetail(Icons.location_city, "San Francisco"),
            Divider(
              height: 8,
              color: Colors.grey,
              thickness: 1,
              indent: 8,
              endIndent: 8,
            ),
            Header("What we'll be doing"),
            Paragraph("Join us for a day full of firebase workshops")


          ],
        )


    );
  }

}


