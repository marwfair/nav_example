import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Items')),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
              onTap: () {
                context.goNamed('itemDetails',
                    pathParameters: {'id': index.toString()});
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 10,
        ));
  }
}
