import 'package:hive/hive.dart';
part 'NoteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTit1e;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color;

  NoteModel(this.title, this.subTit1e, this.data, this.color);
}
