import 'package:flutter/material.dart';
class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
      ),
    );
  }
}
