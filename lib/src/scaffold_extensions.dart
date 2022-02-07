import 'package:flutter/material.dart';

extension ScaffoldExtension on Scaffold {
  Scaffold copyWith({Key? key, Color backgroundColor = Colors.transparent}) => Scaffold(
        key: key ?? this.key,
        appBar: this.appBar,
        body: this.body,
        floatingActionButton: this.floatingActionButton,
        floatingActionButtonLocation: this.floatingActionButtonLocation,
        floatingActionButtonAnimator: this.floatingActionButtonAnimator,
        persistentFooterButtons: this.persistentFooterButtons,
        drawer: this.drawer,
        onDrawerChanged: this.onDrawerChanged,
        endDrawer: this.endDrawer,
        onEndDrawerChanged: this.onEndDrawerChanged,
        bottomNavigationBar: this.bottomNavigationBar,
        bottomSheet: this.bottomSheet,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: this.resizeToAvoidBottomInset,
        primary: this.primary,
        drawerDragStartBehavior: this.drawerDragStartBehavior,
        extendBody: this.extendBody,
        extendBodyBehindAppBar: this.extendBodyBehindAppBar,
        drawerScrimColor: this.drawerScrimColor,
        drawerEdgeDragWidth: this.drawerEdgeDragWidth,
        drawerEnableOpenDragGesture: this.drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture: this.endDrawerEnableOpenDragGesture,
        restorationId: this.restorationId,
      );

  static Scaffold copy(Scaffold source, Color? scaffoldBackgroundColor) {
    throw FlutterError('\n\n\nDeprecated for instance version\n\n\n');
  }
}
