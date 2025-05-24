import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[900]),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[800]),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('I am Srikanth Nagesh, a passionate Computer Science graduate student at BGSU with experience in web development, data analytics, and machine learning.', style: Theme.of(context).textTheme.bodyMedium)]),
                  ),
                  _buildEducationSection(context),
                  _buildSkillsSection(context),
                  _buildExperienceSection(context),
                  _buildProjectsSection(context),
                  _buildContactSection(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, IconData icon, Widget content) {
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
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            SizedBox(height: 12),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildEducationSection(BuildContext context) {
    return _buildSection(
      context,
      'Education',
      Icons.school,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildEducationItem('Master of Science in Computer Science', 'Bowling Green State University | Ohio, USA | GPA - 3.8', '2024 - Present', context),
          _buildEducationItem('Bachelor of Technology in Computer Science', 'Malla Reddy Institute of Engineering & Technology | Telangana, India | GPA - 6.6/10', '2019 - 2023', context),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String degree, String institution, String year, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(degree, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[900])),
        SizedBox(height: 4),
        Text(institution, style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 4),
        Text(year, style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey[600])),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _buildSkillsSection(BuildContext context) {
    return _buildSection(
      context,
      'Technical Skills',
      Icons.code,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSkillCategory('Languages', ['C', 'Python', 'SQL'], context),
          _buildSkillCategory('Web Development', ['HTML', 'CSS', 'JavaScript', 'Node.js', 'MongoDB', 'Django'], context),
          _buildSkillCategory('Others', ['MS Office suite', 'Big Data Analysis', 'Tableau', 'MongoDB'], context),
          _buildSkillCategory('Soft Skills', ['Effective communicator', 'Team collaboration', 'Time management', 'Leadership'], context),
        ],
      ),
    );
  }

  Widget _buildSkillCategory(String category, List<String> skills, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$category:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[900])),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: skills.map((skill) => Chip(label: Text(skill, style: TextStyle(fontSize: 14)))).toList(),
        ),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _buildExperienceSection(BuildContext context) {
    return _buildSection(
      context,
      'Professional Work Experience',
      Icons.work,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildExperienceItem(
            'Graduate Assistantship - Institutional Research (BGSU)',
            'September 2024 - Present',
            [
              'Collaborated with a team in data collection, analysis and reporting to inform university planning and Decision-making.',
              'Assisted in preparing statistical reports, surveys, and dashboards for internal and external stakeholders',
            ],
            context,
          ),
          _buildExperienceItem(
            'Web Development and Designing Intern | OASIS INFOBYTE | India',
            'June 2022 - August 2022',
            [
              'Collaborated with a team of designers and developers to implement user interface designs using HTML, CSS, and JavaScript,developed responsive and user-friendly web pages, ensuring cross-browser compatibility and adherence to design specifications.',
            ],
            context,
          ),
          _buildExperienceItem(
            'Machine Learning Intern | ZEBO.AI | India',
            'Feb 2022 - April 2022',
            [
              'Created a Classification model to detect the Mobile Price Range based on its features.',
              'Created a Classification model to detect whether a person is COVID positive or not based on the previous data.',
            ],
            context,
          ),
          _buildExperienceItem(
            'Data Analyst | Power Ads | India',
            'July 2023 - March 2023',
            [
              'Gathering data from a variety of sources, such as internal databases, external APIs, and third-party sources.',
              'I worked closely with cross-functional teams to collect and analyze large datasets from various sources, such as online ad platforms and customer interactions.',
            ],
            context,
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceItem(String title, String date, List<String> responsibilities, BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[800])),
      subtitle: Text(date, style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey[600])),
      children: responsibilities.map((resp) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: Theme.of(context).textTheme.bodyMedium),
            Expanded(child: Text(resp, style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildProjectsSection(BuildContext context) {
    return _buildSection(
      context,
      'Academic Projects',
      Icons.lightbulb,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProjectItem(
            'Machine Learning-based Classification and Prediction of DDoS Attacks',
            '(Pandas, Scikit-learn, Matplotlib) 2022',
            'Applied Random Forest algorithm for supervised learning on UNSW-nb15 dataset to generate clusters predicting the classes of attacks and classify with an accuracy score of 89%. Next, will use XGBoost algorithm to achieve accuracy of above 90%.',
            context,
          ),
          _buildProjectItem(
            'Identification of Health Insurance Claim Frauds',
            '(Python, Django) 2023',
            'Developed an interface which provides us with a decision if a claim is fraud or not, using Mixture of clinical concepts.',
            context,
          ),
          _buildProjectItem(
            'Graphical Password Authentication',
            '2023',
            'Implemented a secure Graphical Password Authentication system enhancing user login experience through image-based credentials.',
            context,
          ),
          _buildProjectItem(
            'MediScale: A Scalable Hadoop-Based Platform for Healthcare Data Integration and Analysis',
            '2024',
            'MediScale is a Hadoop-based platform that securely ingests, processes, and analyzes large-scale healthcare data, featuring a real-time website for live monitoring of patient trends and hospital resource usage.',
            context,
          ),
        ],
      ),
    );
  }

   Widget _buildProjectItem(String title, String technologiesYear, String description, BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[800])),
      subtitle: Text(technologiesYear, style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey[600])),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Text(description, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }

  Widget _buildContactSection(BuildContext context) {
    return _buildSection(
      context,
      'Contact',
      Icons.contact_mail,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => _launchUrl('mailto:karthiknagesh709@gmail.com'),
            child: Text('Email: karthiknagesh709@gmail.com', style: TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline)),
          ),
          SizedBox(height: 8),
          InkWell(
            onTap: () => _launchUrl('tel:+14193786703'),
            child: Text('Phone: 419-378-6703', style: TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline)),
          ),
           SizedBox(height: 8),
           Text('BGSU Email: Nsrikan@bgsu.edu', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
