import 'dart:async';

import 'package:bottom_sheet_task_ahmad_elbaz/APIs/get_reservations.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/models/reservation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReservationProvider extends AutoDisposeAsyncNotifier<List<Reservation>> {
  Future<List<Reservation>> _fetchReservations() async {
    final reservationsData = await fetchReservations();
    if (reservationsData.keys.first != 'reservations') {
      return [];
    } else if (reservationsData.keys.first == 'reservations') {
      final reservations = (reservationsData['reservations'] as List)
          .map((data) => Reservation.fromJson(data))
          .toList();
      return reservations;
    } else {
      return [];
    }
  }

  @override
  FutureOr<List<Reservation>> build() async {
    return await _fetchReservations();
  }
}

final asyncMessageProvider = AsyncNotifierProvider.autoDispose<
    ReservationProvider, Map<bool, List<Reservation>>>(() {
  return ReservationProvider();
});
