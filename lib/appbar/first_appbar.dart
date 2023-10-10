import 'package:flutter/material.dart';

class FirstAppBar extends StatelessWidget {
  const FirstAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // slivers : 찢어진 조각
        // slivers내부에는 Sliver타입만 들어갈 수 있다
        SliverAppBar(
          snap: true,
          floating: true,
          pinned: false,
          title: Text(
            "appbar2",
            style: TextStyle(color: Colors.white),
          ),
          expandedHeight: 250,
          flexibleSpace: Container(
            child: Image.network(
              "http://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverAppBar(
          pinned: true,
          title: Text(
            "appbar1",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text("${index}"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
        ),
      ],
    );
  }
}
