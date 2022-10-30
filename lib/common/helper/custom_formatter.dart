String toTitle(String str) {
  if (str.isEmpty) return '';

  return str[0].toUpperCase() + str.substring(1).toLowerCase();
}

String toCamelCase(String? str) {
  if (str == null) return '';

  final words = str.replaceAll(' ', '_').split('_');
  final formatted = words.map(toTitle).join();

  if (formatted.isEmpty) return '';

  return formatted[0].toLowerCase() + formatted.substring(1);
}
