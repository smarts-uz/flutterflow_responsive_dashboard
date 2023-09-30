import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://cgvqogaptsfnudhicctb.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNndnFvZ2FwdHNmbnVkaGljY3RiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU4MTgyNTEsImV4cCI6MjAxMTM5NDI1MX0.OvgqMrRQyJ-t4JcszgTR3Oeb9LLggkPZbV_-32SFiqo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
