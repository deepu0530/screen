import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:screen/screens/dining.dart';
import 'package:screen/screens/delivery.dart';
import 'package:screen/screens/pro.dart';


class PersistantBottomNavigation extends StatefulWidget {
  const PersistantBottomNavigation({Key? key}) : super(key: key);

  @override
  State<PersistantBottomNavigation> createState() => _PersistantBottomNavigationState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PersistantBottomNavigationState extends State<PersistantBottomNavigation> {
 List<Widget> _buildScreens() {
        return [
          Delivery(),
          Dining(),
          Pro()
        ];
    }
    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: Icon(Icons.delivery_dining),
                title: ("Delivery"),
                activeColorPrimary: Colors.red,
                inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.dining),
                title: ("Dining"),
                activeColorPrimary: Colors.red,
                inactiveColorPrimary: Colors.grey,
            ),
             PersistentBottomNavBarItem(
                icon: Icon(Icons.settings),
                title: ("Pro"),
                activeColorPrimary: Colors.red,
                inactiveColorPrimary: Colors.grey,
            ),
        ];
    }


final _controller = PersistentTabController(initialIndex: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
      ),
 
      );
  }
}
