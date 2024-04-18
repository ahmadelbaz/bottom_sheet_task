import 'package:bottom_sheet_task_ahmad_elbaz/env.dart';

class AppStrings {
  static const String noRouteFound = 'No Route Found';
  static const String openReservation = 'Open Reservation';
  static const String showIosTicket = 'Show IOS Ticket';
  static const String showAndroidTicket = 'Show Android Ticket';
  static const String theme = 'Theme';
  static const String tickets = 'Tickets';
  static const String ticketType = 'Ticket Type';
  static const String seat = 'Seat';
  static const String hotelCheckIn = "Hotel Check-in";
  static const String hotel = "Hotel";
  static const String from = "From";
  static const String till = "Till";
  static const String stars = "Stars";
  static const String roomCount = "Room Count";
  static const String room = "Room";
  static const String location = "Location";
  static const String gallery = "Gallery";
  static const String amenities = "Amenities";
  static const String roomReservation = "Room Reservation";
  static const String guests = "Guest(s)";
  static const String roomType = "Room Type";
  static const String roomNumber = "Room Number";
  static const String sleeps = "Sleeps";
  static const String address = "Address";
}

class AppAssets {
  static const themeIcon = 'assets/icons/theme.png';
  static const starIcon = 'assets/icons/star.png';
  static const markerIcon = 'assets/icons/marker.png';
  static const darkMarkerIcon = 'assets/icons/dark_marker.png';
  static const lightLocationImage = 'assets/images/light_location.png';
  static const locationImage = 'assets/images/location.png';
}

class AppNetwork {
  static String baseUrl = Env.apiKey;
  static String token = Env.token;
}
