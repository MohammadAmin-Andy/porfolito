import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Applications());
}

class Applications extends StatelessWidget {
  const Applications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppBar(),
        backgroundColor: Color(0xff8d99ae),
        body: SafeArea(
          child: _getContents(),
        ),
      ),
    );
  }

  Widget _getContents() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 15,
          ),
          _getHeader(),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Column _getHeader() {
    return Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('images/user.png'),
        ),
        SizedBox(height: 10),
        Text(
          'Mohammadamin Amirkolaei Andy\nMobile Delveloper by Flutter',
          style: TextStyle(
            fontFamily: 'Vazir',
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'I am a Flutter developer with one year of experience in designing and implementing cross-platform applications. My focus is on creating smooth, engaging, and optimized user experiences. With a creative and problem-solving mindset, I am always eager to learn new technologies and enhance my skills. I am excited to join your team, learn from experienced members, and collaborate to build high-quality and innovative applications together.',
          style: TextStyle(
            fontFamily: 'Vazir',
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  AppBar _getAppBar() {
    return AppBar(
      backgroundColor: Color(0xff427aa1),
      title: Text(
        'MohammadAmin - Andy',
        style: TextStyle(
          fontFamily: 'Vazir',
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      centerTitle: true,
    );
  }
}
