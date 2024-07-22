import 'package:flutter/material.dart';

class ItemRedirectPage extends StatelessWidget {
  const ItemRedirectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item Redirect')),
      body: Text('Item has been redirected becuase the item number is even!'),
    );
  }
}
