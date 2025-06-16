import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialLinksRow extends StatelessWidget {
  const SocialLinksRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          child: Image.asset("assets/github.png"),
          onTap: () {
            launchUrlString("https://github.com/dhruvladani04");
          },
        ),
        InkWell(
          child: Image.asset("assets/linkedin.png"),
          onTap: () {
            launchUrlString("https://www.linkedin.com/in/dhruv-ladani-a65578252/");
          },
        ),
        InkWell(
          child: Image.asset("assets/instagram.png"),
          onTap: () {
            launchUrlString("https://www.instagram.com/dhruv_rockstar04/");
          },
        ),
        InkWell(
          child: Image.asset("assets/twitter.png"),
          onTap: () {
            launchUrlString("https://x.com/DhruvLadani04");
          },
        ),
      ],
    );
  }
}

class CodingProfileLinksRow extends StatelessWidget {
  const CodingProfileLinksRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          child: Image.asset("assets/codechef_logo.png"),
          onTap: () {
            launchUrlString("https://www.codechef.com/users/dhruvcodes04");
          },
        ),
        InkWell(
          child: Image.asset("assets/leetcode_logo.png"),
          onTap: () {
            launchUrlString("https://leetcode.com/u/dhruv_codes04/");
          },
        ),
        InkWell(
          child: Image.asset("assets/codeforces_icon.png"),
          onTap: () {
            launchUrlString("https://codeforces.com/profile/dhruv_codes04");
          },
        ),
      ],
    );
  }
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Portfolio App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/dhruv_image.jpg'),
                ),
                SizedBox(height: 16.0),
                Text(
                  "I am Dhruv Ladani",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    launchUrlString("https://drive.google.com/file/d/14GKnMAUDM3nIX06PmyDqs1tRYY5rUKsZ/view?usp=sharing");
                  },
                  child: Text("Resume", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Mobile App Developer at WebMobi360",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center, // Keep for potentially multi-line text
                ),
                SizedBox(height: 8.0),
                Text(
                  "CSE student at Pandit Deendayal Energy University",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center, // Keep for potentially multi-line text
                ),
                SizedBox(height: 16.0),
                Text(
                  "Skills : ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Coding Languages like Kotlin,Java,Dart,C++",
                      style: TextStyle(fontSize: 15.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "I am familiar with frameworks like Android Studio, Flutter , SpringBoot",
                      style: TextStyle(fontSize: 15.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "I am a Competitve Programmer as well below are my coding profiles",
                      style: TextStyle(fontSize: 15.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16.0),
                    SizedBox(
                      height: 40.0, // Height for the row of icons
                      child: CodingProfileLinksRow(),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "My social media handles : ",
                      style:
                          TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
                SizedBox(
                  height: 50.0, // Height for the row of icons
                  child: SocialLinksRow(),
                ),
                SizedBox(height: 24.0),
                Text(
                  "Projects",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 16.0),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Portfolio App",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "The very app you are looking at! A personal portfolio built using Flutter, showcasing skills, projects, and contact information.",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // No action for now
                          },
                          child: Text("View on GitHub (soon)"),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E-commerce Backend",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "A robust backend system for an e-commerce platform, built with Spring Boot, Java, and MySQL. Features include product management, user authentication, and order processing.",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // No action for now
                          },
                          child: Text("View Project"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}