import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom/foundation/sp_icon/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({Key? key, 
  required this.title, 
  this.subtitle, 
  required this.assetName, 
  required this.isLast }) : super(key: key);

  final String title;
  final String? subtitle;
  final String assetName;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 68,
          child: ListTile(
            leading: SPIcon(assetname: assetName, 
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge, 
          
            ),
            subtitle: subtitle!=null? Text(
             subtitle!,
             style: Theme.of(context).textTheme.bodyMedium, 
            )
            : null,
            trailing: InkWell(
              onTap: () {},
              child: const Icon(
                CupertinoIcons.chevron_forward,
                size: 18,
              ),
            ),
          ),
        ),
      isLast? Container() : const Divider(),
      ],
    );
  }
}