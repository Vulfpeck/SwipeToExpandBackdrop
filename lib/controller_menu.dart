import 'package:flutter/material.dart';

class BackdropMenu extends StatelessWidget {
  final int selectedItem;
  final ValueChanged<int> onTileTap;
  final int itemCount;

  const BackdropMenu(
      {@required this.selectedItem,
      @required this.onTileTap,
      @required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Text(
                index.toString(),
              ),
              onTap: () {
                onTileTap(index);
              },
            );
          },
          itemCount: this.itemCount,
        ),
      ),
    );
  }
}
