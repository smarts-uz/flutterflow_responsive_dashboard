import '../database.dart';

class RecentTransactionsTable extends SupabaseTable<RecentTransactionsRow> {
  @override
  String get tableName => 'recent_transactions';

  @override
  RecentTransactionsRow createRow(Map<String, dynamic> data) =>
      RecentTransactionsRow(data);
}

class RecentTransactionsRow extends SupabaseDataRow {
  RecentTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecentTransactionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get propertyCoverage => getField<String>('property_coverage');
  set propertyCoverage(String? value) =>
      setField<String>('property_coverage', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);
}
