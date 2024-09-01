
import 'package:flutter/material.dart';
import 'package:theme_app/generated/l10n.dart';
import 'package:theme_app/theme_manager.dart';

class HomeScreen extends StatefulWidget {
  final ThemeManager themeManager;

  const HomeScreen({super.key, required this.themeManager});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  _themeListner(){
    if(mounted &&widget. themeManager.themeMode!=Theme.of(context).brightness){
      setState(() {
        
      });
    }
  }

  @override
  void initState() {
widget. themeManager.addListener(_themeListner);
    super.initState();
  }

  @override
  void dispose() {
 widget. themeManager.removeListener(_themeListner);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simple Theme App'),
          actions: [
            Switch(
              value: widget.themeManager.themeMode==ThemeMode.dark,
              onChanged: (value) {
                print(value);
                setState(() {
                  widget.themeManager.toggleTheme(value);
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            S.of(context).title,
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
  }
}