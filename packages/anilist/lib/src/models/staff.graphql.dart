import 'package:gql/ast.dart';

class FragmentStaffEdge {
  FragmentStaffEdge({
    this.id,
    this.role,
    this.node,
    this.$__typename = 'StaffEdge',
  });

  factory FragmentStaffEdge.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$role = json['role'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return FragmentStaffEdge(
      id: (l$id as int?),
      role: (l$role as String?),
      node: l$node == null
          ? null
          : FragmentStaffEdgenode.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? role;

  final FragmentStaffEdgenode? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$role = role;
    _resultData['role'] = l$role;
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
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$role,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentStaffEdge || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentStaffEdge on FragmentStaffEdge {
  CopyWithFragmentStaffEdge<FragmentStaffEdge> get copyWith =>
      CopyWithFragmentStaffEdge(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentStaffEdge<TRes> {
  factory CopyWithFragmentStaffEdge(
    FragmentStaffEdge instance,
    TRes Function(FragmentStaffEdge) then,
  ) = _CopyWithImplFragmentStaffEdge;

  factory CopyWithFragmentStaffEdge.stub(TRes res) =
      _CopyWithStubImplFragmentStaffEdge;

  TRes call({
    int? id,
    String? role,
    FragmentStaffEdgenode? node,
    String? $__typename,
  });
  CopyWithFragmentStaffEdgenode<TRes> get node;
}

class _CopyWithImplFragmentStaffEdge<TRes>
    implements CopyWithFragmentStaffEdge<TRes> {
  _CopyWithImplFragmentStaffEdge(
    this._instance,
    this._then,
  );

  final FragmentStaffEdge _instance;

  final TRes Function(FragmentStaffEdge) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? role = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentStaffEdge(
        id: id == _undefined ? _instance.id : (id as int?),
        role: role == _undefined ? _instance.role : (role as String?),
        node: node == _undefined
            ? _instance.node
            : (node as FragmentStaffEdgenode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentStaffEdgenode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWithFragmentStaffEdgenode.stub(_then(_instance))
        : CopyWithFragmentStaffEdgenode(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImplFragmentStaffEdge<TRes>
    implements CopyWithFragmentStaffEdge<TRes> {
  _CopyWithStubImplFragmentStaffEdge(this._res);

  TRes _res;

  call({
    int? id,
    String? role,
    FragmentStaffEdgenode? node,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentStaffEdgenode<TRes> get node =>
      CopyWithFragmentStaffEdgenode.stub(_res);
}

const fragmentDefinitionStaffEdge = FragmentDefinitionNode(
  name: NameNode(value: 'StaffEdge'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'StaffEdge'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentStaffEdge = DocumentNode(definitions: [
  fragmentDefinitionStaffEdge,
]);

class FragmentStaffEdgenode {
  FragmentStaffEdgenode({
    required this.id,
    this.name,
    this.language,
    this.image,
    this.$__typename = 'Staff',
  });

  factory FragmentStaffEdgenode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$language = json['language'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return FragmentStaffEdgenode(
      id: (l$id as int),
      name: l$name == null
          ? null
          : FragmentStaffEdgenodename.fromJson(
              (l$name as Map<String, dynamic>)),
      language: (l$language as String?),
      image: l$image == null
          ? null
          : FragmentStaffEdgenodeimage.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final FragmentStaffEdgenodename? name;

  final String? language;

  final FragmentStaffEdgenodeimage? image;

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
    if (other is! FragmentStaffEdgenode || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentStaffEdgenode on FragmentStaffEdgenode {
  CopyWithFragmentStaffEdgenode<FragmentStaffEdgenode> get copyWith =>
      CopyWithFragmentStaffEdgenode(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentStaffEdgenode<TRes> {
  factory CopyWithFragmentStaffEdgenode(
    FragmentStaffEdgenode instance,
    TRes Function(FragmentStaffEdgenode) then,
  ) = _CopyWithImplFragmentStaffEdgenode;

  factory CopyWithFragmentStaffEdgenode.stub(TRes res) =
      _CopyWithStubImplFragmentStaffEdgenode;

  TRes call({
    int? id,
    FragmentStaffEdgenodename? name,
    String? language,
    FragmentStaffEdgenodeimage? image,
    String? $__typename,
  });
  CopyWithFragmentStaffEdgenodename<TRes> get name;
  CopyWithFragmentStaffEdgenodeimage<TRes> get image;
}

class _CopyWithImplFragmentStaffEdgenode<TRes>
    implements CopyWithFragmentStaffEdgenode<TRes> {
  _CopyWithImplFragmentStaffEdgenode(
    this._instance,
    this._then,
  );

  final FragmentStaffEdgenode _instance;

  final TRes Function(FragmentStaffEdgenode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? language = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentStaffEdgenode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as FragmentStaffEdgenodename?),
        language:
            language == _undefined ? _instance.language : (language as String?),
        image: image == _undefined
            ? _instance.image
            : (image as FragmentStaffEdgenodeimage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentStaffEdgenodename<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWithFragmentStaffEdgenodename.stub(_then(_instance))
        : CopyWithFragmentStaffEdgenodename(local$name, (e) => call(name: e));
  }

  CopyWithFragmentStaffEdgenodeimage<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWithFragmentStaffEdgenodeimage.stub(_then(_instance))
        : CopyWithFragmentStaffEdgenodeimage(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImplFragmentStaffEdgenode<TRes>
    implements CopyWithFragmentStaffEdgenode<TRes> {
  _CopyWithStubImplFragmentStaffEdgenode(this._res);

  TRes _res;

  call({
    int? id,
    FragmentStaffEdgenodename? name,
    String? language,
    FragmentStaffEdgenodeimage? image,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentStaffEdgenodename<TRes> get name =>
      CopyWithFragmentStaffEdgenodename.stub(_res);

  CopyWithFragmentStaffEdgenodeimage<TRes> get image =>
      CopyWithFragmentStaffEdgenodeimage.stub(_res);
}

class FragmentStaffEdgenodename {
  FragmentStaffEdgenodename({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory FragmentStaffEdgenodename.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return FragmentStaffEdgenodename(
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
    if (other is! FragmentStaffEdgenodename ||
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

extension UtilityExtensionFragmentStaffEdgenodename
    on FragmentStaffEdgenodename {
  CopyWithFragmentStaffEdgenodename<FragmentStaffEdgenodename> get copyWith =>
      CopyWithFragmentStaffEdgenodename(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentStaffEdgenodename<TRes> {
  factory CopyWithFragmentStaffEdgenodename(
    FragmentStaffEdgenodename instance,
    TRes Function(FragmentStaffEdgenodename) then,
  ) = _CopyWithImplFragmentStaffEdgenodename;

  factory CopyWithFragmentStaffEdgenodename.stub(TRes res) =
      _CopyWithStubImplFragmentStaffEdgenodename;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplFragmentStaffEdgenodename<TRes>
    implements CopyWithFragmentStaffEdgenodename<TRes> {
  _CopyWithImplFragmentStaffEdgenodename(
    this._instance,
    this._then,
  );

  final FragmentStaffEdgenodename _instance;

  final TRes Function(FragmentStaffEdgenodename) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentStaffEdgenodename(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentStaffEdgenodename<TRes>
    implements CopyWithFragmentStaffEdgenodename<TRes> {
  _CopyWithStubImplFragmentStaffEdgenodename(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class FragmentStaffEdgenodeimage {
  FragmentStaffEdgenodeimage({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory FragmentStaffEdgenodeimage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return FragmentStaffEdgenodeimage(
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
    if (other is! FragmentStaffEdgenodeimage ||
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

extension UtilityExtensionFragmentStaffEdgenodeimage
    on FragmentStaffEdgenodeimage {
  CopyWithFragmentStaffEdgenodeimage<FragmentStaffEdgenodeimage> get copyWith =>
      CopyWithFragmentStaffEdgenodeimage(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentStaffEdgenodeimage<TRes> {
  factory CopyWithFragmentStaffEdgenodeimage(
    FragmentStaffEdgenodeimage instance,
    TRes Function(FragmentStaffEdgenodeimage) then,
  ) = _CopyWithImplFragmentStaffEdgenodeimage;

  factory CopyWithFragmentStaffEdgenodeimage.stub(TRes res) =
      _CopyWithStubImplFragmentStaffEdgenodeimage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplFragmentStaffEdgenodeimage<TRes>
    implements CopyWithFragmentStaffEdgenodeimage<TRes> {
  _CopyWithImplFragmentStaffEdgenodeimage(
    this._instance,
    this._then,
  );

  final FragmentStaffEdgenodeimage _instance;

  final TRes Function(FragmentStaffEdgenodeimage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentStaffEdgenodeimage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentStaffEdgenodeimage<TRes>
    implements CopyWithFragmentStaffEdgenodeimage<TRes> {
  _CopyWithStubImplFragmentStaffEdgenodeimage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryMediaStaff {
  factory VariablesQueryMediaStaff({
    int? id,
    int? page,
    int? perPage,
  }) =>
      VariablesQueryMediaStaff._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  VariablesQueryMediaStaff._(this._$data);

  factory VariablesQueryMediaStaff.fromJson(Map<String, dynamic> data) {
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
    return VariablesQueryMediaStaff._(result$data);
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

  CopyWithVariablesQueryMediaStaff<VariablesQueryMediaStaff> get copyWith =>
      CopyWithVariablesQueryMediaStaff(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryMediaStaff ||
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

abstract class CopyWithVariablesQueryMediaStaff<TRes> {
  factory CopyWithVariablesQueryMediaStaff(
    VariablesQueryMediaStaff instance,
    TRes Function(VariablesQueryMediaStaff) then,
  ) = _CopyWithImplVariablesQueryMediaStaff;

  factory CopyWithVariablesQueryMediaStaff.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMediaStaff;

  TRes call({
    int? id,
    int? page,
    int? perPage,
  });
}

class _CopyWithImplVariablesQueryMediaStaff<TRes>
    implements CopyWithVariablesQueryMediaStaff<TRes> {
  _CopyWithImplVariablesQueryMediaStaff(
    this._instance,
    this._then,
  );

  final VariablesQueryMediaStaff _instance;

  final TRes Function(VariablesQueryMediaStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(VariablesQueryMediaStaff._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImplVariablesQueryMediaStaff<TRes>
    implements CopyWithVariablesQueryMediaStaff<TRes> {
  _CopyWithStubImplVariablesQueryMediaStaff(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
    int? perPage,
  }) =>
      _res;
}

class QueryMediaStaff {
  QueryMediaStaff({
    this.Media,
    this.$__typename = 'Query',
  });

  factory QueryMediaStaff.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return QueryMediaStaff(
      Media: l$Media == null
          ? null
          : QueryMediaStaffMedia.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaStaffMedia? Media;

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
    if (other is! QueryMediaStaff || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryMediaStaff on QueryMediaStaff {
  CopyWithQueryMediaStaff<QueryMediaStaff> get copyWith =>
      CopyWithQueryMediaStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaStaff<TRes> {
  factory CopyWithQueryMediaStaff(
    QueryMediaStaff instance,
    TRes Function(QueryMediaStaff) then,
  ) = _CopyWithImplQueryMediaStaff;

  factory CopyWithQueryMediaStaff.stub(TRes res) =
      _CopyWithStubImplQueryMediaStaff;

  TRes call({
    QueryMediaStaffMedia? Media,
    String? $__typename,
  });
  CopyWithQueryMediaStaffMedia<TRes> get Media;
}

class _CopyWithImplQueryMediaStaff<TRes>
    implements CopyWithQueryMediaStaff<TRes> {
  _CopyWithImplQueryMediaStaff(
    this._instance,
    this._then,
  );

  final QueryMediaStaff _instance;

  final TRes Function(QueryMediaStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaStaff(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as QueryMediaStaffMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaStaffMedia<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWithQueryMediaStaffMedia.stub(_then(_instance))
        : CopyWithQueryMediaStaffMedia(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImplQueryMediaStaff<TRes>
    implements CopyWithQueryMediaStaff<TRes> {
  _CopyWithStubImplQueryMediaStaff(this._res);

  TRes _res;

  call({
    QueryMediaStaffMedia? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaStaffMedia<TRes> get Media =>
      CopyWithQueryMediaStaffMedia.stub(_res);
}

const documentNodeQueryMediaStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaStaff'),
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
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
                    name: NameNode(value: 'currentPage'),
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
                    name: NameNode(value: 'lastPage'),
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
                    name: NameNode(value: 'total'),
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
                    name: NameNode(value: 'StaffEdge'),
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
  fragmentDefinitionStaffEdge,
]);

class QueryMediaStaffMedia {
  QueryMediaStaffMedia({
    this.staff,
    this.$__typename = 'Media',
  });

  factory QueryMediaStaffMedia.fromJson(Map<String, dynamic> json) {
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return QueryMediaStaffMedia(
      staff: l$staff == null
          ? null
          : QueryMediaStaffMediastaff.fromJson(
              (l$staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaStaffMediastaff? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaStaffMedia || runtimeType != other.runtimeType) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
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

extension UtilityExtensionQueryMediaStaffMedia on QueryMediaStaffMedia {
  CopyWithQueryMediaStaffMedia<QueryMediaStaffMedia> get copyWith =>
      CopyWithQueryMediaStaffMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaStaffMedia<TRes> {
  factory CopyWithQueryMediaStaffMedia(
    QueryMediaStaffMedia instance,
    TRes Function(QueryMediaStaffMedia) then,
  ) = _CopyWithImplQueryMediaStaffMedia;

  factory CopyWithQueryMediaStaffMedia.stub(TRes res) =
      _CopyWithStubImplQueryMediaStaffMedia;

  TRes call({
    QueryMediaStaffMediastaff? staff,
    String? $__typename,
  });
  CopyWithQueryMediaStaffMediastaff<TRes> get staff;
}

class _CopyWithImplQueryMediaStaffMedia<TRes>
    implements CopyWithQueryMediaStaffMedia<TRes> {
  _CopyWithImplQueryMediaStaffMedia(
    this._instance,
    this._then,
  );

  final QueryMediaStaffMedia _instance;

  final TRes Function(QueryMediaStaffMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaStaffMedia(
        staff: staff == _undefined
            ? _instance.staff
            : (staff as QueryMediaStaffMediastaff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaStaffMediastaff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWithQueryMediaStaffMediastaff.stub(_then(_instance))
        : CopyWithQueryMediaStaffMediastaff(local$staff, (e) => call(staff: e));
  }
}

class _CopyWithStubImplQueryMediaStaffMedia<TRes>
    implements CopyWithQueryMediaStaffMedia<TRes> {
  _CopyWithStubImplQueryMediaStaffMedia(this._res);

  TRes _res;

  call({
    QueryMediaStaffMediastaff? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaStaffMediastaff<TRes> get staff =>
      CopyWithQueryMediaStaffMediastaff.stub(_res);
}

class QueryMediaStaffMediastaff {
  QueryMediaStaffMediastaff({
    this.pageInfo,
    this.edges,
    this.$__typename = 'StaffConnection',
  });

  factory QueryMediaStaffMediastaff.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return QueryMediaStaffMediastaff(
      pageInfo: l$pageInfo == null
          ? null
          : QueryMediaStaffMediastaffpageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentStaffEdge.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaStaffMediastaffpageInfo? pageInfo;

  final List<FragmentStaffEdge?>? edges;

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
    if (other is! QueryMediaStaffMediastaff ||
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

extension UtilityExtensionQueryMediaStaffMediastaff
    on QueryMediaStaffMediastaff {
  CopyWithQueryMediaStaffMediastaff<QueryMediaStaffMediastaff> get copyWith =>
      CopyWithQueryMediaStaffMediastaff(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaStaffMediastaff<TRes> {
  factory CopyWithQueryMediaStaffMediastaff(
    QueryMediaStaffMediastaff instance,
    TRes Function(QueryMediaStaffMediastaff) then,
  ) = _CopyWithImplQueryMediaStaffMediastaff;

  factory CopyWithQueryMediaStaffMediastaff.stub(TRes res) =
      _CopyWithStubImplQueryMediaStaffMediastaff;

  TRes call({
    QueryMediaStaffMediastaffpageInfo? pageInfo,
    List<FragmentStaffEdge?>? edges,
    String? $__typename,
  });
  CopyWithQueryMediaStaffMediastaffpageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<FragmentStaffEdge?>? Function(
              Iterable<CopyWithFragmentStaffEdge<FragmentStaffEdge>?>?)
          _fn);
}

class _CopyWithImplQueryMediaStaffMediastaff<TRes>
    implements CopyWithQueryMediaStaffMediastaff<TRes> {
  _CopyWithImplQueryMediaStaffMediastaff(
    this._instance,
    this._then,
  );

  final QueryMediaStaffMediastaff _instance;

  final TRes Function(QueryMediaStaffMediastaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaStaffMediastaff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryMediaStaffMediastaffpageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<FragmentStaffEdge?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaStaffMediastaffpageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryMediaStaffMediastaffpageInfo.stub(_then(_instance))
        : CopyWithQueryMediaStaffMediastaffpageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<FragmentStaffEdge?>? Function(
                  Iterable<CopyWithFragmentStaffEdge<FragmentStaffEdge>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWithFragmentStaffEdge(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaStaffMediastaff<TRes>
    implements CopyWithQueryMediaStaffMediastaff<TRes> {
  _CopyWithStubImplQueryMediaStaffMediastaff(this._res);

  TRes _res;

  call({
    QueryMediaStaffMediastaffpageInfo? pageInfo,
    List<FragmentStaffEdge?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaStaffMediastaffpageInfo<TRes> get pageInfo =>
      CopyWithQueryMediaStaffMediastaffpageInfo.stub(_res);

  edges(_fn) => _res;
}

class QueryMediaStaffMediastaffpageInfo {
  QueryMediaStaffMediastaffpageInfo({
    this.currentPage,
    this.hasNextPage,
    this.lastPage,
    this.perPage,
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory QueryMediaStaffMediastaffpageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$currentPage = json['currentPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$lastPage = json['lastPage'];
    final l$perPage = json['perPage'];
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return QueryMediaStaffMediastaffpageInfo(
      currentPage: (l$currentPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      lastPage: (l$lastPage as int?),
      perPage: (l$perPage as int?),
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? currentPage;

  final bool? hasNextPage;

  final int? lastPage;

  final int? perPage;

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$lastPage = lastPage;
    _resultData['lastPage'] = l$lastPage;
    final l$perPage = perPage;
    _resultData['perPage'] = l$perPage;
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentPage = currentPage;
    final l$hasNextPage = hasNextPage;
    final l$lastPage = lastPage;
    final l$perPage = perPage;
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentPage,
      l$hasNextPage,
      l$lastPage,
      l$perPage,
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaStaffMediastaffpageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$lastPage = lastPage;
    final lOther$lastPage = other.lastPage;
    if (l$lastPage != lOther$lastPage) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtensionQueryMediaStaffMediastaffpageInfo
    on QueryMediaStaffMediastaffpageInfo {
  CopyWithQueryMediaStaffMediastaffpageInfo<QueryMediaStaffMediastaffpageInfo>
      get copyWith => CopyWithQueryMediaStaffMediastaffpageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaStaffMediastaffpageInfo<TRes> {
  factory CopyWithQueryMediaStaffMediastaffpageInfo(
    QueryMediaStaffMediastaffpageInfo instance,
    TRes Function(QueryMediaStaffMediastaffpageInfo) then,
  ) = _CopyWithImplQueryMediaStaffMediastaffpageInfo;

  factory CopyWithQueryMediaStaffMediastaffpageInfo.stub(TRes res) =
      _CopyWithStubImplQueryMediaStaffMediastaffpageInfo;

  TRes call({
    int? currentPage,
    bool? hasNextPage,
    int? lastPage,
    int? perPage,
    int? total,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaStaffMediastaffpageInfo<TRes>
    implements CopyWithQueryMediaStaffMediastaffpageInfo<TRes> {
  _CopyWithImplQueryMediaStaffMediastaffpageInfo(
    this._instance,
    this._then,
  );

  final QueryMediaStaffMediastaffpageInfo _instance;

  final TRes Function(QueryMediaStaffMediastaffpageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? lastPage = _undefined,
    Object? perPage = _undefined,
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaStaffMediastaffpageInfo(
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        lastPage:
            lastPage == _undefined ? _instance.lastPage : (lastPage as int?),
        perPage: perPage == _undefined ? _instance.perPage : (perPage as int?),
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaStaffMediastaffpageInfo<TRes>
    implements CopyWithQueryMediaStaffMediastaffpageInfo<TRes> {
  _CopyWithStubImplQueryMediaStaffMediastaffpageInfo(this._res);

  TRes _res;

  call({
    int? currentPage,
    bool? hasNextPage,
    int? lastPage,
    int? perPage,
    int? total,
    String? $__typename,
  }) =>
      _res;
}
