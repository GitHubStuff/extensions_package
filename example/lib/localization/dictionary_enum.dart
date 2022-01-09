import 'package:flutter/material.dart';
import 'package:localize_enum_annotation/localize_enum_annotation.dart';

import 'localization_cubit.dart';
import 'local.i69n.dart';
import 'local_de.i69n.dart';
import 'local_es.i69n.dart';

part 'dictionary_enum.g.dart'; //Generated lookup table base on "enum RAELocalization"

///NOTE: Each identifier should match the 'key' in the *.i69n.yaml files
@localizeEnum
enum TXTLocalization {
  helloWorld,
}