import '../database.dart';

class UsersRdTable extends SupabaseTable<UsersRdRow> {
  @override
  String get tableName => 'users_rd';

  @override
  UsersRdRow createRow(Map<String, dynamic> data) => UsersRdRow(data);
}

class UsersRdRow extends SupabaseDataRow {
  UsersRdRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersRdTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get nextTask => getField<DateTime>('next_task');
  set nextTask(DateTime? value) => setField<DateTime>('next_task', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
