// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "auth": MessageLookupByLibrary.simpleMessage("Авторизация"),
    "empty_email": MessageLookupByLibrary.simpleMessage(
      "Необходимо ввести email",
    ),
    "home": MessageLookupByLibrary.simpleMessage("Главная"),
    "incorrect_email": MessageLookupByLibrary.simpleMessage("Неверный email"),
    "incorrect_password": MessageLookupByLibrary.simpleMessage(
      "Пароль должен состоять как минимум из 8 символов и содержать как минимум одну заглавную букву, одну строчную букву, одну цифру и один специальный символ",
    ),
    "input_email": MessageLookupByLibrary.simpleMessage("Введите Email"),
    "input_password": MessageLookupByLibrary.simpleMessage("Введите пароль"),
    "login": MessageLookupByLibrary.simpleMessage("Войти"),
    "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
    "or": MessageLookupByLibrary.simpleMessage("или"),
    "password_required": MessageLookupByLibrary.simpleMessage(
      "Необходимо ввести пароль",
    ),
    "reg": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "register": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
  };
}
