import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom/foundation/sp_icon/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 68,
          child: ListTile(
            leading: SPIcon(assetname: "orders.png", 
            ),
            title: Text("Orders",
              style: Theme.of(context).textTheme.bodyLarge, 
          
            ),
            subtitle: Text("Check your orders",
             style: Theme.of(context).textTheme.bodyMedium, 
            ),
            trailing: Icon(CupertinoIcons.chevron_forward,
              size: 18,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}