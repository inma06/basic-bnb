import 'package:basic_bnb/src/view/components/custom_appbar.dart';
import 'package:basic_bnb/src/view/pages/me/me_widget.dart';
import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  const MePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: CustomAppBar(title: '마이페이지')),
      body: Column(
        children: [
          Text('라이센스'),
          Text('라이센스'),
          Text('라이센스'),
          Text('라이센스'),
          Text('라이센스'),
        ],
      ),
    );
  }
}
