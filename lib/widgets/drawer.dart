// ignore_for_file: unused_import, implementation_imports, unnecessary_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sidebarx/sidebarx.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: SidebarXController(selectedIndex: 0, extended: false),
      items: const [
        SidebarXItem(icon: Icons.home, label: 'Home'),
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
        ),
        SidebarXItem(icon: Icons.search, label: 'Search'),
      ],
    );
  }
}
