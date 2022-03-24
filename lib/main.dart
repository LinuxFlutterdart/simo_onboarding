import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 40),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://i.pinimg.com/originals/07/c4/d9/07c4d976a25d84ee482839ce280678b7.jpg')
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Find\nthe perfect\nplace', style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
              SizedBox(height: 18,),
              Text('Create a unique story\nthat describes letter\nthan words', style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white
              ),),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){},child: Text('skip', style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white
                  ),),),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),  
                      Container(
                        width: 30,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(.5)
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(.5)
                        ),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      )
    );
  }
}
