import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'generator.dart';

///
///@author rocchen
///@date 2022/12
///

Builder httpApiBuilder(BuilderOptions options) =>
    SharedPartBuilder([HttpApiGenerator()],'flutter_api');
