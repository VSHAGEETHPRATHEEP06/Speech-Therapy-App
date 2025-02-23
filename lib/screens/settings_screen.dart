import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkTheme = false;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: Text('Dark Theme'),
            subtitle: Text('Enable dark mode for the app'),
            value: isDarkTheme,
            onChanged: (value) {
              setState(() {
                isDarkTheme = value;
              });
              // Add logic to update the theme in app preferences
            },
          ),
          SwitchListTile(
            title: Text('Enable Notifications'),
            subtitle: Text('Receive app notifications'),
            value: notificationsEnabled,
            onChanged: (value) {
              setState(() {
                notificationsEnabled = value;
              });
              // Add logic to handle notification preferences
            },
          ),
          ListTile(
            title: Text('Update Profile'),
            subtitle: Text('Edit your profile details'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to profile update screen
              Navigator.pushNamed(context, '/updateProfile');
            },
          ),
        ],
      ),
    );
  }
}
