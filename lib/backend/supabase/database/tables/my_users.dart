import '../database.dart';

class MyUsersTable extends SupabaseTable<MyUsersRow> {
  @override
  String get tableName => 'my_users';

  @override
  MyUsersRow createRow(Map<String, dynamic> data) => MyUsersRow(data);
}

class MyUsersRow extends SupabaseDataRow {
  MyUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MyUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get lastActive => getField<String>('last_active');
  set lastActive(String? value) => setField<String>('last_active', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
