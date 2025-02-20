import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(Applications());
}

class Applications extends StatelessWidget {
  const Applications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Vazir'),
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 15,
            ),
            _getHeader(),
            SizedBox(height: 15),
            _getSocialMedia(),
            SizedBox(height: 15),
            _getSkills(),
            SizedBox(height: 20),
            _getResume(),
          ],
        ),
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
            // fontFamily: 'Vazir',
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'I am a Flutter developer with one year of experience in designing and implementing cross-platform applications. My focus is on creating smooth, engaging, and optimized user experiences. With a creative and problem-solving mindset, I am always eager to learn new technologies and enhance my skills. I am excited to join your team, learn from experienced members, and collaborate to build high-quality and innovative applications together.',
          style: TextStyle(
            // fontFamily: 'Vazir',
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
          // fontFamily: 'Vazir',
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _getSocialMedia() {
    return Wrap(
      spacing: 15,
      children: [
        Icon(
          FontAwesomeIcons.github,
          color: Colors.black,
          size: 30,
        ),
        Icon(
          FontAwesomeIcons.linkedin,
          color: Colors.blue,
          size: 30,
        ),
        Icon(
          Icons.mail,
          color: Colors.red,
          size: 30,
        ),
      ],
    );
  }

  Widget _getSkills() {
    var list = ['Dart', 'Flutter', 'Git'];
    return Wrap(
      children: [
        for (var skill in list)
          Card(
            shadowColor: Colors.blue,
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(2),
              width: 80,
              child: Column(
                children: [
                  Image.asset('images/$skill.png'),
                  Text('$skill'),
                ],
              ),
            ),
          ),
      ],
    );
  }

  _getResume() {
    var list = [
      'Computer Engineering student at Islamic Azad University, North Tehran Branch, since September 2022.'
    ];
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: Colors.grey[500],
      child: Column(
        children: [
          Text(
            'My Resume:',
            style: TextStyle(
              // fontFamily: 'vazir',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 5),
          for (var resume in list)
            Text(
              '$resume',
              style: TextStyle(
                // fontFamily: 'vazir',
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
        ],
      ),
    );
  }
}
