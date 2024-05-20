import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  final Id id;
  final String locale;

  User({
    required this.id,
    required this.locale
  });
}