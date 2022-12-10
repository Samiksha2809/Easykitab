import 'package:firebase_auth/firebase_auth.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

String userId = "";
String userEmail = "";
String userImageUrl = "";
String getUserName = "";

String adUserName = "";
String adUserImageUrl = "";

String completeAddress = "";
List<Placemark> placemarks;
Position position;