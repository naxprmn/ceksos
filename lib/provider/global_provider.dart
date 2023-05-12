import 'package:ceksos/application/homenotifier.dart';
import 'package:ceksos/constant/dbconst.dart';
import 'package:ceksos/domain/state/homestate.dart';
import 'package:ceksos/infrastuctures/databaseservices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;
import 'package:supabase/supabase.dart';

final supabaseClientProvider = riverpod.Provider<SupabaseClient>(
  (ref) => SupabaseClient(DbConstant.dbUrl, DbConstant.dbKey),
);

final databaseServiceProvider = riverpod.Provider<DatabaseServices>(
  (ref) => DatabaseServices(client: ref.read(supabaseClientProvider)),
);

final homeController = riverpod.StateNotifierProvider<HomeNotifier, Homestate>(
  (ref) => HomeNotifier(ref.read(databaseServiceProvider)),
);
