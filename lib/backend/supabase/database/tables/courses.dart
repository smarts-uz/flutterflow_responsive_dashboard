import '../database.dart';

class CoursesTable extends SupabaseTable<CoursesRow> {
  @override
  String get tableName => 'courses';

  @override
  CoursesRow createRow(Map<String, dynamic> data) => CoursesRow(data);
}

class CoursesRow extends SupabaseDataRow {
  CoursesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CoursesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get className => getField<String>('class_name');
  set className(String? value) => setField<String>('class_name', value);

  String? get department => getField<String>('department');
  set department(String? value) => setField<String>('department', value);

  String? get lastActive => getField<String>('last_active');
  set lastActive(String? value) => setField<String>('last_active', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
