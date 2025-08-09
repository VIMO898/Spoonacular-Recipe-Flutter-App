import 'package:app/extensions/string_extension.dart';
import 'package:app/models/basic_info_model.dart';

String enumValuesToKebabCaseJoinedStr(
  List<Enum> enumValues, [
  String seperator = ',',
]) => enumValues.map((e) => e.name.camelToKebabCase()).join(seperator);

String basicInfoToNameJoinedKebabCaseList(
  List<BasicInfoModel> l, [
  String seperator = ',',
]) => l.map((e) => e.name.camelToKebabCase()).join(seperator);
