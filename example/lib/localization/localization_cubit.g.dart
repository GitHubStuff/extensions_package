// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_cubit.dart';

// **************************************************************************
// LocalizeCubitGenerator
// **************************************************************************

class TXTLocalizationCubit extends Cubit<TXTLocalizationState> {
  static final TXTLocalizationCubit _singleton =
      TXTLocalizationCubit._internal();
  factory TXTLocalizationCubit() => _singleton;
  TXTLocalizationCubit._internal() : super(TXTLocaleInitial());
  static TXTLocalizationCubit _localizationCubit = TXTLocalizationCubit();
  static TXTLocalizationCubit get cubit => _localizationCubit;

  bool _usingHiveStore = false;

  static Future<void> setup({Locale? locale}) async {
    _localizationCubit._locale = locale;
    _localizationCubit._usingHiveStore = (locale == null);
    if (_localizationCubit._usingHiveStore) await TXTHiveManager.setup();
  }

  //MARK: Locale
  Locale? _locale;
  static Locale get locale {
    if (_localizationCubit._usingHiveStore)
      _localizationCubit._locale = TXTHiveManager.get();
    return _localizationCubit._locale ?? Locale('en');
  }

  static set locale(Locale locale) {
    _localizationCubit._locale = locale;
    if (_localizationCubit._usingHiveStore) TXTHiveManager.save(locale: locale);
    _localizationCubit.emit(TXTLocaleUpdated(locale));
  }
}

//MARK: State
@immutable
abstract class TXTLocalizationState {}

class TXTLocaleInitial extends TXTLocalizationState {}

class TXTLocaleUpdated extends TXTLocalizationState {
  final Locale updatedLocale;
  TXTLocaleUpdated(this.updatedLocale);
}

//MARK: Hive
bool _isLocaleHiveSetup = false;

class TXTHiveManager {
  static const _boxName = 'com.txtlocalization.hive.saved_locale.language_code';
  static Box? _box;
  static Future<void> setup() async {
    try {
      await Hive.initFlutter();
      _box = await Hive.openBox<String>(_boxName);
    } on NullThrownError {
    } on MissingPluginException {
    } catch (e) {
      throw FlutterError(e.toString());
    }
    _isLocaleHiveSetup = true;
  }

  static Locale save({required Locale locale}) {
    if (!_isLocaleHiveSetup)
      throw FlutterError('TXTLocalizationCubit.setupLocalization not called!');
    final String languageCode = locale.languageCode;
    _box?.put(_boxName, languageCode);
    return Locale(languageCode);
  }

  static Locale get() {
    if (!_isLocaleHiveSetup)
      throw FlutterError('TXTLocalizationCubit.setupLocalization not called!');
    String storedValue =
        _box?.get(_boxName, defaultValue: 'en'); // 'en' - english
    return Locale(storedValue);
  }
}
