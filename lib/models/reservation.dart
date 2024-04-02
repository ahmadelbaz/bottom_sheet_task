import 'package:bottom_sheet_task_ahmad_elbaz/models/stays.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/models/user_tickets.dart';

class Reservation {
  int? id;
  String? startDate;
  String? endDate;
  List<Stays>? stays;
  List<UserTickets>? userTickets;

  Reservation(
      {this.id, this.startDate, this.endDate, this.stays, this.userTickets});

  Reservation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    if (json['stays'] != null) {
      stays = <Stays>[];
      json['stays'].forEach((v) {
        stays!.add(Stays.fromJson(v));
      });
    }
    if (json['user_tickets'] != null) {
      userTickets = <UserTickets>[];
      json['user_tickets'].forEach((v) {
        userTickets!.add(UserTickets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    if (stays != null) {
      data['stays'] = stays!.map((v) => v.toJson()).toList();
    }
    if (userTickets != null) {
      data['user_tickets'] = userTickets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
