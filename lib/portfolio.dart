import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PortfolioApp extends StatelessWidget
{
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("My Portfolio App",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: Center(child: Column(
        children: [
          CircleAvatar(radius: 60.0,
          backgroundImage: AssetImage('assets/dhruv_image.jpg'),),
          SizedBox(height: 10.0),
          Text("I am Dhruv Ladani",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
          ElevatedButton(onPressed: (){
            launchUrlString("https://drive.google.com/file/d/14GKnMAUDM3nIX06PmyDqs1tRYY5rUKsZ/view?usp=sharing");
          }, child: Text("Resume",style: TextStyle(color: Colors.white),),
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),),
          SizedBox(height: 10.0,),
          Text("Mobile App Developer at WebMobi360",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center),
          Text("CSE student at Pandit Deendayal Energy University",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center),
          SizedBox(height: 10.0,),
          Text("Skills : ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
          SizedBox(
            height: 200.0,
            child: Column(
              children: [
                Text("Coding Languages like Kotlin,Java,Dart,C++",style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center),
                Text("I am familiar with frameworks like Android Studio, Flutter , SpringBoot",style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center),
                Text("I am a Competitve Programmer as well below are my coding profiles",style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center),
                SizedBox(height: 10.0,),
                SizedBox(
                  height: 40.0,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(child: Image.asset("assets/codechef_logo.png"),
                        onTap: (){
                          launchUrlString("https://www.codechef.com/users/dhruvcodes04");
                        },),
                      InkWell(child: Image.asset("assets/leetcode_logo.png"),
                        onTap: (){
                          launchUrlString("https://leetcode.com/u/dhruv_codes04/");
                        },),
                      InkWell(child: Image.asset("assets/codeforces_icon.png"),
                        onTap: (){
                          launchUrlString("https://codeforces.com/profile/dhruv_codes04");
                        },),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("My social media handles : ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              InkWell(child: Image.asset("assets/github.png"),
              onTap: (){
                launchUrlString("https://github.com/dhruvladani04");
                },),
              InkWell(child: Image.asset("assets/linkedin.png"),
              onTap: (){
                launchUrlString("https://www.linkedin.com/in/dhruv-ladani-a65578252/");
              },),
              InkWell(child: Image.asset("assets/instagram.png"),
              onTap: (){
                launchUrlString("https://www.instagram.com/dhruv_rockstar04/");
              },),
                InkWell(child: Image.asset("assets/twitter.png"),
                  onTap: (){
                    launchUrlString("https://x.com/DhruvLadani04");
                  },),
            ],

            ),
          )
        ],
      ),),
    );
  }
}