import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/settings_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // home list tile
          MyDrawerTile(
            text: "Home",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          // setting list tile
          MyDrawerTile(
            text: "Settings",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          // logout list tile
          const Spacer(),
          MyDrawerTile(
            text: "Log out",
            icon: Icons.logout_rounded,
            onTap: logout,
          ),

          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }
}
