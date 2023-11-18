import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturantbook/homepage.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.only(top: 100, bottom: 40),
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(
                  "https://goodmockups.com/wp-content/uploads/2022/02/Free-Tri-Fold-Restaurant-Food-Menu-Mockup-PSD-Set-2.jpg",
                ),
                fit: BoxFit.cover,
                opacity: 0.7 // بيتحكم في الاضائة
                ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Resturant Book",
                  style:
                      GoogleFonts.pacifico(fontSize: 50, color: Colors.white)),
              Column(
                children: [
                  
                 const  SizedBox(
                    height: 80,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute( builder: (context)=> MyHomePage()));
                    },
                    child: Container(
                       child: Text("Get Start",style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold, letterSpacing: 1),),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      decoration: BoxDecoration(
                        color: Color(0xFFE57743),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}