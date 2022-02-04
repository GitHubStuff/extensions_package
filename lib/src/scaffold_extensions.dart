import 'package:flutter/material.dart';

extension ScaffoldExtension on Scaffold {
  static Scaffold copy(Scaffold source, Color? scaffoldBackgroundColor) => Scaffold(
        key: source.key,
        appBar: source.appBar,
        body: source.body,
        floatingActionButton: source.floatingActionButton,
        floatingActionButtonLocation: source.floatingActionButtonLocation,
        floatingActionButtonAnimator: source.floatingActionButtonAnimator,
        persistentFooterButtons: source.persistentFooterButtons,
        drawer: source.drawer,
        onDrawerChanged: source.onDrawerChanged,
        endDrawer: source.endDrawer,
        onEndDrawerChanged: source.onEndDrawerChanged,
        bottomNavigationBar: source.bottomNavigationBar,
        bottomSheet: source.bottomSheet,
        backgroundColor: scaffoldBackgroundColor ?? Colors.transparent,
        resizeToAvoidBottomInset: source.resizeToAvoidBottomInset,
        primary: source.primary,
        drawerDragStartBehavior: source.drawerDragStartBehavior,
        extendBody: source.extendBody,
        extendBodyBehindAppBar: source.extendBodyBehindAppBar,
        drawerScrimColor: source.drawerScrimColor,
        drawerEdgeDragWidth: source.drawerEdgeDragWidth,
        drawerEnableOpenDragGesture: source.drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture: source.endDrawerEnableOpenDragGesture,
        restorationId: source.restorationId,
      );
}
