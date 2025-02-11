import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flowy_sdk/protobuf/flowy-collaboration/doc.pb.dart';
import 'package:flowy_sdk/protobuf/flowy-error/errors.pb.dart';

abstract class IDoc {
  Future<Either<DocDelta, FlowyError>> readDoc();
  Future<Either<DocDelta, FlowyError>> composeDelta({required String json});
  Future<Either<Unit, FlowyError>> closeDoc();
}
