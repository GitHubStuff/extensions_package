# ObservingStatefulWidget

```dart
ObservingStatefulWidget mixin like additions to StatefulWidget

class _ScaffoldWidget extends ObservingStatefulWidget<ScaffoldWidget> {

  void afterFirstLayout(BuildContext context) {}

  void reportTextScaleFactor(double? textScaleFactor) {}

  void didChangePlatformBrightness() {}

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {}

  @mustCallSuper
  @override
  void didChangeTextScaleFactor() {}
```
