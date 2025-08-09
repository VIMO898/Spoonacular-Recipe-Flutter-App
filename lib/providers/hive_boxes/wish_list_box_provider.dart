import 'package:app/constants/general.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

final wishListBoxProvider = Provider((ref) => Hive.box(recipeWishlistBoxName));
