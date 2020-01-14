import 'package:flutter/widgets.dart';

import '../data.dart';

class HomeToyCard extends StatelessWidget {
  const HomeToyCard({
    Key key,
    @required this.toyData,
  }) : super(key: key);

  final Toy toyData;

  @override
  Widget build(BuildContext context) {
    return Text('Row: ${toyData.name}');
  }
}
