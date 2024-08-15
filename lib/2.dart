import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationScreen(),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF1E1E2C),
        child: Stack(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, color: Colors.grey),
                  Icon(Icons.book, color: Colors.grey),
                  SizedBox(width: 56), // مساحة فارغة لحجم دائرة البحث
                  Icon(Icons.message, color: Colors.grey),
                  Icon(Icons.account_circle, color: Colors.grey),
                ],
              ),
            ),
            Positioned(
              top: -28, // نصف قطر الدائرة
              left: MediaQuery.of(context).size.width / 2 - 28, // نصف قطر الدائرة
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 28,
                child: Icon(Icons.search, color: Colors.white, size: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Messages'),
            Tab(text: 'Notifications'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MessagesTab(),
          NotificationsTab(),
        ],
      ),
    );
  }
}

class MessagesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        const Card(
          color: Color(0xFF2A2A3B),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
             
            leading: CircleAvatar(child: Text('B')),
            title: Text('Bert Pullman'),
            subtitle: Column(
              children: [
                Text('Congratulations on completing the first lesson, keep up the good work!'),
                 SizedBox(height: 10.0),
              ],
            ),
            
            trailing: Text('04:32 PM'),
             
          ),
        ),
        Card(
          color: Color(0xFF2A2A3B),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: CircleAvatar(child: Text('D')),
            title: Text('Daniel Lawson'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your course has been updated, you can check the new course in your study course.'),
                SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Color.fromARGB(255, 241, 159, 122),
                ),
              ],
            ),
            trailing: Text('04:32 PM'),
          ),
        ),
        Card(
          color: Color(0xFF2A2A3B),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: CircleAvatar(child: Text('N')),
            title: Text('Nguyen Shane'),
            subtitle: Column(
              children: [
                Text('Congratulations, you have completed your module.'),
                 SizedBox(height: 10.0),
              ],
            ),
            trailing: Text('12:00 AM'),
          ),
        ),
      ],
    );
  }
}

class NotificationsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        Card(
          color: Color(0xFF2A2A3B),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.red),
            title: Text('Successful purchase!'),
            subtitle: Text('Just now'),
          ),
        ),
        Card(
          color: Color(0xFF2A2A3B),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: Icon(Icons.school, color: Colors.blue),
            title: Text('Congratulations on completing the course!'),
            subtitle: Text('Just now'),
          ),
        ),
        Card(
          color: Color(0xFF2A2A3B),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: Icon(Icons.update, color: Colors.blue),
            title: Text('Your course has been updated.'),
            subtitle: Text('Just now'),
          ),
        ),
        Card(
          color: Color(0xFF2A2A3B),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: Icon(Icons.check_circle, color: Colors.blue),
            title: Text('Congratulations, you have finished the module!'),
            subtitle: Text('Just now'),
          ),
        ),
      ],
    );
  }
}
