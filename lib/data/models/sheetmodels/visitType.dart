// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VisitType {
  final int client;
  final int core;
  const VisitType({
    required this.client,
    required this.core,
  });

  VisitType copyWith({
    int? client,
    int? core,
  }) {
    return VisitType(
      client: client ?? this.client,
      core: core ?? this.core,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'client': client,
      'core': core,
    };
  }

  factory VisitType.fromMap(Map<String, dynamic> map) {
    return VisitType(
      client: map['client'] as int,
      core: map['core'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory VisitType.fromJson(String source) => VisitType.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VisitType(client: $client, core: $core)';

  @override
  bool operator ==(covariant VisitType other) {
    if (identical(this, other)) return true;
  
    return 
      other.client == client &&
      other.core == core;
  }

  @override
  int get hashCode => client.hashCode ^ core.hashCode;
}
