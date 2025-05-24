import 'package:flutter/material.dart';

void main() {
  runApp(SrikanthPortfolio());
}

class SrikanthPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Srikanth Nagesh Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[50],
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[900]),
          bodyText1: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),
      ),
      home: PortfolioHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Srikanth Nagesh'),
        elevation: 0,
        backgroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue[700],
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 60, color: Colors.blue[700]),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Srikanth Nagesh',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Computer Science Graduate Student',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection(
                    context,
                    'About Me',
                    Icons.person,
                    'I am Srikanth Nagesh, a passionate Computer Science graduate student at BGSU with experience in web development, data analytics, and machine learning.',
                  ),
                  _buildSection(
                    context,
                    'Education',
                    Icons.school,
                    '• Master of Science in Computer Science, Bowling Green State University, Ohio\n'
                    '• Bachelor of Technology in Computer Science, Malla Reddy Institute of Engineering & Technology, Telangana',
                  ),
                  _buildSection(
                    context,
                    'Technical Skills',
                    Icons.code,
                    'Languages: C, Python, SQL\n'
                    'Web: HTML, CSS, JavaScript, Node.js, MongoDB, Django\n'
                    'Others: Big Data Analysis, Tableau, MS Office',
                  ),
                  _buildSection(
                    context,
                    'Experience',
                    Icons.work,
                    '• Graduate Assistant (BGSU)\n'
                    '• Web Developer Intern (OASIS INFOBYTE)\n'
                    '• ML Intern (ZEBO.AI)\n'
                    '• Data Analyst (Power Ads)',
                  ),
                  _buildSection(
                    context,
                    'Projects',
                    Icons.lightbulb,
                    '• DDoS Attack Detection (Random Forest, XGBoost)\n'
                    '• Health Insurance Fraud Detection (Django)\n'
                    '• Graphical Password Auth\n'
                    '• MediScale: Hadoop for Healthcare',
                  ),
                  _buildSection(
                    context,
                    'Contact',
                    Icons.contact_mail,
                    'Email: karthiknagesh709@gmail.com\n'
                    'Phone: 419-378-6703',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, IconData icon, String content) {
    return Card(
      margin: EdgeInsets.only(bottom: 24),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.blue[700], size: 24),
                SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
