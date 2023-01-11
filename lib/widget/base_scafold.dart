import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
    this.floatingActionButton,
    this.isLoading = false,
    this.isHaveSafeArea = true,
    this.padding,
    this.margin,
    this.decorationImage,
    this.isHaveAppBar = false,
    this.isShowMusicBar = false,
    this.leading,
    this.actions,
    this.isNeedToBack = true,
    this.leadingMargin,
  }) : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final bool isLoading;
  final bool isHaveSafeArea;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? leadingMargin;
  final ImageProvider<Object>? decorationImage;
  final bool isHaveAppBar;
  final bool isShowMusicBar;
  final Widget? leading;
  final bool isNeedToBack;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.backgroundDark,
          image: decorationImage != null ? DecorationImage(image: decorationImage!) : null,
        ),
        padding: padding,
        margin: margin,
        child: Stack(
          children: [
            if (isHaveSafeArea) SafeArea(child: _safeAreaChild(context)) else _safeAreaChild(context),
            if (isLoading) buildLoaderListItem() else const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _safeAreaChild(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        bottomNavigationBar: isShowMusicBar ? _buildBottomMusicBar() : null,
        appBar: isHaveAppBar
            ? AppBar(
                shadowColor: Colors.transparent,
                centerTitle: false,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                toolbarHeight: 33,
                actions: actions,
                title: Text(
                  "Good afternoon",
                  style: AppTextStyle.white.copyWith(fontSize: 25),
                ),
                leading: (isNeedToBack && leading != null)
                    ? AppButton(
                        width: 32,
                        margin: leadingMargin,
                        height: 32,
                        onTap: () => Navigator.pop(context),
                        backgroundColor: AppColors.buttonBack,
                        buttonShape: BoxShape.circle,
                        child: const Icon(
                          FontAwesomeIcons.chevronLeft,
                          color: AppColors.backIconColor,
                          size: 14,
                        ),
                      )
                    : null,
              )
            : null,
        floatingActionButton: floatingActionButton,
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        body: body,
      ),
    );
  }
}

Widget buildLoaderListItem() {
  return Container(
    padding: const EdgeInsets.all(45),
    child: const Center(
      child: CircularProgressIndicator(
        color: AppColors.kBrandPrimaryColor,
        backgroundColor: AppColors.kWhiteBackgroundColor,
        strokeWidth: 1,
      ),
    ),
  );
}

Widget _buildBottomMusicBar() {
  int currentTabIndex = 0;
  return StatefulBuilder(
    builder: (context, setState) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 60,
          alignment: Alignment.center,
          color: Colors.black38,
          child: Text(
            "Mini Player",
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        BottomNavigationBar(
          currentIndex: currentTabIndex,
          elevation: 0,
          onTap: (currentIndex) => setState(() {
            currentTabIndex = currentIndex;
          }),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          selectedItemColor: AppColors.backgroundDark,
          backgroundColor: AppColors.miniPlayerBackGround,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.library_books), label: "")
          ],
        )
      ],
    ),
  );
}
