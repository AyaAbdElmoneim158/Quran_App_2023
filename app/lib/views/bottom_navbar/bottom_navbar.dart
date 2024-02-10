import 'package:app/views/bottom_navbar/cubit/bottom_navbar_cubit.dart';
import 'package:app/views/bottom_navbar/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavbarCubit, BottomNavbarState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BottomNavbarCubit.get(context);

        return Scaffold(
          /* key: cubit.scaffoldKey,
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () => cubit.scaffoldKey.currentState!.openDrawer(),
              icon: Image.asset(ImageAssets.menuIcon),
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                CustomDrawer(
                  isDarkMode: cubit.theme,
                  onTap: () => cubit.switchTheme(),
                ),
              ],
            ),
          ),*/
          bottomNavigationBar: CustomBottomNavbar(
            items: cubit.items(),
            onTap: (value) => cubit.changeBottomNavbar(value),
          ),
          body: cubit.screens(context)[cubit.currentIndex],
        );
      },
    );
  }
}
