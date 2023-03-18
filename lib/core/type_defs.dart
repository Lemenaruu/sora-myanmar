





import 'package:fpdart/fpdart.dart';

import 'package:sora_myanmar/core/failure.dart';

typedef FutureEither<T> = Future<Either<Failure,T>>;
typedef FutureVoid = FutureEither<void>;
typedef FutureEitherVoid = FutureEither<void>;
