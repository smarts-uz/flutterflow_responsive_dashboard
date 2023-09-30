import '../database.dart';

class TeamMembersTable extends SupabaseTable<TeamMembersRow> {
  @override
  String get tableName => 'team_members';

  @override
  TeamMembersRow createRow(Map<String, dynamic> data) => TeamMembersRow(data);
}

class TeamMembersRow extends SupabaseDataRow {
  TeamMembersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamMembersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get lastActive => getField<DateTime>('last_active');
  set lastActive(DateTime? value) => setField<DateTime>('last_active', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
