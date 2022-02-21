extension StringExtensions on String {
  String get capitalize => "${this[0].toUpperCase()}${this.substring(1)}";

  String get unCamelCase {
    String word = this;
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').forEach((c) => word = word.replaceAll(c, '_${c.toLowerCase()}'));
    return word;
  }

  String get makePublic => (this.substring(0, 1) == '_') ? this.substring(1) : this;

  String lastCharacters(int n) {
    assert(n > 1);
    return (n >= this.length) ? this : substring(length - n);
  }
}
