# SimpleBlocObserver

Custom [BlockObserver](https://github.com/felangel/bloc.git) to log to the console changes in BLoC states

## Use

Add to ```main.dart```

```dart
void main() async {
  :
  :
  // Add observer for BLoC changes in development
  // NOTE: For release blocObserver: null,
  blocObserver: SimpleBlocObserver(),
  :
  :
}
```
