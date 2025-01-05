import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentCharacterEdge {
  FragmentCharacterEdge({
    this.id,
    this.role,
    this.name,
    this.voiceActors,
    this.node,
    this.$__typename = 'CharacterEdge',
  });

  factory FragmentCharacterEdge.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$role = json['role'];
    final l$name = json['name'];
    final l$voiceActors = json['voiceActors'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return FragmentCharacterEdge(
      id: (l$id as int?),
      role:
          l$role == null ? null : fromJsonEnumCharacterRole((l$role as String)),
      name: (l$name as String?),
      voiceActors: (l$voiceActors as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentCharacterEdgevoiceActors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      node: l$node == null
          ? null
          : FragmentCharacterEdgenode.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final EnumCharacterRole? role;

  final String? name;

  final List<FragmentCharacterEdgevoiceActors?>? voiceActors;

  final FragmentCharacterEdgenode? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJsonEnumCharacterRole(l$role);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$voiceActors = voiceActors;
    _resultData['voiceActors'] =
        l$voiceActors?.map((e) => e?.toJson()).toList();
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$role = role;
    final l$name = name;
    final l$voiceActors = voiceActors;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$role,
      l$name,
      l$voiceActors == null
          ? null
          : Object.hashAll(l$voiceActors.map((v) => v)),
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentCharacterEdge || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$voiceActors = voiceActors;
    final lOther$voiceActors = other.voiceActors;
    if (l$voiceActors != null && lOther$voiceActors != null) {
      if (l$voiceActors.length != lOther$voiceActors.length) {
        return false;
      }
      for (int i = 0; i < l$voiceActors.length; i++) {
        final l$voiceActors$entry = l$voiceActors[i];
        final lOther$voiceActors$entry = lOther$voiceActors[i];
        if (l$voiceActors$entry != lOther$voiceActors$entry) {
          return false;
        }
      }
    } else if (l$voiceActors != lOther$voiceActors) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentCharacterEdge on FragmentCharacterEdge {
  CopyWithFragmentCharacterEdge<FragmentCharacterEdge> get copyWith =>
      CopyWithFragmentCharacterEdge(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentCharacterEdge<TRes> {
  factory CopyWithFragmentCharacterEdge(
    FragmentCharacterEdge instance,
    TRes Function(FragmentCharacterEdge) then,
  ) = _CopyWithImplFragmentCharacterEdge;

  factory CopyWithFragmentCharacterEdge.stub(TRes res) =
      _CopyWithStubImplFragmentCharacterEdge;

  TRes call({
    int? id,
    EnumCharacterRole? role,
    String? name,
    List<FragmentCharacterEdgevoiceActors?>? voiceActors,
    FragmentCharacterEdgenode? node,
    String? $__typename,
  });
  TRes voiceActors(
      Iterable<FragmentCharacterEdgevoiceActors?>? Function(
              Iterable<
                  CopyWithFragmentCharacterEdgevoiceActors<
                      FragmentCharacterEdgevoiceActors>?>?)
          _fn);
  CopyWithFragmentCharacterEdgenode<TRes> get node;
}

class _CopyWithImplFragmentCharacterEdge<TRes>
    implements CopyWithFragmentCharacterEdge<TRes> {
  _CopyWithImplFragmentCharacterEdge(
    this._instance,
    this._then,
  );

  final FragmentCharacterEdge _instance;

  final TRes Function(FragmentCharacterEdge) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? role = _undefined,
    Object? name = _undefined,
    Object? voiceActors = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentCharacterEdge(
        id: id == _undefined ? _instance.id : (id as int?),
        role:
            role == _undefined ? _instance.role : (role as EnumCharacterRole?),
        name: name == _undefined ? _instance.name : (name as String?),
        voiceActors: voiceActors == _undefined
            ? _instance.voiceActors
            : (voiceActors as List<FragmentCharacterEdgevoiceActors?>?),
        node: node == _undefined
            ? _instance.node
            : (node as FragmentCharacterEdgenode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes voiceActors(
          Iterable<FragmentCharacterEdgevoiceActors?>? Function(
                  Iterable<
                      CopyWithFragmentCharacterEdgevoiceActors<
                          FragmentCharacterEdgevoiceActors>?>?)
              _fn) =>
      call(
          voiceActors: _fn(_instance.voiceActors?.map((e) => e == null
              ? null
              : CopyWithFragmentCharacterEdgevoiceActors(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWithFragmentCharacterEdgenode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWithFragmentCharacterEdgenode.stub(_then(_instance))
        : CopyWithFragmentCharacterEdgenode(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImplFragmentCharacterEdge<TRes>
    implements CopyWithFragmentCharacterEdge<TRes> {
  _CopyWithStubImplFragmentCharacterEdge(this._res);

  TRes _res;

  call({
    int? id,
    EnumCharacterRole? role,
    String? name,
    List<FragmentCharacterEdgevoiceActors?>? voiceActors,
    FragmentCharacterEdgenode? node,
    String? $__typename,
  }) =>
      _res;

  voiceActors(_fn) => _res;

  CopyWithFragmentCharacterEdgenode<TRes> get node =>
      CopyWithFragmentCharacterEdgenode.stub(_res);
}

const fragmentDefinitionCharacterEdge = FragmentDefinitionNode(
  name: NameNode(value: 'CharacterEdge'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CharacterEdge'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'role'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'voiceActors'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'language'),
          value: EnumValueNode(name: NameNode(value: 'JAPANESE')),
        ),
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: ListValueNode(values: [
            EnumValueNode(name: NameNode(value: 'RELEVANCE')),
            EnumValueNode(name: NameNode(value: 'ID')),
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'userPreferred'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'languageV2'),
          alias: NameNode(value: 'language'),
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'image'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'large'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'node'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'userPreferred'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'image'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'large'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCharacterEdge = DocumentNode(definitions: [
  fragmentDefinitionCharacterEdge,
]);

class FragmentCharacterEdgevoiceActors {
  FragmentCharacterEdgevoiceActors({
    required this.id,
    this.name,
    this.language,
    this.image,
    this.$__typename = 'Staff',
  });

  factory FragmentCharacterEdgevoiceActors.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$language = json['language'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return FragmentCharacterEdgevoiceActors(
      id: (l$id as int),
      name: l$name == null
          ? null
          : FragmentCharacterEdgevoiceActorsname.fromJson(
              (l$name as Map<String, dynamic>)),
      language: (l$language as String?),
      image: l$image == null
          ? null
          : FragmentCharacterEdgevoiceActorsimage.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final FragmentCharacterEdgevoiceActorsname? name;

  final String? language;

  final FragmentCharacterEdgevoiceActorsimage? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$language = language;
    _resultData['language'] = l$language;
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$language = language;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$language,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentCharacterEdgevoiceActors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentCharacterEdgevoiceActors
    on FragmentCharacterEdgevoiceActors {
  CopyWithFragmentCharacterEdgevoiceActors<FragmentCharacterEdgevoiceActors>
      get copyWith => CopyWithFragmentCharacterEdgevoiceActors(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentCharacterEdgevoiceActors<TRes> {
  factory CopyWithFragmentCharacterEdgevoiceActors(
    FragmentCharacterEdgevoiceActors instance,
    TRes Function(FragmentCharacterEdgevoiceActors) then,
  ) = _CopyWithImplFragmentCharacterEdgevoiceActors;

  factory CopyWithFragmentCharacterEdgevoiceActors.stub(TRes res) =
      _CopyWithStubImplFragmentCharacterEdgevoiceActors;

  TRes call({
    int? id,
    FragmentCharacterEdgevoiceActorsname? name,
    String? language,
    FragmentCharacterEdgevoiceActorsimage? image,
    String? $__typename,
  });
  CopyWithFragmentCharacterEdgevoiceActorsname<TRes> get name;
  CopyWithFragmentCharacterEdgevoiceActorsimage<TRes> get image;
}

class _CopyWithImplFragmentCharacterEdgevoiceActors<TRes>
    implements CopyWithFragmentCharacterEdgevoiceActors<TRes> {
  _CopyWithImplFragmentCharacterEdgevoiceActors(
    this._instance,
    this._then,
  );

  final FragmentCharacterEdgevoiceActors _instance;

  final TRes Function(FragmentCharacterEdgevoiceActors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? language = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentCharacterEdgevoiceActors(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as FragmentCharacterEdgevoiceActorsname?),
        language:
            language == _undefined ? _instance.language : (language as String?),
        image: image == _undefined
            ? _instance.image
            : (image as FragmentCharacterEdgevoiceActorsimage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentCharacterEdgevoiceActorsname<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWithFragmentCharacterEdgevoiceActorsname.stub(_then(_instance))
        : CopyWithFragmentCharacterEdgevoiceActorsname(
            local$name, (e) => call(name: e));
  }

  CopyWithFragmentCharacterEdgevoiceActorsimage<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWithFragmentCharacterEdgevoiceActorsimage.stub(_then(_instance))
        : CopyWithFragmentCharacterEdgevoiceActorsimage(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImplFragmentCharacterEdgevoiceActors<TRes>
    implements CopyWithFragmentCharacterEdgevoiceActors<TRes> {
  _CopyWithStubImplFragmentCharacterEdgevoiceActors(this._res);

  TRes _res;

  call({
    int? id,
    FragmentCharacterEdgevoiceActorsname? name,
    String? language,
    FragmentCharacterEdgevoiceActorsimage? image,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentCharacterEdgevoiceActorsname<TRes> get name =>
      CopyWithFragmentCharacterEdgevoiceActorsname.stub(_res);

  CopyWithFragmentCharacterEdgevoiceActorsimage<TRes> get image =>
      CopyWithFragmentCharacterEdgevoiceActorsimage.stub(_res);
}

class FragmentCharacterEdgevoiceActorsname {
  FragmentCharacterEdgevoiceActorsname({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory FragmentCharacterEdgevoiceActorsname.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return FragmentCharacterEdgevoiceActorsname(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentCharacterEdgevoiceActorsname ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentCharacterEdgevoiceActorsname
    on FragmentCharacterEdgevoiceActorsname {
  CopyWithFragmentCharacterEdgevoiceActorsname<
          FragmentCharacterEdgevoiceActorsname>
      get copyWith => CopyWithFragmentCharacterEdgevoiceActorsname(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentCharacterEdgevoiceActorsname<TRes> {
  factory CopyWithFragmentCharacterEdgevoiceActorsname(
    FragmentCharacterEdgevoiceActorsname instance,
    TRes Function(FragmentCharacterEdgevoiceActorsname) then,
  ) = _CopyWithImplFragmentCharacterEdgevoiceActorsname;

  factory CopyWithFragmentCharacterEdgevoiceActorsname.stub(TRes res) =
      _CopyWithStubImplFragmentCharacterEdgevoiceActorsname;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplFragmentCharacterEdgevoiceActorsname<TRes>
    implements CopyWithFragmentCharacterEdgevoiceActorsname<TRes> {
  _CopyWithImplFragmentCharacterEdgevoiceActorsname(
    this._instance,
    this._then,
  );

  final FragmentCharacterEdgevoiceActorsname _instance;

  final TRes Function(FragmentCharacterEdgevoiceActorsname) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentCharacterEdgevoiceActorsname(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentCharacterEdgevoiceActorsname<TRes>
    implements CopyWithFragmentCharacterEdgevoiceActorsname<TRes> {
  _CopyWithStubImplFragmentCharacterEdgevoiceActorsname(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class FragmentCharacterEdgevoiceActorsimage {
  FragmentCharacterEdgevoiceActorsimage({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory FragmentCharacterEdgevoiceActorsimage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return FragmentCharacterEdgevoiceActorsimage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentCharacterEdgevoiceActorsimage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentCharacterEdgevoiceActorsimage
    on FragmentCharacterEdgevoiceActorsimage {
  CopyWithFragmentCharacterEdgevoiceActorsimage<
          FragmentCharacterEdgevoiceActorsimage>
      get copyWith => CopyWithFragmentCharacterEdgevoiceActorsimage(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentCharacterEdgevoiceActorsimage<TRes> {
  factory CopyWithFragmentCharacterEdgevoiceActorsimage(
    FragmentCharacterEdgevoiceActorsimage instance,
    TRes Function(FragmentCharacterEdgevoiceActorsimage) then,
  ) = _CopyWithImplFragmentCharacterEdgevoiceActorsimage;

  factory CopyWithFragmentCharacterEdgevoiceActorsimage.stub(TRes res) =
      _CopyWithStubImplFragmentCharacterEdgevoiceActorsimage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplFragmentCharacterEdgevoiceActorsimage<TRes>
    implements CopyWithFragmentCharacterEdgevoiceActorsimage<TRes> {
  _CopyWithImplFragmentCharacterEdgevoiceActorsimage(
    this._instance,
    this._then,
  );

  final FragmentCharacterEdgevoiceActorsimage _instance;

  final TRes Function(FragmentCharacterEdgevoiceActorsimage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentCharacterEdgevoiceActorsimage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentCharacterEdgevoiceActorsimage<TRes>
    implements CopyWithFragmentCharacterEdgevoiceActorsimage<TRes> {
  _CopyWithStubImplFragmentCharacterEdgevoiceActorsimage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class FragmentCharacterEdgenode {
  FragmentCharacterEdgenode({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory FragmentCharacterEdgenode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return FragmentCharacterEdgenode(
      id: (l$id as int),
      name: l$name == null
          ? null
          : FragmentCharacterEdgenodename.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : FragmentCharacterEdgenodeimage.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final FragmentCharacterEdgenodename? name;

  final FragmentCharacterEdgenodeimage? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentCharacterEdgenode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentCharacterEdgenode
    on FragmentCharacterEdgenode {
  CopyWithFragmentCharacterEdgenode<FragmentCharacterEdgenode> get copyWith =>
      CopyWithFragmentCharacterEdgenode(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentCharacterEdgenode<TRes> {
  factory CopyWithFragmentCharacterEdgenode(
    FragmentCharacterEdgenode instance,
    TRes Function(FragmentCharacterEdgenode) then,
  ) = _CopyWithImplFragmentCharacterEdgenode;

  factory CopyWithFragmentCharacterEdgenode.stub(TRes res) =
      _CopyWithStubImplFragmentCharacterEdgenode;

  TRes call({
    int? id,
    FragmentCharacterEdgenodename? name,
    FragmentCharacterEdgenodeimage? image,
    String? $__typename,
  });
  CopyWithFragmentCharacterEdgenodename<TRes> get name;
  CopyWithFragmentCharacterEdgenodeimage<TRes> get image;
}

class _CopyWithImplFragmentCharacterEdgenode<TRes>
    implements CopyWithFragmentCharacterEdgenode<TRes> {
  _CopyWithImplFragmentCharacterEdgenode(
    this._instance,
    this._then,
  );

  final FragmentCharacterEdgenode _instance;

  final TRes Function(FragmentCharacterEdgenode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentCharacterEdgenode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as FragmentCharacterEdgenodename?),
        image: image == _undefined
            ? _instance.image
            : (image as FragmentCharacterEdgenodeimage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentCharacterEdgenodename<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWithFragmentCharacterEdgenodename.stub(_then(_instance))
        : CopyWithFragmentCharacterEdgenodename(
            local$name, (e) => call(name: e));
  }

  CopyWithFragmentCharacterEdgenodeimage<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWithFragmentCharacterEdgenodeimage.stub(_then(_instance))
        : CopyWithFragmentCharacterEdgenodeimage(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImplFragmentCharacterEdgenode<TRes>
    implements CopyWithFragmentCharacterEdgenode<TRes> {
  _CopyWithStubImplFragmentCharacterEdgenode(this._res);

  TRes _res;

  call({
    int? id,
    FragmentCharacterEdgenodename? name,
    FragmentCharacterEdgenodeimage? image,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentCharacterEdgenodename<TRes> get name =>
      CopyWithFragmentCharacterEdgenodename.stub(_res);

  CopyWithFragmentCharacterEdgenodeimage<TRes> get image =>
      CopyWithFragmentCharacterEdgenodeimage.stub(_res);
}

class FragmentCharacterEdgenodename {
  FragmentCharacterEdgenodename({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory FragmentCharacterEdgenodename.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return FragmentCharacterEdgenodename(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentCharacterEdgenodename ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentCharacterEdgenodename
    on FragmentCharacterEdgenodename {
  CopyWithFragmentCharacterEdgenodename<FragmentCharacterEdgenodename>
      get copyWith => CopyWithFragmentCharacterEdgenodename(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentCharacterEdgenodename<TRes> {
  factory CopyWithFragmentCharacterEdgenodename(
    FragmentCharacterEdgenodename instance,
    TRes Function(FragmentCharacterEdgenodename) then,
  ) = _CopyWithImplFragmentCharacterEdgenodename;

  factory CopyWithFragmentCharacterEdgenodename.stub(TRes res) =
      _CopyWithStubImplFragmentCharacterEdgenodename;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplFragmentCharacterEdgenodename<TRes>
    implements CopyWithFragmentCharacterEdgenodename<TRes> {
  _CopyWithImplFragmentCharacterEdgenodename(
    this._instance,
    this._then,
  );

  final FragmentCharacterEdgenodename _instance;

  final TRes Function(FragmentCharacterEdgenodename) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentCharacterEdgenodename(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentCharacterEdgenodename<TRes>
    implements CopyWithFragmentCharacterEdgenodename<TRes> {
  _CopyWithStubImplFragmentCharacterEdgenodename(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class FragmentCharacterEdgenodeimage {
  FragmentCharacterEdgenodeimage({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory FragmentCharacterEdgenodeimage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return FragmentCharacterEdgenodeimage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentCharacterEdgenodeimage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentCharacterEdgenodeimage
    on FragmentCharacterEdgenodeimage {
  CopyWithFragmentCharacterEdgenodeimage<FragmentCharacterEdgenodeimage>
      get copyWith => CopyWithFragmentCharacterEdgenodeimage(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentCharacterEdgenodeimage<TRes> {
  factory CopyWithFragmentCharacterEdgenodeimage(
    FragmentCharacterEdgenodeimage instance,
    TRes Function(FragmentCharacterEdgenodeimage) then,
  ) = _CopyWithImplFragmentCharacterEdgenodeimage;

  factory CopyWithFragmentCharacterEdgenodeimage.stub(TRes res) =
      _CopyWithStubImplFragmentCharacterEdgenodeimage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplFragmentCharacterEdgenodeimage<TRes>
    implements CopyWithFragmentCharacterEdgenodeimage<TRes> {
  _CopyWithImplFragmentCharacterEdgenodeimage(
    this._instance,
    this._then,
  );

  final FragmentCharacterEdgenodeimage _instance;

  final TRes Function(FragmentCharacterEdgenodeimage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentCharacterEdgenodeimage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentCharacterEdgenodeimage<TRes>
    implements CopyWithFragmentCharacterEdgenodeimage<TRes> {
  _CopyWithStubImplFragmentCharacterEdgenodeimage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryCharacter {
  factory VariablesQueryCharacter({
    int? characterId,
    String? search,
    List<EnumCharacterSort?>? sort,
  }) =>
      VariablesQueryCharacter._({
        if (characterId != null) r'characterId': characterId,
        if (search != null) r'search': search,
        if (sort != null) r'sort': sort,
      });

  VariablesQueryCharacter._(this._$data);

  factory VariablesQueryCharacter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('characterId')) {
      final l$characterId = data['characterId'];
      result$data['characterId'] = (l$characterId as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJsonEnumCharacterSort((e as String)))
          .toList();
    }
    return VariablesQueryCharacter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get characterId => (_$data['characterId'] as int?);

  String? get search => (_$data['search'] as String?);

  List<EnumCharacterSort?>? get sort =>
      (_$data['sort'] as List<EnumCharacterSort?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('characterId')) {
      final l$characterId = characterId;
      result$data['characterId'] = l$characterId;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJsonEnumCharacterSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWithVariablesQueryCharacter<VariablesQueryCharacter> get copyWith =>
      CopyWithVariablesQueryCharacter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryCharacter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characterId = characterId;
    final lOther$characterId = other.characterId;
    if (_$data.containsKey('characterId') !=
        other._$data.containsKey('characterId')) {
      return false;
    }
    if (l$characterId != lOther$characterId) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$characterId = characterId;
    final l$search = search;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('characterId') ? l$characterId : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryCharacter<TRes> {
  factory CopyWithVariablesQueryCharacter(
    VariablesQueryCharacter instance,
    TRes Function(VariablesQueryCharacter) then,
  ) = _CopyWithImplVariablesQueryCharacter;

  factory CopyWithVariablesQueryCharacter.stub(TRes res) =
      _CopyWithStubImplVariablesQueryCharacter;

  TRes call({
    int? characterId,
    String? search,
    List<EnumCharacterSort?>? sort,
  });
}

class _CopyWithImplVariablesQueryCharacter<TRes>
    implements CopyWithVariablesQueryCharacter<TRes> {
  _CopyWithImplVariablesQueryCharacter(
    this._instance,
    this._then,
  );

  final VariablesQueryCharacter _instance;

  final TRes Function(VariablesQueryCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characterId = _undefined,
    Object? search = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(VariablesQueryCharacter._({
        ..._instance._$data,
        if (characterId != _undefined) 'characterId': (characterId as int?),
        if (search != _undefined) 'search': (search as String?),
        if (sort != _undefined) 'sort': (sort as List<EnumCharacterSort?>?),
      }));
}

class _CopyWithStubImplVariablesQueryCharacter<TRes>
    implements CopyWithVariablesQueryCharacter<TRes> {
  _CopyWithStubImplVariablesQueryCharacter(this._res);

  TRes _res;

  call({
    int? characterId,
    String? search,
    List<EnumCharacterSort?>? sort,
  }) =>
      _res;
}

class QueryCharacter {
  QueryCharacter({
    this.Character,
    this.$__typename = 'Query',
  });

  factory QueryCharacter.fromJson(Map<String, dynamic> json) {
    final l$Character = json['Character'];
    final l$$__typename = json['__typename'];
    return QueryCharacter(
      Character: l$Character == null
          ? null
          : QueryCharacterCharacter.fromJson(
              (l$Character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryCharacterCharacter? Character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Character = Character;
    _resultData['Character'] = l$Character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Character = Character;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Character,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryCharacter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Character = Character;
    final lOther$Character = other.Character;
    if (l$Character != lOther$Character) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryCharacter on QueryCharacter {
  CopyWithQueryCharacter<QueryCharacter> get copyWith => CopyWithQueryCharacter(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryCharacter<TRes> {
  factory CopyWithQueryCharacter(
    QueryCharacter instance,
    TRes Function(QueryCharacter) then,
  ) = _CopyWithImplQueryCharacter;

  factory CopyWithQueryCharacter.stub(TRes res) =
      _CopyWithStubImplQueryCharacter;

  TRes call({
    QueryCharacterCharacter? Character,
    String? $__typename,
  });
  CopyWithQueryCharacterCharacter<TRes> get Character;
}

class _CopyWithImplQueryCharacter<TRes>
    implements CopyWithQueryCharacter<TRes> {
  _CopyWithImplQueryCharacter(
    this._instance,
    this._then,
  );

  final QueryCharacter _instance;

  final TRes Function(QueryCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryCharacter(
        Character: Character == _undefined
            ? _instance.Character
            : (Character as QueryCharacterCharacter?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryCharacterCharacter<TRes> get Character {
    final local$Character = _instance.Character;
    return local$Character == null
        ? CopyWithQueryCharacterCharacter.stub(_then(_instance))
        : CopyWithQueryCharacterCharacter(
            local$Character, (e) => call(Character: e));
  }
}

class _CopyWithStubImplQueryCharacter<TRes>
    implements CopyWithQueryCharacter<TRes> {
  _CopyWithStubImplQueryCharacter(this._res);

  TRes _res;

  call({
    QueryCharacterCharacter? Character,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryCharacterCharacter<TRes> get Character =>
      CopyWithQueryCharacterCharacter.stub(_res);
}

const documentNodeQueryCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Character'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CharacterSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(
                values: [EnumValueNode(name: NameNode(value: 'ID_DESC'))])),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Character'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'characterId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: VariableNode(name: NameNode(value: 'sort')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'full'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'native'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userPreferred'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'alternative'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'alternativeSpoiler'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'large'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medium'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'asHtml'),
                value: BooleanValueNode(value: false),
              )
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateOfBirth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'month'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'day'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bloodType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'age'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavourite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavouriteBlocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'siteUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'FORMAT')),
                  EnumValueNode(name: NameNode(value: 'START_DATE')),
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'characterRole'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaMin'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMediaMin,
]);

class QueryCharacterCharacter {
  QueryCharacterCharacter({
    required this.id,
    this.name,
    this.image,
    this.description,
    this.gender,
    this.dateOfBirth,
    this.bloodType,
    this.age,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    this.siteUrl,
    this.favourites,
    this.media,
    this.$__typename = 'Character',
  });

  factory QueryCharacterCharacter.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$description = json['description'];
    final l$gender = json['gender'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$bloodType = json['bloodType'];
    final l$age = json['age'];
    final l$isFavourite = json['isFavourite'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$siteUrl = json['siteUrl'];
    final l$favourites = json['favourites'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryCharacterCharacter(
      id: (l$id as int),
      name: l$name == null
          ? null
          : QueryCharacterCharactername.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : QueryCharacterCharacterimage.fromJson(
              (l$image as Map<String, dynamic>)),
      description: (l$description as String?),
      gender: (l$gender as String?),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : QueryCharacterCharacterdateOfBirth.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      bloodType: (l$bloodType as String?),
      age: (l$age as String?),
      isFavourite: (l$isFavourite as bool),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      siteUrl: (l$siteUrl as String?),
      favourites: (l$favourites as int?),
      media: l$media == null
          ? null
          : QueryCharacterCharactermedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QueryCharacterCharactername? name;

  final QueryCharacterCharacterimage? image;

  final String? description;

  final String? gender;

  final QueryCharacterCharacterdateOfBirth? dateOfBirth;

  final String? bloodType;

  final String? age;

  final bool isFavourite;

  final bool isFavouriteBlocked;

  final String? siteUrl;

  final int? favourites;

  final QueryCharacterCharactermedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$description = description;
    final l$gender = gender;
    final l$dateOfBirth = dateOfBirth;
    final l$bloodType = bloodType;
    final l$age = age;
    final l$isFavourite = isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$siteUrl = siteUrl;
    final l$favourites = favourites;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$description,
      l$gender,
      l$dateOfBirth,
      l$bloodType,
      l$age,
      l$isFavourite,
      l$isFavouriteBlocked,
      l$siteUrl,
      l$favourites,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryCharacterCharacter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$bloodType = bloodType;
    final lOther$bloodType = other.bloodType;
    if (l$bloodType != lOther$bloodType) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryCharacterCharacter on QueryCharacterCharacter {
  CopyWithQueryCharacterCharacter<QueryCharacterCharacter> get copyWith =>
      CopyWithQueryCharacterCharacter(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryCharacterCharacter<TRes> {
  factory CopyWithQueryCharacterCharacter(
    QueryCharacterCharacter instance,
    TRes Function(QueryCharacterCharacter) then,
  ) = _CopyWithImplQueryCharacterCharacter;

  factory CopyWithQueryCharacterCharacter.stub(TRes res) =
      _CopyWithStubImplQueryCharacterCharacter;

  TRes call({
    int? id,
    QueryCharacterCharactername? name,
    QueryCharacterCharacterimage? image,
    String? description,
    String? gender,
    QueryCharacterCharacterdateOfBirth? dateOfBirth,
    String? bloodType,
    String? age,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    String? siteUrl,
    int? favourites,
    QueryCharacterCharactermedia? media,
    String? $__typename,
  });
  CopyWithQueryCharacterCharactername<TRes> get name;
  CopyWithQueryCharacterCharacterimage<TRes> get image;
  CopyWithQueryCharacterCharacterdateOfBirth<TRes> get dateOfBirth;
  CopyWithQueryCharacterCharactermedia<TRes> get media;
}

class _CopyWithImplQueryCharacterCharacter<TRes>
    implements CopyWithQueryCharacterCharacter<TRes> {
  _CopyWithImplQueryCharacterCharacter(
    this._instance,
    this._then,
  );

  final QueryCharacterCharacter _instance;

  final TRes Function(QueryCharacterCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? description = _undefined,
    Object? gender = _undefined,
    Object? dateOfBirth = _undefined,
    Object? bloodType = _undefined,
    Object? age = _undefined,
    Object? isFavourite = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? siteUrl = _undefined,
    Object? favourites = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryCharacterCharacter(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as QueryCharacterCharactername?),
        image: image == _undefined
            ? _instance.image
            : (image as QueryCharacterCharacterimage?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as QueryCharacterCharacterdateOfBirth?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        age: age == _undefined ? _instance.age : (age as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        media: media == _undefined
            ? _instance.media
            : (media as QueryCharacterCharactermedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryCharacterCharactername<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWithQueryCharacterCharactername.stub(_then(_instance))
        : CopyWithQueryCharacterCharactername(local$name, (e) => call(name: e));
  }

  CopyWithQueryCharacterCharacterimage<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWithQueryCharacterCharacterimage.stub(_then(_instance))
        : CopyWithQueryCharacterCharacterimage(
            local$image, (e) => call(image: e));
  }

  CopyWithQueryCharacterCharacterdateOfBirth<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWithQueryCharacterCharacterdateOfBirth.stub(_then(_instance))
        : CopyWithQueryCharacterCharacterdateOfBirth(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWithQueryCharacterCharactermedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryCharacterCharactermedia.stub(_then(_instance))
        : CopyWithQueryCharacterCharactermedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryCharacterCharacter<TRes>
    implements CopyWithQueryCharacterCharacter<TRes> {
  _CopyWithStubImplQueryCharacterCharacter(this._res);

  TRes _res;

  call({
    int? id,
    QueryCharacterCharactername? name,
    QueryCharacterCharacterimage? image,
    String? description,
    String? gender,
    QueryCharacterCharacterdateOfBirth? dateOfBirth,
    String? bloodType,
    String? age,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    String? siteUrl,
    int? favourites,
    QueryCharacterCharactermedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryCharacterCharactername<TRes> get name =>
      CopyWithQueryCharacterCharactername.stub(_res);

  CopyWithQueryCharacterCharacterimage<TRes> get image =>
      CopyWithQueryCharacterCharacterimage.stub(_res);

  CopyWithQueryCharacterCharacterdateOfBirth<TRes> get dateOfBirth =>
      CopyWithQueryCharacterCharacterdateOfBirth.stub(_res);

  CopyWithQueryCharacterCharactermedia<TRes> get media =>
      CopyWithQueryCharacterCharactermedia.stub(_res);
}

class QueryCharacterCharactername {
  QueryCharacterCharactername({
    this.full,
    this.native,
    this.userPreferred,
    this.alternative,
    this.alternativeSpoiler,
    this.$__typename = 'CharacterName',
  });

  factory QueryCharacterCharactername.fromJson(Map<String, dynamic> json) {
    final l$full = json['full'];
    final l$native = json['native'];
    final l$userPreferred = json['userPreferred'];
    final l$alternative = json['alternative'];
    final l$alternativeSpoiler = json['alternativeSpoiler'];
    final l$$__typename = json['__typename'];
    return QueryCharacterCharactername(
      full: (l$full as String?),
      native: (l$native as String?),
      userPreferred: (l$userPreferred as String?),
      alternative: (l$alternative as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      alternativeSpoiler: (l$alternativeSpoiler as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? full;

  final String? native;

  final String? userPreferred;

  final List<String?>? alternative;

  final List<String?>? alternativeSpoiler;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$full = full;
    _resultData['full'] = l$full;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$alternative = alternative;
    _resultData['alternative'] = l$alternative?.map((e) => e).toList();
    final l$alternativeSpoiler = alternativeSpoiler;
    _resultData['alternativeSpoiler'] =
        l$alternativeSpoiler?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$full = full;
    final l$native = native;
    final l$userPreferred = userPreferred;
    final l$alternative = alternative;
    final l$alternativeSpoiler = alternativeSpoiler;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$full,
      l$native,
      l$userPreferred,
      l$alternative == null
          ? null
          : Object.hashAll(l$alternative.map((v) => v)),
      l$alternativeSpoiler == null
          ? null
          : Object.hashAll(l$alternativeSpoiler.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryCharacterCharactername ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$alternative = alternative;
    final lOther$alternative = other.alternative;
    if (l$alternative != null && lOther$alternative != null) {
      if (l$alternative.length != lOther$alternative.length) {
        return false;
      }
      for (int i = 0; i < l$alternative.length; i++) {
        final l$alternative$entry = l$alternative[i];
        final lOther$alternative$entry = lOther$alternative[i];
        if (l$alternative$entry != lOther$alternative$entry) {
          return false;
        }
      }
    } else if (l$alternative != lOther$alternative) {
      return false;
    }
    final l$alternativeSpoiler = alternativeSpoiler;
    final lOther$alternativeSpoiler = other.alternativeSpoiler;
    if (l$alternativeSpoiler != null && lOther$alternativeSpoiler != null) {
      if (l$alternativeSpoiler.length != lOther$alternativeSpoiler.length) {
        return false;
      }
      for (int i = 0; i < l$alternativeSpoiler.length; i++) {
        final l$alternativeSpoiler$entry = l$alternativeSpoiler[i];
        final lOther$alternativeSpoiler$entry = lOther$alternativeSpoiler[i];
        if (l$alternativeSpoiler$entry != lOther$alternativeSpoiler$entry) {
          return false;
        }
      }
    } else if (l$alternativeSpoiler != lOther$alternativeSpoiler) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryCharacterCharactername
    on QueryCharacterCharactername {
  CopyWithQueryCharacterCharactername<QueryCharacterCharactername>
      get copyWith => CopyWithQueryCharacterCharactername(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryCharacterCharactername<TRes> {
  factory CopyWithQueryCharacterCharactername(
    QueryCharacterCharactername instance,
    TRes Function(QueryCharacterCharactername) then,
  ) = _CopyWithImplQueryCharacterCharactername;

  factory CopyWithQueryCharacterCharactername.stub(TRes res) =
      _CopyWithStubImplQueryCharacterCharactername;

  TRes call({
    String? full,
    String? native,
    String? userPreferred,
    List<String?>? alternative,
    List<String?>? alternativeSpoiler,
    String? $__typename,
  });
}

class _CopyWithImplQueryCharacterCharactername<TRes>
    implements CopyWithQueryCharacterCharactername<TRes> {
  _CopyWithImplQueryCharacterCharactername(
    this._instance,
    this._then,
  );

  final QueryCharacterCharactername _instance;

  final TRes Function(QueryCharacterCharactername) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full = _undefined,
    Object? native = _undefined,
    Object? userPreferred = _undefined,
    Object? alternative = _undefined,
    Object? alternativeSpoiler = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryCharacterCharactername(
        full: full == _undefined ? _instance.full : (full as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        alternative: alternative == _undefined
            ? _instance.alternative
            : (alternative as List<String?>?),
        alternativeSpoiler: alternativeSpoiler == _undefined
            ? _instance.alternativeSpoiler
            : (alternativeSpoiler as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryCharacterCharactername<TRes>
    implements CopyWithQueryCharacterCharactername<TRes> {
  _CopyWithStubImplQueryCharacterCharactername(this._res);

  TRes _res;

  call({
    String? full,
    String? native,
    String? userPreferred,
    List<String?>? alternative,
    List<String?>? alternativeSpoiler,
    String? $__typename,
  }) =>
      _res;
}

class QueryCharacterCharacterimage {
  QueryCharacterCharacterimage({
    this.large,
    this.medium,
    this.$__typename = 'CharacterImage',
  });

  factory QueryCharacterCharacterimage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return QueryCharacterCharacterimage(
      large: (l$large as String?),
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryCharacterCharacterimage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryCharacterCharacterimage
    on QueryCharacterCharacterimage {
  CopyWithQueryCharacterCharacterimage<QueryCharacterCharacterimage>
      get copyWith => CopyWithQueryCharacterCharacterimage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryCharacterCharacterimage<TRes> {
  factory CopyWithQueryCharacterCharacterimage(
    QueryCharacterCharacterimage instance,
    TRes Function(QueryCharacterCharacterimage) then,
  ) = _CopyWithImplQueryCharacterCharacterimage;

  factory CopyWithQueryCharacterCharacterimage.stub(TRes res) =
      _CopyWithStubImplQueryCharacterCharacterimage;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplQueryCharacterCharacterimage<TRes>
    implements CopyWithQueryCharacterCharacterimage<TRes> {
  _CopyWithImplQueryCharacterCharacterimage(
    this._instance,
    this._then,
  );

  final QueryCharacterCharacterimage _instance;

  final TRes Function(QueryCharacterCharacterimage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryCharacterCharacterimage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryCharacterCharacterimage<TRes>
    implements CopyWithQueryCharacterCharacterimage<TRes> {
  _CopyWithStubImplQueryCharacterCharacterimage(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class QueryCharacterCharacterdateOfBirth {
  QueryCharacterCharacterdateOfBirth({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryCharacterCharacterdateOfBirth.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryCharacterCharacterdateOfBirth(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryCharacterCharacterdateOfBirth ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryCharacterCharacterdateOfBirth
    on QueryCharacterCharacterdateOfBirth {
  CopyWithQueryCharacterCharacterdateOfBirth<QueryCharacterCharacterdateOfBirth>
      get copyWith => CopyWithQueryCharacterCharacterdateOfBirth(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryCharacterCharacterdateOfBirth<TRes> {
  factory CopyWithQueryCharacterCharacterdateOfBirth(
    QueryCharacterCharacterdateOfBirth instance,
    TRes Function(QueryCharacterCharacterdateOfBirth) then,
  ) = _CopyWithImplQueryCharacterCharacterdateOfBirth;

  factory CopyWithQueryCharacterCharacterdateOfBirth.stub(TRes res) =
      _CopyWithStubImplQueryCharacterCharacterdateOfBirth;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryCharacterCharacterdateOfBirth<TRes>
    implements CopyWithQueryCharacterCharacterdateOfBirth<TRes> {
  _CopyWithImplQueryCharacterCharacterdateOfBirth(
    this._instance,
    this._then,
  );

  final QueryCharacterCharacterdateOfBirth _instance;

  final TRes Function(QueryCharacterCharacterdateOfBirth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryCharacterCharacterdateOfBirth(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryCharacterCharacterdateOfBirth<TRes>
    implements CopyWithQueryCharacterCharacterdateOfBirth<TRes> {
  _CopyWithStubImplQueryCharacterCharacterdateOfBirth(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class QueryCharacterCharactermedia {
  QueryCharacterCharactermedia({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory QueryCharacterCharactermedia.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return QueryCharacterCharactermedia(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryCharacterCharactermediaedges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryCharacterCharactermediaedges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryCharacterCharactermedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryCharacterCharactermedia
    on QueryCharacterCharactermedia {
  CopyWithQueryCharacterCharactermedia<QueryCharacterCharactermedia>
      get copyWith => CopyWithQueryCharacterCharactermedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryCharacterCharactermedia<TRes> {
  factory CopyWithQueryCharacterCharactermedia(
    QueryCharacterCharactermedia instance,
    TRes Function(QueryCharacterCharactermedia) then,
  ) = _CopyWithImplQueryCharacterCharactermedia;

  factory CopyWithQueryCharacterCharactermedia.stub(TRes res) =
      _CopyWithStubImplQueryCharacterCharactermedia;

  TRes call({
    List<QueryCharacterCharactermediaedges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<QueryCharacterCharactermediaedges?>? Function(
              Iterable<
                  CopyWithQueryCharacterCharactermediaedges<
                      QueryCharacterCharactermediaedges>?>?)
          _fn);
}

class _CopyWithImplQueryCharacterCharactermedia<TRes>
    implements CopyWithQueryCharacterCharactermedia<TRes> {
  _CopyWithImplQueryCharacterCharactermedia(
    this._instance,
    this._then,
  );

  final QueryCharacterCharactermedia _instance;

  final TRes Function(QueryCharacterCharactermedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryCharacterCharactermedia(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<QueryCharacterCharactermediaedges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<QueryCharacterCharactermediaedges?>? Function(
                  Iterable<
                      CopyWithQueryCharacterCharactermediaedges<
                          QueryCharacterCharactermediaedges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWithQueryCharacterCharactermediaedges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryCharacterCharactermedia<TRes>
    implements CopyWithQueryCharacterCharactermedia<TRes> {
  _CopyWithStubImplQueryCharacterCharactermedia(this._res);

  TRes _res;

  call({
    List<QueryCharacterCharactermediaedges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class QueryCharacterCharactermediaedges {
  QueryCharacterCharactermediaedges({
    this.id,
    this.characterRole,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory QueryCharacterCharactermediaedges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$characterRole = json['characterRole'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return QueryCharacterCharactermediaedges(
      id: (l$id as int?),
      characterRole: l$characterRole == null
          ? null
          : fromJsonEnumCharacterRole((l$characterRole as String)),
      node: l$node == null
          ? null
          : FragmentMediaMin.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final EnumCharacterRole? characterRole;

  final FragmentMediaMin? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$characterRole = characterRole;
    _resultData['characterRole'] = l$characterRole == null
        ? null
        : toJsonEnumCharacterRole(l$characterRole);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$characterRole = characterRole;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$characterRole,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryCharacterCharactermediaedges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$characterRole = characterRole;
    final lOther$characterRole = other.characterRole;
    if (l$characterRole != lOther$characterRole) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryCharacterCharactermediaedges
    on QueryCharacterCharactermediaedges {
  CopyWithQueryCharacterCharactermediaedges<QueryCharacterCharactermediaedges>
      get copyWith => CopyWithQueryCharacterCharactermediaedges(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryCharacterCharactermediaedges<TRes> {
  factory CopyWithQueryCharacterCharactermediaedges(
    QueryCharacterCharactermediaedges instance,
    TRes Function(QueryCharacterCharactermediaedges) then,
  ) = _CopyWithImplQueryCharacterCharactermediaedges;

  factory CopyWithQueryCharacterCharactermediaedges.stub(TRes res) =
      _CopyWithStubImplQueryCharacterCharactermediaedges;

  TRes call({
    int? id,
    EnumCharacterRole? characterRole,
    FragmentMediaMin? node,
    String? $__typename,
  });
  CopyWithFragmentMediaMin<TRes> get node;
}

class _CopyWithImplQueryCharacterCharactermediaedges<TRes>
    implements CopyWithQueryCharacterCharactermediaedges<TRes> {
  _CopyWithImplQueryCharacterCharactermediaedges(
    this._instance,
    this._then,
  );

  final QueryCharacterCharactermediaedges _instance;

  final TRes Function(QueryCharacterCharactermediaedges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? characterRole = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryCharacterCharactermediaedges(
        id: id == _undefined ? _instance.id : (id as int?),
        characterRole: characterRole == _undefined
            ? _instance.characterRole
            : (characterRole as EnumCharacterRole?),
        node: node == _undefined ? _instance.node : (node as FragmentMediaMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMin<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWithFragmentMediaMin.stub(_then(_instance))
        : CopyWithFragmentMediaMin(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImplQueryCharacterCharactermediaedges<TRes>
    implements CopyWithQueryCharacterCharactermediaedges<TRes> {
  _CopyWithStubImplQueryCharacterCharactermediaedges(this._res);

  TRes _res;

  call({
    int? id,
    EnumCharacterRole? characterRole,
    FragmentMediaMin? node,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMin<TRes> get node =>
      CopyWithFragmentMediaMin.stub(_res);
}

class VariablesQueryMediaCharacters {
  factory VariablesQueryMediaCharacters({
    int? id,
    int? page,
    int? perPage,
  }) =>
      VariablesQueryMediaCharacters._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  VariablesQueryMediaCharacters._(this._$data);

  factory VariablesQueryMediaCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return VariablesQueryMediaCharacters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    return result$data;
  }

  CopyWithVariablesQueryMediaCharacters<VariablesQueryMediaCharacters>
      get copyWith => CopyWithVariablesQueryMediaCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryMediaCharacters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryMediaCharacters<TRes> {
  factory CopyWithVariablesQueryMediaCharacters(
    VariablesQueryMediaCharacters instance,
    TRes Function(VariablesQueryMediaCharacters) then,
  ) = _CopyWithImplVariablesQueryMediaCharacters;

  factory CopyWithVariablesQueryMediaCharacters.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMediaCharacters;

  TRes call({
    int? id,
    int? page,
    int? perPage,
  });
}

class _CopyWithImplVariablesQueryMediaCharacters<TRes>
    implements CopyWithVariablesQueryMediaCharacters<TRes> {
  _CopyWithImplVariablesQueryMediaCharacters(
    this._instance,
    this._then,
  );

  final VariablesQueryMediaCharacters _instance;

  final TRes Function(VariablesQueryMediaCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(VariablesQueryMediaCharacters._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImplVariablesQueryMediaCharacters<TRes>
    implements CopyWithVariablesQueryMediaCharacters<TRes> {
  _CopyWithStubImplVariablesQueryMediaCharacters(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
    int? perPage,
  }) =>
      _res;
}

class QueryMediaCharacters {
  QueryMediaCharacters({
    this.Media,
    this.$__typename = 'Query',
  });

  factory QueryMediaCharacters.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return QueryMediaCharacters(
      Media: l$Media == null
          ? null
          : QueryMediaCharactersMedia.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaCharactersMedia? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaCharacters || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaCharacters on QueryMediaCharacters {
  CopyWithQueryMediaCharacters<QueryMediaCharacters> get copyWith =>
      CopyWithQueryMediaCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaCharacters<TRes> {
  factory CopyWithQueryMediaCharacters(
    QueryMediaCharacters instance,
    TRes Function(QueryMediaCharacters) then,
  ) = _CopyWithImplQueryMediaCharacters;

  factory CopyWithQueryMediaCharacters.stub(TRes res) =
      _CopyWithStubImplQueryMediaCharacters;

  TRes call({
    QueryMediaCharactersMedia? Media,
    String? $__typename,
  });
  CopyWithQueryMediaCharactersMedia<TRes> get Media;
}

class _CopyWithImplQueryMediaCharacters<TRes>
    implements CopyWithQueryMediaCharacters<TRes> {
  _CopyWithImplQueryMediaCharacters(
    this._instance,
    this._then,
  );

  final QueryMediaCharacters _instance;

  final TRes Function(QueryMediaCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaCharacters(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as QueryMediaCharactersMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaCharactersMedia<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWithQueryMediaCharactersMedia.stub(_then(_instance))
        : CopyWithQueryMediaCharactersMedia(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImplQueryMediaCharacters<TRes>
    implements CopyWithQueryMediaCharacters<TRes> {
  _CopyWithStubImplQueryMediaCharacters(this._res);

  TRes _res;

  call({
    QueryMediaCharactersMedia? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaCharactersMedia<TRes> get Media =>
      CopyWithQueryMediaCharactersMedia.stub(_res);
}

const documentNodeQueryMediaCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaCharacters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'ROLE')),
                  EnumValueNode(name: NameNode(value: 'RELEVANCE')),
                  EnumValueNode(name: NameNode(value: 'ID')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'perPage'),
                value: VariableNode(name: NameNode(value: 'perPage')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'perPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'currentPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'lastPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'hasNextPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'CharacterEdge'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCharacterEdge,
]);

class QueryMediaCharactersMedia {
  QueryMediaCharactersMedia({
    required this.id,
    this.characters,
    this.$__typename = 'Media',
  });

  factory QueryMediaCharactersMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return QueryMediaCharactersMedia(
      id: (l$id as int),
      characters: l$characters == null
          ? null
          : QueryMediaCharactersMediacharacters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QueryMediaCharactersMediacharacters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaCharactersMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaCharactersMedia
    on QueryMediaCharactersMedia {
  CopyWithQueryMediaCharactersMedia<QueryMediaCharactersMedia> get copyWith =>
      CopyWithQueryMediaCharactersMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaCharactersMedia<TRes> {
  factory CopyWithQueryMediaCharactersMedia(
    QueryMediaCharactersMedia instance,
    TRes Function(QueryMediaCharactersMedia) then,
  ) = _CopyWithImplQueryMediaCharactersMedia;

  factory CopyWithQueryMediaCharactersMedia.stub(TRes res) =
      _CopyWithStubImplQueryMediaCharactersMedia;

  TRes call({
    int? id,
    QueryMediaCharactersMediacharacters? characters,
    String? $__typename,
  });
  CopyWithQueryMediaCharactersMediacharacters<TRes> get characters;
}

class _CopyWithImplQueryMediaCharactersMedia<TRes>
    implements CopyWithQueryMediaCharactersMedia<TRes> {
  _CopyWithImplQueryMediaCharactersMedia(
    this._instance,
    this._then,
  );

  final QueryMediaCharactersMedia _instance;

  final TRes Function(QueryMediaCharactersMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaCharactersMedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as QueryMediaCharactersMediacharacters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaCharactersMediacharacters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWithQueryMediaCharactersMediacharacters.stub(_then(_instance))
        : CopyWithQueryMediaCharactersMediacharacters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImplQueryMediaCharactersMedia<TRes>
    implements CopyWithQueryMediaCharactersMedia<TRes> {
  _CopyWithStubImplQueryMediaCharactersMedia(this._res);

  TRes _res;

  call({
    int? id,
    QueryMediaCharactersMediacharacters? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaCharactersMediacharacters<TRes> get characters =>
      CopyWithQueryMediaCharactersMediacharacters.stub(_res);
}

class QueryMediaCharactersMediacharacters {
  QueryMediaCharactersMediacharacters({
    this.pageInfo,
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory QueryMediaCharactersMediacharacters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return QueryMediaCharactersMediacharacters(
      pageInfo: l$pageInfo == null
          ? null
          : QueryMediaCharactersMediacharacterspageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentCharacterEdge.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaCharactersMediacharacterspageInfo? pageInfo;

  final List<FragmentCharacterEdge?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaCharactersMediacharacters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaCharactersMediacharacters
    on QueryMediaCharactersMediacharacters {
  CopyWithQueryMediaCharactersMediacharacters<
          QueryMediaCharactersMediacharacters>
      get copyWith => CopyWithQueryMediaCharactersMediacharacters(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaCharactersMediacharacters<TRes> {
  factory CopyWithQueryMediaCharactersMediacharacters(
    QueryMediaCharactersMediacharacters instance,
    TRes Function(QueryMediaCharactersMediacharacters) then,
  ) = _CopyWithImplQueryMediaCharactersMediacharacters;

  factory CopyWithQueryMediaCharactersMediacharacters.stub(TRes res) =
      _CopyWithStubImplQueryMediaCharactersMediacharacters;

  TRes call({
    QueryMediaCharactersMediacharacterspageInfo? pageInfo,
    List<FragmentCharacterEdge?>? edges,
    String? $__typename,
  });
  CopyWithQueryMediaCharactersMediacharacterspageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<FragmentCharacterEdge?>? Function(
              Iterable<CopyWithFragmentCharacterEdge<FragmentCharacterEdge>?>?)
          _fn);
}

class _CopyWithImplQueryMediaCharactersMediacharacters<TRes>
    implements CopyWithQueryMediaCharactersMediacharacters<TRes> {
  _CopyWithImplQueryMediaCharactersMediacharacters(
    this._instance,
    this._then,
  );

  final QueryMediaCharactersMediacharacters _instance;

  final TRes Function(QueryMediaCharactersMediacharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaCharactersMediacharacters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryMediaCharactersMediacharacterspageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<FragmentCharacterEdge?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaCharactersMediacharacterspageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryMediaCharactersMediacharacterspageInfo.stub(
            _then(_instance))
        : CopyWithQueryMediaCharactersMediacharacterspageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<FragmentCharacterEdge?>? Function(
                  Iterable<
                      CopyWithFragmentCharacterEdge<FragmentCharacterEdge>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWithFragmentCharacterEdge(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaCharactersMediacharacters<TRes>
    implements CopyWithQueryMediaCharactersMediacharacters<TRes> {
  _CopyWithStubImplQueryMediaCharactersMediacharacters(this._res);

  TRes _res;

  call({
    QueryMediaCharactersMediacharacterspageInfo? pageInfo,
    List<FragmentCharacterEdge?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaCharactersMediacharacterspageInfo<TRes> get pageInfo =>
      CopyWithQueryMediaCharactersMediacharacterspageInfo.stub(_res);

  edges(_fn) => _res;
}

class QueryMediaCharactersMediacharacterspageInfo {
  QueryMediaCharactersMediacharacterspageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryMediaCharactersMediacharacterspageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryMediaCharactersMediacharacterspageInfo(
      total: (l$total as int?),
      perPage: (l$perPage as int?),
      currentPage: (l$currentPage as int?),
      lastPage: (l$lastPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final int? perPage;

  final int? currentPage;

  final int? lastPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$perPage = perPage;
    _resultData['perPage'] = l$perPage;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$lastPage = lastPage;
    _resultData['lastPage'] = l$lastPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$perPage = perPage;
    final l$currentPage = currentPage;
    final l$lastPage = lastPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$perPage,
      l$currentPage,
      l$lastPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaCharactersMediacharacterspageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$lastPage = lastPage;
    final lOther$lastPage = other.lastPage;
    if (l$lastPage != lOther$lastPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaCharactersMediacharacterspageInfo
    on QueryMediaCharactersMediacharacterspageInfo {
  CopyWithQueryMediaCharactersMediacharacterspageInfo<
          QueryMediaCharactersMediacharacterspageInfo>
      get copyWith => CopyWithQueryMediaCharactersMediacharacterspageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaCharactersMediacharacterspageInfo<TRes> {
  factory CopyWithQueryMediaCharactersMediacharacterspageInfo(
    QueryMediaCharactersMediacharacterspageInfo instance,
    TRes Function(QueryMediaCharactersMediacharacterspageInfo) then,
  ) = _CopyWithImplQueryMediaCharactersMediacharacterspageInfo;

  factory CopyWithQueryMediaCharactersMediacharacterspageInfo.stub(TRes res) =
      _CopyWithStubImplQueryMediaCharactersMediacharacterspageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaCharactersMediacharacterspageInfo<TRes>
    implements CopyWithQueryMediaCharactersMediacharacterspageInfo<TRes> {
  _CopyWithImplQueryMediaCharactersMediacharacterspageInfo(
    this._instance,
    this._then,
  );

  final QueryMediaCharactersMediacharacterspageInfo _instance;

  final TRes Function(QueryMediaCharactersMediacharacterspageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaCharactersMediacharacterspageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        perPage: perPage == _undefined ? _instance.perPage : (perPage as int?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        lastPage:
            lastPage == _undefined ? _instance.lastPage : (lastPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaCharactersMediacharacterspageInfo<TRes>
    implements CopyWithQueryMediaCharactersMediacharacterspageInfo<TRes> {
  _CopyWithStubImplQueryMediaCharactersMediacharacterspageInfo(this._res);

  TRes _res;

  call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
