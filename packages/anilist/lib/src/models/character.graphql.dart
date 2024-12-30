import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

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
