enum AppRouteEnum {
  splash(
    name: 'splash',
    path: '/splash',
  ),
  signIn(
    name: 'signIn',
    path: '/signIn',
  );

  const AppRouteEnum({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  @override
  String toString() => 'name: $name, path: $path';
}
