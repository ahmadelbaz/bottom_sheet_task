import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
@Envied(path: '.env', useConstantCase: true)
abstract class Env {
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final String apiKey = _Env.apiKey;
  @EnviedField(varName: 'TOKEN', obfuscate: true)
  static final String token = _Env.token;
}
