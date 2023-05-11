import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:sigac/controllers/mainscreen_provider.dart';
import 'package:sigac/views/shared/bottom_nav_widget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 0;
                      },
                      icon: mainScreenNotifier.pageIndex == 0
                          ? Ionicons.home
                          : Ionicons.home_outline),
                  BotomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 1;
                      },
                      icon: mainScreenNotifier.pageIndex == 1
                          ? Ionicons.search
                          : Ionicons.search_outline),
                  BotomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 2;
                      },
                      icon: mainScreenNotifier.pageIndex == 2
                          ? Ionicons.clipboard
                          : Ionicons.clipboard_outline),
                  BotomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 3;
                      },
                      icon: mainScreenNotifier.pageIndex == 3
                          ? Ionicons.man
                          : Ionicons.man_outline),
                  BotomNavWidget(
                      onTap: () {
                        mainScreenNotifier.pageIndex = 4;
                      },
                      icon: mainScreenNotifier.pageIndex == 4
                          ? Ionicons.extension_puzzle
                          : Ionicons.extension_puzzle_outline),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
