import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/di/bloc/deserts_cubit.dart';


abstract class Desert {
  final dynamic image;
  final String name;
  final String price;
  final String id;
  final String category;

  

}