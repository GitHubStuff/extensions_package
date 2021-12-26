# extensions_package

This is a template for the README.md. Replace the *README.md* with this, and fill in empty/missing details.

## Install

```text
dependencies:
  extensions_package:
    git:
      url: https://github.com/GitHubStuff/extensions_package.git
```

***- OR -***

```text
dependencies:
  extensions_package:
    git:
      url: https://github.com/RAE-Health/extensions_package.git
```

## Import

```dart
import 'package:extensions_package/extensions_package.dart';
```

### Language errors because Dart Analyzer crashed on VSCode

If errors like ```Traget URI doesn't...``` or ```Undefined name 'AppLocalizations'``` Reload the Dart Analyzer

1) Open the Command Palette (Ctrl+Shift+P)
2) Enter and select ```Developer: Reload Window```

## Usage

- [abstract class ObservingStatefulWidget](readme/observing_stateful_widget.md) - helper methods like ```afterFirstLayout``` and callbacks for Widget state changes.
- [class SimpleBlocObserver extends BlocObserver](readme/simple_bloc_observer.md) - logs to console BLoC transitions
- [extension BuildContextExtensions on BuildContext](readme/build_context_extensions.md) - getters and methods
- [extension DateTimeExtension on DateTime](readme/date_time_extensions.md) - enums, methods, and getters for [DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html)
- [extension DurationExtension on Duration](readme/duration_extensions.md) - add/substract a ```Duration``` by a ```Duration```

## Final Note

Be kind to each other
