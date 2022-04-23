
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/logics/container_logic.dart';

class BottomNavigation extends StatelessWidget {
   BottomNavigation({Key? key}) : super(key: key);
  final ContainerLogic logic = Get.find<ContainerLogic>();

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'خانه',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'دسته بندی',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'درباره',
        ),
      ],
      currentIndex: logic.selectedIndex.value,
      selectedItemColor: Colors.purple,
      onTap: _onItemTapped,
    );
  }
  void _onItemTapped(int index) {
    logic.selectedIndex.value = index;
  }
}
