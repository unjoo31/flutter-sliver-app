import 'package:flutter/material.dart';

class second_appbar extends StatelessWidget {
  const second_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height,
            leading: Icon(Icons.menu),
            title: Text("Around"),
            flexibleSpace: PageView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Image.network(
                  "https://picsum.photos/id/${index + 50}/200/300",
                  fit: BoxFit.cover,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
