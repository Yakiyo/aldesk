class InputAiringScheduleInput {
  factory InputAiringScheduleInput({
    int? airingAt,
    int? episode,
    int? timeUntilAiring,
  }) =>
      InputAiringScheduleInput._({
        if (airingAt != null) r'airingAt': airingAt,
        if (episode != null) r'episode': episode,
        if (timeUntilAiring != null) r'timeUntilAiring': timeUntilAiring,
      });

  InputAiringScheduleInput._(this._$data);

  factory InputAiringScheduleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('airingAt')) {
      final l$airingAt = data['airingAt'];
      result$data['airingAt'] = (l$airingAt as int?);
    }
    if (data.containsKey('episode')) {
      final l$episode = data['episode'];
      result$data['episode'] = (l$episode as int?);
    }
    if (data.containsKey('timeUntilAiring')) {
      final l$timeUntilAiring = data['timeUntilAiring'];
      result$data['timeUntilAiring'] = (l$timeUntilAiring as int?);
    }
    return InputAiringScheduleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get airingAt => (_$data['airingAt'] as int?);

  int? get episode => (_$data['episode'] as int?);

  int? get timeUntilAiring => (_$data['timeUntilAiring'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('airingAt')) {
      final l$airingAt = airingAt;
      result$data['airingAt'] = l$airingAt;
    }
    if (_$data.containsKey('episode')) {
      final l$episode = episode;
      result$data['episode'] = l$episode;
    }
    if (_$data.containsKey('timeUntilAiring')) {
      final l$timeUntilAiring = timeUntilAiring;
      result$data['timeUntilAiring'] = l$timeUntilAiring;
    }
    return result$data;
  }

  CopyWithInputAiringScheduleInput<InputAiringScheduleInput> get copyWith =>
      CopyWithInputAiringScheduleInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputAiringScheduleInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (_$data.containsKey('airingAt') !=
        other._$data.containsKey('airingAt')) {
      return false;
    }
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (_$data.containsKey('episode') != other._$data.containsKey('episode')) {
      return false;
    }
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (_$data.containsKey('timeUntilAiring') !=
        other._$data.containsKey('timeUntilAiring')) {
      return false;
    }
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$airingAt = airingAt;
    final l$episode = episode;
    final l$timeUntilAiring = timeUntilAiring;
    return Object.hashAll([
      _$data.containsKey('airingAt') ? l$airingAt : const {},
      _$data.containsKey('episode') ? l$episode : const {},
      _$data.containsKey('timeUntilAiring') ? l$timeUntilAiring : const {},
    ]);
  }
}

abstract class CopyWithInputAiringScheduleInput<TRes> {
  factory CopyWithInputAiringScheduleInput(
    InputAiringScheduleInput instance,
    TRes Function(InputAiringScheduleInput) then,
  ) = _CopyWithImplInputAiringScheduleInput;

  factory CopyWithInputAiringScheduleInput.stub(TRes res) =
      _CopyWithStubImplInputAiringScheduleInput;

  TRes call({
    int? airingAt,
    int? episode,
    int? timeUntilAiring,
  });
}

class _CopyWithImplInputAiringScheduleInput<TRes>
    implements CopyWithInputAiringScheduleInput<TRes> {
  _CopyWithImplInputAiringScheduleInput(
    this._instance,
    this._then,
  );

  final InputAiringScheduleInput _instance;

  final TRes Function(InputAiringScheduleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt = _undefined,
    Object? episode = _undefined,
    Object? timeUntilAiring = _undefined,
  }) =>
      _then(InputAiringScheduleInput._({
        ..._instance._$data,
        if (airingAt != _undefined) 'airingAt': (airingAt as int?),
        if (episode != _undefined) 'episode': (episode as int?),
        if (timeUntilAiring != _undefined)
          'timeUntilAiring': (timeUntilAiring as int?),
      }));
}

class _CopyWithStubImplInputAiringScheduleInput<TRes>
    implements CopyWithInputAiringScheduleInput<TRes> {
  _CopyWithStubImplInputAiringScheduleInput(this._res);

  TRes _res;

  call({
    int? airingAt,
    int? episode,
    int? timeUntilAiring,
  }) =>
      _res;
}

class InputAniChartHighlightInput {
  factory InputAniChartHighlightInput({
    int? mediaId,
    String? highlight,
  }) =>
      InputAniChartHighlightInput._({
        if (mediaId != null) r'mediaId': mediaId,
        if (highlight != null) r'highlight': highlight,
      });

  InputAniChartHighlightInput._(this._$data);

  factory InputAniChartHighlightInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('highlight')) {
      final l$highlight = data['highlight'];
      result$data['highlight'] = (l$highlight as String?);
    }
    return InputAniChartHighlightInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  String? get highlight => (_$data['highlight'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('highlight')) {
      final l$highlight = highlight;
      result$data['highlight'] = l$highlight;
    }
    return result$data;
  }

  CopyWithInputAniChartHighlightInput<InputAniChartHighlightInput>
      get copyWith => CopyWithInputAniChartHighlightInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputAniChartHighlightInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$highlight = highlight;
    final lOther$highlight = other.highlight;
    if (_$data.containsKey('highlight') !=
        other._$data.containsKey('highlight')) {
      return false;
    }
    if (l$highlight != lOther$highlight) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$highlight = highlight;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('highlight') ? l$highlight : const {},
    ]);
  }
}

abstract class CopyWithInputAniChartHighlightInput<TRes> {
  factory CopyWithInputAniChartHighlightInput(
    InputAniChartHighlightInput instance,
    TRes Function(InputAniChartHighlightInput) then,
  ) = _CopyWithImplInputAniChartHighlightInput;

  factory CopyWithInputAniChartHighlightInput.stub(TRes res) =
      _CopyWithStubImplInputAniChartHighlightInput;

  TRes call({
    int? mediaId,
    String? highlight,
  });
}

class _CopyWithImplInputAniChartHighlightInput<TRes>
    implements CopyWithInputAniChartHighlightInput<TRes> {
  _CopyWithImplInputAniChartHighlightInput(
    this._instance,
    this._then,
  );

  final InputAniChartHighlightInput _instance;

  final TRes Function(InputAniChartHighlightInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? highlight = _undefined,
  }) =>
      _then(InputAniChartHighlightInput._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (highlight != _undefined) 'highlight': (highlight as String?),
      }));
}

class _CopyWithStubImplInputAniChartHighlightInput<TRes>
    implements CopyWithInputAniChartHighlightInput<TRes> {
  _CopyWithStubImplInputAniChartHighlightInput(this._res);

  TRes _res;

  call({
    int? mediaId,
    String? highlight,
  }) =>
      _res;
}

class InputCharacterNameInput {
  factory InputCharacterNameInput({
    String? first,
    String? middle,
    String? last,
    String? native,
    List<String?>? alternative,
    List<String?>? alternativeSpoiler,
  }) =>
      InputCharacterNameInput._({
        if (first != null) r'first': first,
        if (middle != null) r'middle': middle,
        if (last != null) r'last': last,
        if (native != null) r'native': native,
        if (alternative != null) r'alternative': alternative,
        if (alternativeSpoiler != null)
          r'alternativeSpoiler': alternativeSpoiler,
      });

  InputCharacterNameInput._(this._$data);

  factory InputCharacterNameInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as String?);
    }
    if (data.containsKey('middle')) {
      final l$middle = data['middle'];
      result$data['middle'] = (l$middle as String?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as String?);
    }
    if (data.containsKey('native')) {
      final l$native = data['native'];
      result$data['native'] = (l$native as String?);
    }
    if (data.containsKey('alternative')) {
      final l$alternative = data['alternative'];
      result$data['alternative'] = (l$alternative as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('alternativeSpoiler')) {
      final l$alternativeSpoiler = data['alternativeSpoiler'];
      result$data['alternativeSpoiler'] =
          (l$alternativeSpoiler as List<dynamic>?)
              ?.map((e) => (e as String?))
              .toList();
    }
    return InputCharacterNameInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get first => (_$data['first'] as String?);

  String? get middle => (_$data['middle'] as String?);

  String? get last => (_$data['last'] as String?);

  String? get native => (_$data['native'] as String?);

  List<String?>? get alternative => (_$data['alternative'] as List<String?>?);

  List<String?>? get alternativeSpoiler =>
      (_$data['alternativeSpoiler'] as List<String?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('middle')) {
      final l$middle = middle;
      result$data['middle'] = l$middle;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('native')) {
      final l$native = native;
      result$data['native'] = l$native;
    }
    if (_$data.containsKey('alternative')) {
      final l$alternative = alternative;
      result$data['alternative'] = l$alternative?.map((e) => e).toList();
    }
    if (_$data.containsKey('alternativeSpoiler')) {
      final l$alternativeSpoiler = alternativeSpoiler;
      result$data['alternativeSpoiler'] =
          l$alternativeSpoiler?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWithInputCharacterNameInput<InputCharacterNameInput> get copyWith =>
      CopyWithInputCharacterNameInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputCharacterNameInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$middle = middle;
    final lOther$middle = other.middle;
    if (_$data.containsKey('middle') != other._$data.containsKey('middle')) {
      return false;
    }
    if (l$middle != lOther$middle) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (_$data.containsKey('native') != other._$data.containsKey('native')) {
      return false;
    }
    if (l$native != lOther$native) {
      return false;
    }
    final l$alternative = alternative;
    final lOther$alternative = other.alternative;
    if (_$data.containsKey('alternative') !=
        other._$data.containsKey('alternative')) {
      return false;
    }
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
    if (_$data.containsKey('alternativeSpoiler') !=
        other._$data.containsKey('alternativeSpoiler')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$middle = middle;
    final l$last = last;
    final l$native = native;
    final l$alternative = alternative;
    final l$alternativeSpoiler = alternativeSpoiler;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('middle') ? l$middle : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('native') ? l$native : const {},
      _$data.containsKey('alternative')
          ? l$alternative == null
              ? null
              : Object.hashAll(l$alternative.map((v) => v))
          : const {},
      _$data.containsKey('alternativeSpoiler')
          ? l$alternativeSpoiler == null
              ? null
              : Object.hashAll(l$alternativeSpoiler.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWithInputCharacterNameInput<TRes> {
  factory CopyWithInputCharacterNameInput(
    InputCharacterNameInput instance,
    TRes Function(InputCharacterNameInput) then,
  ) = _CopyWithImplInputCharacterNameInput;

  factory CopyWithInputCharacterNameInput.stub(TRes res) =
      _CopyWithStubImplInputCharacterNameInput;

  TRes call({
    String? first,
    String? middle,
    String? last,
    String? native,
    List<String?>? alternative,
    List<String?>? alternativeSpoiler,
  });
}

class _CopyWithImplInputCharacterNameInput<TRes>
    implements CopyWithInputCharacterNameInput<TRes> {
  _CopyWithImplInputCharacterNameInput(
    this._instance,
    this._then,
  );

  final InputCharacterNameInput _instance;

  final TRes Function(InputCharacterNameInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? middle = _undefined,
    Object? last = _undefined,
    Object? native = _undefined,
    Object? alternative = _undefined,
    Object? alternativeSpoiler = _undefined,
  }) =>
      _then(InputCharacterNameInput._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as String?),
        if (middle != _undefined) 'middle': (middle as String?),
        if (last != _undefined) 'last': (last as String?),
        if (native != _undefined) 'native': (native as String?),
        if (alternative != _undefined)
          'alternative': (alternative as List<String?>?),
        if (alternativeSpoiler != _undefined)
          'alternativeSpoiler': (alternativeSpoiler as List<String?>?),
      }));
}

class _CopyWithStubImplInputCharacterNameInput<TRes>
    implements CopyWithInputCharacterNameInput<TRes> {
  _CopyWithStubImplInputCharacterNameInput(this._res);

  TRes _res;

  call({
    String? first,
    String? middle,
    String? last,
    String? native,
    List<String?>? alternative,
    List<String?>? alternativeSpoiler,
  }) =>
      _res;
}

class InputFuzzyDateInput {
  factory InputFuzzyDateInput({
    int? year,
    int? month,
    int? day,
  }) =>
      InputFuzzyDateInput._({
        if (year != null) r'year': year,
        if (month != null) r'month': month,
        if (day != null) r'day': day,
      });

  InputFuzzyDateInput._(this._$data);

  factory InputFuzzyDateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('year')) {
      final l$year = data['year'];
      result$data['year'] = (l$year as int?);
    }
    if (data.containsKey('month')) {
      final l$month = data['month'];
      result$data['month'] = (l$month as int?);
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = (l$day as int?);
    }
    return InputFuzzyDateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get year => (_$data['year'] as int?);

  int? get month => (_$data['month'] as int?);

  int? get day => (_$data['day'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('year')) {
      final l$year = year;
      result$data['year'] = l$year;
    }
    if (_$data.containsKey('month')) {
      final l$month = month;
      result$data['month'] = l$month;
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day;
    }
    return result$data;
  }

  CopyWithInputFuzzyDateInput<InputFuzzyDateInput> get copyWith =>
      CopyWithInputFuzzyDateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputFuzzyDateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (_$data.containsKey('year') != other._$data.containsKey('year')) {
      return false;
    }
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (_$data.containsKey('month') != other._$data.containsKey('month')) {
      return false;
    }
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    return Object.hashAll([
      _$data.containsKey('year') ? l$year : const {},
      _$data.containsKey('month') ? l$month : const {},
      _$data.containsKey('day') ? l$day : const {},
    ]);
  }
}

abstract class CopyWithInputFuzzyDateInput<TRes> {
  factory CopyWithInputFuzzyDateInput(
    InputFuzzyDateInput instance,
    TRes Function(InputFuzzyDateInput) then,
  ) = _CopyWithImplInputFuzzyDateInput;

  factory CopyWithInputFuzzyDateInput.stub(TRes res) =
      _CopyWithStubImplInputFuzzyDateInput;

  TRes call({
    int? year,
    int? month,
    int? day,
  });
}

class _CopyWithImplInputFuzzyDateInput<TRes>
    implements CopyWithInputFuzzyDateInput<TRes> {
  _CopyWithImplInputFuzzyDateInput(
    this._instance,
    this._then,
  );

  final InputFuzzyDateInput _instance;

  final TRes Function(InputFuzzyDateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
  }) =>
      _then(InputFuzzyDateInput._({
        ..._instance._$data,
        if (year != _undefined) 'year': (year as int?),
        if (month != _undefined) 'month': (month as int?),
        if (day != _undefined) 'day': (day as int?),
      }));
}

class _CopyWithStubImplInputFuzzyDateInput<TRes>
    implements CopyWithInputFuzzyDateInput<TRes> {
  _CopyWithStubImplInputFuzzyDateInput(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
  }) =>
      _res;
}

class InputListActivityOptionInput {
  factory InputListActivityOptionInput({
    bool? disabled,
    EnumMediaListStatus? type,
  }) =>
      InputListActivityOptionInput._({
        if (disabled != null) r'disabled': disabled,
        if (type != null) r'type': type,
      });

  InputListActivityOptionInput._(this._$data);

  factory InputListActivityOptionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('disabled')) {
      final l$disabled = data['disabled'];
      result$data['disabled'] = (l$disabled as bool?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJsonEnumMediaListStatus((l$type as String));
    }
    return InputListActivityOptionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get disabled => (_$data['disabled'] as bool?);

  EnumMediaListStatus? get type => (_$data['type'] as EnumMediaListStatus?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('disabled')) {
      final l$disabled = disabled;
      result$data['disabled'] = l$disabled;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJsonEnumMediaListStatus(l$type);
    }
    return result$data;
  }

  CopyWithInputListActivityOptionInput<InputListActivityOptionInput>
      get copyWith => CopyWithInputListActivityOptionInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputListActivityOptionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$disabled = disabled;
    final lOther$disabled = other.disabled;
    if (_$data.containsKey('disabled') !=
        other._$data.containsKey('disabled')) {
      return false;
    }
    if (l$disabled != lOther$disabled) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$disabled = disabled;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('disabled') ? l$disabled : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWithInputListActivityOptionInput<TRes> {
  factory CopyWithInputListActivityOptionInput(
    InputListActivityOptionInput instance,
    TRes Function(InputListActivityOptionInput) then,
  ) = _CopyWithImplInputListActivityOptionInput;

  factory CopyWithInputListActivityOptionInput.stub(TRes res) =
      _CopyWithStubImplInputListActivityOptionInput;

  TRes call({
    bool? disabled,
    EnumMediaListStatus? type,
  });
}

class _CopyWithImplInputListActivityOptionInput<TRes>
    implements CopyWithInputListActivityOptionInput<TRes> {
  _CopyWithImplInputListActivityOptionInput(
    this._instance,
    this._then,
  );

  final InputListActivityOptionInput _instance;

  final TRes Function(InputListActivityOptionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? disabled = _undefined,
    Object? type = _undefined,
  }) =>
      _then(InputListActivityOptionInput._({
        ..._instance._$data,
        if (disabled != _undefined) 'disabled': (disabled as bool?),
        if (type != _undefined) 'type': (type as EnumMediaListStatus?),
      }));
}

class _CopyWithStubImplInputListActivityOptionInput<TRes>
    implements CopyWithInputListActivityOptionInput<TRes> {
  _CopyWithStubImplInputListActivityOptionInput(this._res);

  TRes _res;

  call({
    bool? disabled,
    EnumMediaListStatus? type,
  }) =>
      _res;
}

class InputMediaExternalLinkInput {
  factory InputMediaExternalLinkInput({
    required int id,
    required String url,
    required String site,
  }) =>
      InputMediaExternalLinkInput._({
        r'id': id,
        r'url': url,
        r'site': site,
      });

  InputMediaExternalLinkInput._(this._$data);

  factory InputMediaExternalLinkInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$url = data['url'];
    result$data['url'] = (l$url as String);
    final l$site = data['site'];
    result$data['site'] = (l$site as String);
    return InputMediaExternalLinkInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get url => (_$data['url'] as String);

  String get site => (_$data['site'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$url = url;
    result$data['url'] = l$url;
    final l$site = site;
    result$data['site'] = l$site;
    return result$data;
  }

  CopyWithInputMediaExternalLinkInput<InputMediaExternalLinkInput>
      get copyWith => CopyWithInputMediaExternalLinkInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputMediaExternalLinkInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$url = url;
    final l$site = site;
    return Object.hashAll([
      l$id,
      l$url,
      l$site,
    ]);
  }
}

abstract class CopyWithInputMediaExternalLinkInput<TRes> {
  factory CopyWithInputMediaExternalLinkInput(
    InputMediaExternalLinkInput instance,
    TRes Function(InputMediaExternalLinkInput) then,
  ) = _CopyWithImplInputMediaExternalLinkInput;

  factory CopyWithInputMediaExternalLinkInput.stub(TRes res) =
      _CopyWithStubImplInputMediaExternalLinkInput;

  TRes call({
    int? id,
    String? url,
    String? site,
  });
}

class _CopyWithImplInputMediaExternalLinkInput<TRes>
    implements CopyWithInputMediaExternalLinkInput<TRes> {
  _CopyWithImplInputMediaExternalLinkInput(
    this._instance,
    this._then,
  );

  final InputMediaExternalLinkInput _instance;

  final TRes Function(InputMediaExternalLinkInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? url = _undefined,
    Object? site = _undefined,
  }) =>
      _then(InputMediaExternalLinkInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (url != _undefined && url != null) 'url': (url as String),
        if (site != _undefined && site != null) 'site': (site as String),
      }));
}

class _CopyWithStubImplInputMediaExternalLinkInput<TRes>
    implements CopyWithInputMediaExternalLinkInput<TRes> {
  _CopyWithStubImplInputMediaExternalLinkInput(this._res);

  TRes _res;

  call({
    int? id,
    String? url,
    String? site,
  }) =>
      _res;
}

class InputMediaListOptionsInput {
  factory InputMediaListOptionsInput({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? theme,
  }) =>
      InputMediaListOptionsInput._({
        if (sectionOrder != null) r'sectionOrder': sectionOrder,
        if (splitCompletedSectionByFormat != null)
          r'splitCompletedSectionByFormat': splitCompletedSectionByFormat,
        if (customLists != null) r'customLists': customLists,
        if (advancedScoring != null) r'advancedScoring': advancedScoring,
        if (advancedScoringEnabled != null)
          r'advancedScoringEnabled': advancedScoringEnabled,
        if (theme != null) r'theme': theme,
      });

  InputMediaListOptionsInput._(this._$data);

  factory InputMediaListOptionsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('sectionOrder')) {
      final l$sectionOrder = data['sectionOrder'];
      result$data['sectionOrder'] = (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('splitCompletedSectionByFormat')) {
      final l$splitCompletedSectionByFormat =
          data['splitCompletedSectionByFormat'];
      result$data['splitCompletedSectionByFormat'] =
          (l$splitCompletedSectionByFormat as bool?);
    }
    if (data.containsKey('customLists')) {
      final l$customLists = data['customLists'];
      result$data['customLists'] = (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('advancedScoring')) {
      final l$advancedScoring = data['advancedScoring'];
      result$data['advancedScoring'] = (l$advancedScoring as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('advancedScoringEnabled')) {
      final l$advancedScoringEnabled = data['advancedScoringEnabled'];
      result$data['advancedScoringEnabled'] =
          (l$advancedScoringEnabled as bool?);
    }
    if (data.containsKey('theme')) {
      final l$theme = data['theme'];
      result$data['theme'] = (l$theme as String?);
    }
    return InputMediaListOptionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get sectionOrder => (_$data['sectionOrder'] as List<String?>?);

  bool? get splitCompletedSectionByFormat =>
      (_$data['splitCompletedSectionByFormat'] as bool?);

  List<String?>? get customLists => (_$data['customLists'] as List<String?>?);

  List<String?>? get advancedScoring =>
      (_$data['advancedScoring'] as List<String?>?);

  bool? get advancedScoringEnabled =>
      (_$data['advancedScoringEnabled'] as bool?);

  String? get theme => (_$data['theme'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('sectionOrder')) {
      final l$sectionOrder = sectionOrder;
      result$data['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    }
    if (_$data.containsKey('splitCompletedSectionByFormat')) {
      final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
      result$data['splitCompletedSectionByFormat'] =
          l$splitCompletedSectionByFormat;
    }
    if (_$data.containsKey('customLists')) {
      final l$customLists = customLists;
      result$data['customLists'] = l$customLists?.map((e) => e).toList();
    }
    if (_$data.containsKey('advancedScoring')) {
      final l$advancedScoring = advancedScoring;
      result$data['advancedScoring'] =
          l$advancedScoring?.map((e) => e).toList();
    }
    if (_$data.containsKey('advancedScoringEnabled')) {
      final l$advancedScoringEnabled = advancedScoringEnabled;
      result$data['advancedScoringEnabled'] = l$advancedScoringEnabled;
    }
    if (_$data.containsKey('theme')) {
      final l$theme = theme;
      result$data['theme'] = l$theme;
    }
    return result$data;
  }

  CopyWithInputMediaListOptionsInput<InputMediaListOptionsInput> get copyWith =>
      CopyWithInputMediaListOptionsInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputMediaListOptionsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (_$data.containsKey('sectionOrder') !=
        other._$data.containsKey('sectionOrder')) {
      return false;
    }
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
      return false;
    }
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final lOther$splitCompletedSectionByFormat =
        other.splitCompletedSectionByFormat;
    if (_$data.containsKey('splitCompletedSectionByFormat') !=
        other._$data.containsKey('splitCompletedSectionByFormat')) {
      return false;
    }
    if (l$splitCompletedSectionByFormat !=
        lOther$splitCompletedSectionByFormat) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (_$data.containsKey('customLists') !=
        other._$data.containsKey('customLists')) {
      return false;
    }
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$advancedScoring = advancedScoring;
    final lOther$advancedScoring = other.advancedScoring;
    if (_$data.containsKey('advancedScoring') !=
        other._$data.containsKey('advancedScoring')) {
      return false;
    }
    if (l$advancedScoring != null && lOther$advancedScoring != null) {
      if (l$advancedScoring.length != lOther$advancedScoring.length) {
        return false;
      }
      for (int i = 0; i < l$advancedScoring.length; i++) {
        final l$advancedScoring$entry = l$advancedScoring[i];
        final lOther$advancedScoring$entry = lOther$advancedScoring[i];
        if (l$advancedScoring$entry != lOther$advancedScoring$entry) {
          return false;
        }
      }
    } else if (l$advancedScoring != lOther$advancedScoring) {
      return false;
    }
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final lOther$advancedScoringEnabled = other.advancedScoringEnabled;
    if (_$data.containsKey('advancedScoringEnabled') !=
        other._$data.containsKey('advancedScoringEnabled')) {
      return false;
    }
    if (l$advancedScoringEnabled != lOther$advancedScoringEnabled) {
      return false;
    }
    final l$theme = theme;
    final lOther$theme = other.theme;
    if (_$data.containsKey('theme') != other._$data.containsKey('theme')) {
      return false;
    }
    if (l$theme != lOther$theme) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sectionOrder = sectionOrder;
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final l$customLists = customLists;
    final l$advancedScoring = advancedScoring;
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final l$theme = theme;
    return Object.hashAll([
      _$data.containsKey('sectionOrder')
          ? l$sectionOrder == null
              ? null
              : Object.hashAll(l$sectionOrder.map((v) => v))
          : const {},
      _$data.containsKey('splitCompletedSectionByFormat')
          ? l$splitCompletedSectionByFormat
          : const {},
      _$data.containsKey('customLists')
          ? l$customLists == null
              ? null
              : Object.hashAll(l$customLists.map((v) => v))
          : const {},
      _$data.containsKey('advancedScoring')
          ? l$advancedScoring == null
              ? null
              : Object.hashAll(l$advancedScoring.map((v) => v))
          : const {},
      _$data.containsKey('advancedScoringEnabled')
          ? l$advancedScoringEnabled
          : const {},
      _$data.containsKey('theme') ? l$theme : const {},
    ]);
  }
}

abstract class CopyWithInputMediaListOptionsInput<TRes> {
  factory CopyWithInputMediaListOptionsInput(
    InputMediaListOptionsInput instance,
    TRes Function(InputMediaListOptionsInput) then,
  ) = _CopyWithImplInputMediaListOptionsInput;

  factory CopyWithInputMediaListOptionsInput.stub(TRes res) =
      _CopyWithStubImplInputMediaListOptionsInput;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? theme,
  });
}

class _CopyWithImplInputMediaListOptionsInput<TRes>
    implements CopyWithInputMediaListOptionsInput<TRes> {
  _CopyWithImplInputMediaListOptionsInput(
    this._instance,
    this._then,
  );

  final InputMediaListOptionsInput _instance;

  final TRes Function(InputMediaListOptionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? theme = _undefined,
  }) =>
      _then(InputMediaListOptionsInput._({
        ..._instance._$data,
        if (sectionOrder != _undefined)
          'sectionOrder': (sectionOrder as List<String?>?),
        if (splitCompletedSectionByFormat != _undefined)
          'splitCompletedSectionByFormat':
              (splitCompletedSectionByFormat as bool?),
        if (customLists != _undefined)
          'customLists': (customLists as List<String?>?),
        if (advancedScoring != _undefined)
          'advancedScoring': (advancedScoring as List<String?>?),
        if (advancedScoringEnabled != _undefined)
          'advancedScoringEnabled': (advancedScoringEnabled as bool?),
        if (theme != _undefined) 'theme': (theme as String?),
      }));
}

class _CopyWithStubImplInputMediaListOptionsInput<TRes>
    implements CopyWithInputMediaListOptionsInput<TRes> {
  _CopyWithStubImplInputMediaListOptionsInput(this._res);

  TRes _res;

  call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? theme,
  }) =>
      _res;
}

class InputMediaTitleInput {
  factory InputMediaTitleInput({
    String? romaji,
    String? english,
    String? native,
  }) =>
      InputMediaTitleInput._({
        if (romaji != null) r'romaji': romaji,
        if (english != null) r'english': english,
        if (native != null) r'native': native,
      });

  InputMediaTitleInput._(this._$data);

  factory InputMediaTitleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('romaji')) {
      final l$romaji = data['romaji'];
      result$data['romaji'] = (l$romaji as String?);
    }
    if (data.containsKey('english')) {
      final l$english = data['english'];
      result$data['english'] = (l$english as String?);
    }
    if (data.containsKey('native')) {
      final l$native = data['native'];
      result$data['native'] = (l$native as String?);
    }
    return InputMediaTitleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get romaji => (_$data['romaji'] as String?);

  String? get english => (_$data['english'] as String?);

  String? get native => (_$data['native'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('romaji')) {
      final l$romaji = romaji;
      result$data['romaji'] = l$romaji;
    }
    if (_$data.containsKey('english')) {
      final l$english = english;
      result$data['english'] = l$english;
    }
    if (_$data.containsKey('native')) {
      final l$native = native;
      result$data['native'] = l$native;
    }
    return result$data;
  }

  CopyWithInputMediaTitleInput<InputMediaTitleInput> get copyWith =>
      CopyWithInputMediaTitleInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputMediaTitleInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (_$data.containsKey('romaji') != other._$data.containsKey('romaji')) {
      return false;
    }
    if (l$romaji != lOther$romaji) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (_$data.containsKey('english') != other._$data.containsKey('english')) {
      return false;
    }
    if (l$english != lOther$english) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (_$data.containsKey('native') != other._$data.containsKey('native')) {
      return false;
    }
    if (l$native != lOther$native) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$english = english;
    final l$native = native;
    return Object.hashAll([
      _$data.containsKey('romaji') ? l$romaji : const {},
      _$data.containsKey('english') ? l$english : const {},
      _$data.containsKey('native') ? l$native : const {},
    ]);
  }
}

abstract class CopyWithInputMediaTitleInput<TRes> {
  factory CopyWithInputMediaTitleInput(
    InputMediaTitleInput instance,
    TRes Function(InputMediaTitleInput) then,
  ) = _CopyWithImplInputMediaTitleInput;

  factory CopyWithInputMediaTitleInput.stub(TRes res) =
      _CopyWithStubImplInputMediaTitleInput;

  TRes call({
    String? romaji,
    String? english,
    String? native,
  });
}

class _CopyWithImplInputMediaTitleInput<TRes>
    implements CopyWithInputMediaTitleInput<TRes> {
  _CopyWithImplInputMediaTitleInput(
    this._instance,
    this._then,
  );

  final InputMediaTitleInput _instance;

  final TRes Function(InputMediaTitleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
  }) =>
      _then(InputMediaTitleInput._({
        ..._instance._$data,
        if (romaji != _undefined) 'romaji': (romaji as String?),
        if (english != _undefined) 'english': (english as String?),
        if (native != _undefined) 'native': (native as String?),
      }));
}

class _CopyWithStubImplInputMediaTitleInput<TRes>
    implements CopyWithInputMediaTitleInput<TRes> {
  _CopyWithStubImplInputMediaTitleInput(this._res);

  TRes _res;

  call({
    String? romaji,
    String? english,
    String? native,
  }) =>
      _res;
}

class InputNotificationOptionInput {
  factory InputNotificationOptionInput({
    EnumNotificationType? type,
    bool? enabled,
  }) =>
      InputNotificationOptionInput._({
        if (type != null) r'type': type,
        if (enabled != null) r'enabled': enabled,
      });

  InputNotificationOptionInput._(this._$data);

  factory InputNotificationOptionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String));
    }
    if (data.containsKey('enabled')) {
      final l$enabled = data['enabled'];
      result$data['enabled'] = (l$enabled as bool?);
    }
    return InputNotificationOptionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  EnumNotificationType? get type => (_$data['type'] as EnumNotificationType?);

  bool? get enabled => (_$data['enabled'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJsonEnumNotificationType(l$type);
    }
    if (_$data.containsKey('enabled')) {
      final l$enabled = enabled;
      result$data['enabled'] = l$enabled;
    }
    return result$data;
  }

  CopyWithInputNotificationOptionInput<InputNotificationOptionInput>
      get copyWith => CopyWithInputNotificationOptionInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputNotificationOptionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (_$data.containsKey('enabled') != other._$data.containsKey('enabled')) {
      return false;
    }
    if (l$enabled != lOther$enabled) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$enabled = enabled;
    return Object.hashAll([
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('enabled') ? l$enabled : const {},
    ]);
  }
}

abstract class CopyWithInputNotificationOptionInput<TRes> {
  factory CopyWithInputNotificationOptionInput(
    InputNotificationOptionInput instance,
    TRes Function(InputNotificationOptionInput) then,
  ) = _CopyWithImplInputNotificationOptionInput;

  factory CopyWithInputNotificationOptionInput.stub(TRes res) =
      _CopyWithStubImplInputNotificationOptionInput;

  TRes call({
    EnumNotificationType? type,
    bool? enabled,
  });
}

class _CopyWithImplInputNotificationOptionInput<TRes>
    implements CopyWithInputNotificationOptionInput<TRes> {
  _CopyWithImplInputNotificationOptionInput(
    this._instance,
    this._then,
  );

  final InputNotificationOptionInput _instance;

  final TRes Function(InputNotificationOptionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? enabled = _undefined,
  }) =>
      _then(InputNotificationOptionInput._({
        ..._instance._$data,
        if (type != _undefined) 'type': (type as EnumNotificationType?),
        if (enabled != _undefined) 'enabled': (enabled as bool?),
      }));
}

class _CopyWithStubImplInputNotificationOptionInput<TRes>
    implements CopyWithInputNotificationOptionInput<TRes> {
  _CopyWithStubImplInputNotificationOptionInput(this._res);

  TRes _res;

  call({
    EnumNotificationType? type,
    bool? enabled,
  }) =>
      _res;
}

class InputStaffNameInput {
  factory InputStaffNameInput({
    String? first,
    String? middle,
    String? last,
    String? native,
    List<String?>? alternative,
  }) =>
      InputStaffNameInput._({
        if (first != null) r'first': first,
        if (middle != null) r'middle': middle,
        if (last != null) r'last': last,
        if (native != null) r'native': native,
        if (alternative != null) r'alternative': alternative,
      });

  InputStaffNameInput._(this._$data);

  factory InputStaffNameInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as String?);
    }
    if (data.containsKey('middle')) {
      final l$middle = data['middle'];
      result$data['middle'] = (l$middle as String?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as String?);
    }
    if (data.containsKey('native')) {
      final l$native = data['native'];
      result$data['native'] = (l$native as String?);
    }
    if (data.containsKey('alternative')) {
      final l$alternative = data['alternative'];
      result$data['alternative'] = (l$alternative as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    return InputStaffNameInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get first => (_$data['first'] as String?);

  String? get middle => (_$data['middle'] as String?);

  String? get last => (_$data['last'] as String?);

  String? get native => (_$data['native'] as String?);

  List<String?>? get alternative => (_$data['alternative'] as List<String?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('middle')) {
      final l$middle = middle;
      result$data['middle'] = l$middle;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('native')) {
      final l$native = native;
      result$data['native'] = l$native;
    }
    if (_$data.containsKey('alternative')) {
      final l$alternative = alternative;
      result$data['alternative'] = l$alternative?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWithInputStaffNameInput<InputStaffNameInput> get copyWith =>
      CopyWithInputStaffNameInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! InputStaffNameInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$middle = middle;
    final lOther$middle = other.middle;
    if (_$data.containsKey('middle') != other._$data.containsKey('middle')) {
      return false;
    }
    if (l$middle != lOther$middle) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (_$data.containsKey('native') != other._$data.containsKey('native')) {
      return false;
    }
    if (l$native != lOther$native) {
      return false;
    }
    final l$alternative = alternative;
    final lOther$alternative = other.alternative;
    if (_$data.containsKey('alternative') !=
        other._$data.containsKey('alternative')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$middle = middle;
    final l$last = last;
    final l$native = native;
    final l$alternative = alternative;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('middle') ? l$middle : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('native') ? l$native : const {},
      _$data.containsKey('alternative')
          ? l$alternative == null
              ? null
              : Object.hashAll(l$alternative.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWithInputStaffNameInput<TRes> {
  factory CopyWithInputStaffNameInput(
    InputStaffNameInput instance,
    TRes Function(InputStaffNameInput) then,
  ) = _CopyWithImplInputStaffNameInput;

  factory CopyWithInputStaffNameInput.stub(TRes res) =
      _CopyWithStubImplInputStaffNameInput;

  TRes call({
    String? first,
    String? middle,
    String? last,
    String? native,
    List<String?>? alternative,
  });
}

class _CopyWithImplInputStaffNameInput<TRes>
    implements CopyWithInputStaffNameInput<TRes> {
  _CopyWithImplInputStaffNameInput(
    this._instance,
    this._then,
  );

  final InputStaffNameInput _instance;

  final TRes Function(InputStaffNameInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? middle = _undefined,
    Object? last = _undefined,
    Object? native = _undefined,
    Object? alternative = _undefined,
  }) =>
      _then(InputStaffNameInput._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as String?),
        if (middle != _undefined) 'middle': (middle as String?),
        if (last != _undefined) 'last': (last as String?),
        if (native != _undefined) 'native': (native as String?),
        if (alternative != _undefined)
          'alternative': (alternative as List<String?>?),
      }));
}

class _CopyWithStubImplInputStaffNameInput<TRes>
    implements CopyWithInputStaffNameInput<TRes> {
  _CopyWithStubImplInputStaffNameInput(this._res);

  TRes _res;

  call({
    String? first,
    String? middle,
    String? last,
    String? native,
    List<String?>? alternative,
  }) =>
      _res;
}

enum EnumActivitySort {
  ID,
  ID_DESC,
  PINNED,
  $unknown;

  factory EnumActivitySort.fromJson(String value) =>
      fromJsonEnumActivitySort(value);

  String toJson() => toJsonEnumActivitySort(this);
}

String toJsonEnumActivitySort(EnumActivitySort e) {
  switch (e) {
    case EnumActivitySort.ID:
      return r'ID';
    case EnumActivitySort.ID_DESC:
      return r'ID_DESC';
    case EnumActivitySort.PINNED:
      return r'PINNED';
    case EnumActivitySort.$unknown:
      return r'$unknown';
  }
}

EnumActivitySort fromJsonEnumActivitySort(String value) {
  switch (value) {
    case r'ID':
      return EnumActivitySort.ID;
    case r'ID_DESC':
      return EnumActivitySort.ID_DESC;
    case r'PINNED':
      return EnumActivitySort.PINNED;
    default:
      return EnumActivitySort.$unknown;
  }
}

enum EnumActivityType {
  TEXT,
  ANIME_LIST,
  MANGA_LIST,
  MESSAGE,
  MEDIA_LIST,
  $unknown;

  factory EnumActivityType.fromJson(String value) =>
      fromJsonEnumActivityType(value);

  String toJson() => toJsonEnumActivityType(this);
}

String toJsonEnumActivityType(EnumActivityType e) {
  switch (e) {
    case EnumActivityType.TEXT:
      return r'TEXT';
    case EnumActivityType.ANIME_LIST:
      return r'ANIME_LIST';
    case EnumActivityType.MANGA_LIST:
      return r'MANGA_LIST';
    case EnumActivityType.MESSAGE:
      return r'MESSAGE';
    case EnumActivityType.MEDIA_LIST:
      return r'MEDIA_LIST';
    case EnumActivityType.$unknown:
      return r'$unknown';
  }
}

EnumActivityType fromJsonEnumActivityType(String value) {
  switch (value) {
    case r'TEXT':
      return EnumActivityType.TEXT;
    case r'ANIME_LIST':
      return EnumActivityType.ANIME_LIST;
    case r'MANGA_LIST':
      return EnumActivityType.MANGA_LIST;
    case r'MESSAGE':
      return EnumActivityType.MESSAGE;
    case r'MEDIA_LIST':
      return EnumActivityType.MEDIA_LIST;
    default:
      return EnumActivityType.$unknown;
  }
}

enum EnumAiringSort {
  ID,
  ID_DESC,
  MEDIA_ID,
  MEDIA_ID_DESC,
  TIME,
  TIME_DESC,
  EPISODE,
  EPISODE_DESC,
  $unknown;

  factory EnumAiringSort.fromJson(String value) =>
      fromJsonEnumAiringSort(value);

  String toJson() => toJsonEnumAiringSort(this);
}

String toJsonEnumAiringSort(EnumAiringSort e) {
  switch (e) {
    case EnumAiringSort.ID:
      return r'ID';
    case EnumAiringSort.ID_DESC:
      return r'ID_DESC';
    case EnumAiringSort.MEDIA_ID:
      return r'MEDIA_ID';
    case EnumAiringSort.MEDIA_ID_DESC:
      return r'MEDIA_ID_DESC';
    case EnumAiringSort.TIME:
      return r'TIME';
    case EnumAiringSort.TIME_DESC:
      return r'TIME_DESC';
    case EnumAiringSort.EPISODE:
      return r'EPISODE';
    case EnumAiringSort.EPISODE_DESC:
      return r'EPISODE_DESC';
    case EnumAiringSort.$unknown:
      return r'$unknown';
  }
}

EnumAiringSort fromJsonEnumAiringSort(String value) {
  switch (value) {
    case r'ID':
      return EnumAiringSort.ID;
    case r'ID_DESC':
      return EnumAiringSort.ID_DESC;
    case r'MEDIA_ID':
      return EnumAiringSort.MEDIA_ID;
    case r'MEDIA_ID_DESC':
      return EnumAiringSort.MEDIA_ID_DESC;
    case r'TIME':
      return EnumAiringSort.TIME;
    case r'TIME_DESC':
      return EnumAiringSort.TIME_DESC;
    case r'EPISODE':
      return EnumAiringSort.EPISODE;
    case r'EPISODE_DESC':
      return EnumAiringSort.EPISODE_DESC;
    default:
      return EnumAiringSort.$unknown;
  }
}

enum EnumCharacterRole {
  MAIN,
  SUPPORTING,
  BACKGROUND,
  $unknown;

  factory EnumCharacterRole.fromJson(String value) =>
      fromJsonEnumCharacterRole(value);

  String toJson() => toJsonEnumCharacterRole(this);
}

String toJsonEnumCharacterRole(EnumCharacterRole e) {
  switch (e) {
    case EnumCharacterRole.MAIN:
      return r'MAIN';
    case EnumCharacterRole.SUPPORTING:
      return r'SUPPORTING';
    case EnumCharacterRole.BACKGROUND:
      return r'BACKGROUND';
    case EnumCharacterRole.$unknown:
      return r'$unknown';
  }
}

EnumCharacterRole fromJsonEnumCharacterRole(String value) {
  switch (value) {
    case r'MAIN':
      return EnumCharacterRole.MAIN;
    case r'SUPPORTING':
      return EnumCharacterRole.SUPPORTING;
    case r'BACKGROUND':
      return EnumCharacterRole.BACKGROUND;
    default:
      return EnumCharacterRole.$unknown;
  }
}

enum EnumCharacterSort {
  ID,
  ID_DESC,
  ROLE,
  ROLE_DESC,
  SEARCH_MATCH,
  FAVOURITES,
  FAVOURITES_DESC,
  RELEVANCE,
  $unknown;

  factory EnumCharacterSort.fromJson(String value) =>
      fromJsonEnumCharacterSort(value);

  String toJson() => toJsonEnumCharacterSort(this);
}

String toJsonEnumCharacterSort(EnumCharacterSort e) {
  switch (e) {
    case EnumCharacterSort.ID:
      return r'ID';
    case EnumCharacterSort.ID_DESC:
      return r'ID_DESC';
    case EnumCharacterSort.ROLE:
      return r'ROLE';
    case EnumCharacterSort.ROLE_DESC:
      return r'ROLE_DESC';
    case EnumCharacterSort.SEARCH_MATCH:
      return r'SEARCH_MATCH';
    case EnumCharacterSort.FAVOURITES:
      return r'FAVOURITES';
    case EnumCharacterSort.FAVOURITES_DESC:
      return r'FAVOURITES_DESC';
    case EnumCharacterSort.RELEVANCE:
      return r'RELEVANCE';
    case EnumCharacterSort.$unknown:
      return r'$unknown';
  }
}

EnumCharacterSort fromJsonEnumCharacterSort(String value) {
  switch (value) {
    case r'ID':
      return EnumCharacterSort.ID;
    case r'ID_DESC':
      return EnumCharacterSort.ID_DESC;
    case r'ROLE':
      return EnumCharacterSort.ROLE;
    case r'ROLE_DESC':
      return EnumCharacterSort.ROLE_DESC;
    case r'SEARCH_MATCH':
      return EnumCharacterSort.SEARCH_MATCH;
    case r'FAVOURITES':
      return EnumCharacterSort.FAVOURITES;
    case r'FAVOURITES_DESC':
      return EnumCharacterSort.FAVOURITES_DESC;
    case r'RELEVANCE':
      return EnumCharacterSort.RELEVANCE;
    default:
      return EnumCharacterSort.$unknown;
  }
}

enum EnumExternalLinkMediaType {
  ANIME,
  MANGA,
  STAFF,
  $unknown;

  factory EnumExternalLinkMediaType.fromJson(String value) =>
      fromJsonEnumExternalLinkMediaType(value);

  String toJson() => toJsonEnumExternalLinkMediaType(this);
}

String toJsonEnumExternalLinkMediaType(EnumExternalLinkMediaType e) {
  switch (e) {
    case EnumExternalLinkMediaType.ANIME:
      return r'ANIME';
    case EnumExternalLinkMediaType.MANGA:
      return r'MANGA';
    case EnumExternalLinkMediaType.STAFF:
      return r'STAFF';
    case EnumExternalLinkMediaType.$unknown:
      return r'$unknown';
  }
}

EnumExternalLinkMediaType fromJsonEnumExternalLinkMediaType(String value) {
  switch (value) {
    case r'ANIME':
      return EnumExternalLinkMediaType.ANIME;
    case r'MANGA':
      return EnumExternalLinkMediaType.MANGA;
    case r'STAFF':
      return EnumExternalLinkMediaType.STAFF;
    default:
      return EnumExternalLinkMediaType.$unknown;
  }
}

enum EnumExternalLinkType {
  INFO,
  STREAMING,
  SOCIAL,
  $unknown;

  factory EnumExternalLinkType.fromJson(String value) =>
      fromJsonEnumExternalLinkType(value);

  String toJson() => toJsonEnumExternalLinkType(this);
}

String toJsonEnumExternalLinkType(EnumExternalLinkType e) {
  switch (e) {
    case EnumExternalLinkType.INFO:
      return r'INFO';
    case EnumExternalLinkType.STREAMING:
      return r'STREAMING';
    case EnumExternalLinkType.SOCIAL:
      return r'SOCIAL';
    case EnumExternalLinkType.$unknown:
      return r'$unknown';
  }
}

EnumExternalLinkType fromJsonEnumExternalLinkType(String value) {
  switch (value) {
    case r'INFO':
      return EnumExternalLinkType.INFO;
    case r'STREAMING':
      return EnumExternalLinkType.STREAMING;
    case r'SOCIAL':
      return EnumExternalLinkType.SOCIAL;
    default:
      return EnumExternalLinkType.$unknown;
  }
}

enum EnumLikeableType {
  THREAD,
  THREAD_COMMENT,
  ACTIVITY,
  ACTIVITY_REPLY,
  $unknown;

  factory EnumLikeableType.fromJson(String value) =>
      fromJsonEnumLikeableType(value);

  String toJson() => toJsonEnumLikeableType(this);
}

String toJsonEnumLikeableType(EnumLikeableType e) {
  switch (e) {
    case EnumLikeableType.THREAD:
      return r'THREAD';
    case EnumLikeableType.THREAD_COMMENT:
      return r'THREAD_COMMENT';
    case EnumLikeableType.ACTIVITY:
      return r'ACTIVITY';
    case EnumLikeableType.ACTIVITY_REPLY:
      return r'ACTIVITY_REPLY';
    case EnumLikeableType.$unknown:
      return r'$unknown';
  }
}

EnumLikeableType fromJsonEnumLikeableType(String value) {
  switch (value) {
    case r'THREAD':
      return EnumLikeableType.THREAD;
    case r'THREAD_COMMENT':
      return EnumLikeableType.THREAD_COMMENT;
    case r'ACTIVITY':
      return EnumLikeableType.ACTIVITY;
    case r'ACTIVITY_REPLY':
      return EnumLikeableType.ACTIVITY_REPLY;
    default:
      return EnumLikeableType.$unknown;
  }
}

enum EnumMediaFormat {
  TV,
  TV_SHORT,
  MOVIE,
  SPECIAL,
  OVA,
  ONA,
  MUSIC,
  MANGA,
  NOVEL,
  ONE_SHOT,
  $unknown;

  factory EnumMediaFormat.fromJson(String value) =>
      fromJsonEnumMediaFormat(value);

  String toJson() => toJsonEnumMediaFormat(this);
}

String toJsonEnumMediaFormat(EnumMediaFormat e) {
  switch (e) {
    case EnumMediaFormat.TV:
      return r'TV';
    case EnumMediaFormat.TV_SHORT:
      return r'TV_SHORT';
    case EnumMediaFormat.MOVIE:
      return r'MOVIE';
    case EnumMediaFormat.SPECIAL:
      return r'SPECIAL';
    case EnumMediaFormat.OVA:
      return r'OVA';
    case EnumMediaFormat.ONA:
      return r'ONA';
    case EnumMediaFormat.MUSIC:
      return r'MUSIC';
    case EnumMediaFormat.MANGA:
      return r'MANGA';
    case EnumMediaFormat.NOVEL:
      return r'NOVEL';
    case EnumMediaFormat.ONE_SHOT:
      return r'ONE_SHOT';
    case EnumMediaFormat.$unknown:
      return r'$unknown';
  }
}

EnumMediaFormat fromJsonEnumMediaFormat(String value) {
  switch (value) {
    case r'TV':
      return EnumMediaFormat.TV;
    case r'TV_SHORT':
      return EnumMediaFormat.TV_SHORT;
    case r'MOVIE':
      return EnumMediaFormat.MOVIE;
    case r'SPECIAL':
      return EnumMediaFormat.SPECIAL;
    case r'OVA':
      return EnumMediaFormat.OVA;
    case r'ONA':
      return EnumMediaFormat.ONA;
    case r'MUSIC':
      return EnumMediaFormat.MUSIC;
    case r'MANGA':
      return EnumMediaFormat.MANGA;
    case r'NOVEL':
      return EnumMediaFormat.NOVEL;
    case r'ONE_SHOT':
      return EnumMediaFormat.ONE_SHOT;
    default:
      return EnumMediaFormat.$unknown;
  }
}

enum EnumMediaListSort {
  MEDIA_ID,
  MEDIA_ID_DESC,
  SCORE,
  SCORE_DESC,
  STATUS,
  STATUS_DESC,
  PROGRESS,
  PROGRESS_DESC,
  PROGRESS_VOLUMES,
  PROGRESS_VOLUMES_DESC,
  REPEAT,
  REPEAT_DESC,
  PRIORITY,
  PRIORITY_DESC,
  STARTED_ON,
  STARTED_ON_DESC,
  FINISHED_ON,
  FINISHED_ON_DESC,
  ADDED_TIME,
  ADDED_TIME_DESC,
  UPDATED_TIME,
  UPDATED_TIME_DESC,
  MEDIA_TITLE_ROMAJI,
  MEDIA_TITLE_ROMAJI_DESC,
  MEDIA_TITLE_ENGLISH,
  MEDIA_TITLE_ENGLISH_DESC,
  MEDIA_TITLE_NATIVE,
  MEDIA_TITLE_NATIVE_DESC,
  MEDIA_POPULARITY,
  MEDIA_POPULARITY_DESC,
  $unknown;

  factory EnumMediaListSort.fromJson(String value) =>
      fromJsonEnumMediaListSort(value);

  String toJson() => toJsonEnumMediaListSort(this);
}

String toJsonEnumMediaListSort(EnumMediaListSort e) {
  switch (e) {
    case EnumMediaListSort.MEDIA_ID:
      return r'MEDIA_ID';
    case EnumMediaListSort.MEDIA_ID_DESC:
      return r'MEDIA_ID_DESC';
    case EnumMediaListSort.SCORE:
      return r'SCORE';
    case EnumMediaListSort.SCORE_DESC:
      return r'SCORE_DESC';
    case EnumMediaListSort.STATUS:
      return r'STATUS';
    case EnumMediaListSort.STATUS_DESC:
      return r'STATUS_DESC';
    case EnumMediaListSort.PROGRESS:
      return r'PROGRESS';
    case EnumMediaListSort.PROGRESS_DESC:
      return r'PROGRESS_DESC';
    case EnumMediaListSort.PROGRESS_VOLUMES:
      return r'PROGRESS_VOLUMES';
    case EnumMediaListSort.PROGRESS_VOLUMES_DESC:
      return r'PROGRESS_VOLUMES_DESC';
    case EnumMediaListSort.REPEAT:
      return r'REPEAT';
    case EnumMediaListSort.REPEAT_DESC:
      return r'REPEAT_DESC';
    case EnumMediaListSort.PRIORITY:
      return r'PRIORITY';
    case EnumMediaListSort.PRIORITY_DESC:
      return r'PRIORITY_DESC';
    case EnumMediaListSort.STARTED_ON:
      return r'STARTED_ON';
    case EnumMediaListSort.STARTED_ON_DESC:
      return r'STARTED_ON_DESC';
    case EnumMediaListSort.FINISHED_ON:
      return r'FINISHED_ON';
    case EnumMediaListSort.FINISHED_ON_DESC:
      return r'FINISHED_ON_DESC';
    case EnumMediaListSort.ADDED_TIME:
      return r'ADDED_TIME';
    case EnumMediaListSort.ADDED_TIME_DESC:
      return r'ADDED_TIME_DESC';
    case EnumMediaListSort.UPDATED_TIME:
      return r'UPDATED_TIME';
    case EnumMediaListSort.UPDATED_TIME_DESC:
      return r'UPDATED_TIME_DESC';
    case EnumMediaListSort.MEDIA_TITLE_ROMAJI:
      return r'MEDIA_TITLE_ROMAJI';
    case EnumMediaListSort.MEDIA_TITLE_ROMAJI_DESC:
      return r'MEDIA_TITLE_ROMAJI_DESC';
    case EnumMediaListSort.MEDIA_TITLE_ENGLISH:
      return r'MEDIA_TITLE_ENGLISH';
    case EnumMediaListSort.MEDIA_TITLE_ENGLISH_DESC:
      return r'MEDIA_TITLE_ENGLISH_DESC';
    case EnumMediaListSort.MEDIA_TITLE_NATIVE:
      return r'MEDIA_TITLE_NATIVE';
    case EnumMediaListSort.MEDIA_TITLE_NATIVE_DESC:
      return r'MEDIA_TITLE_NATIVE_DESC';
    case EnumMediaListSort.MEDIA_POPULARITY:
      return r'MEDIA_POPULARITY';
    case EnumMediaListSort.MEDIA_POPULARITY_DESC:
      return r'MEDIA_POPULARITY_DESC';
    case EnumMediaListSort.$unknown:
      return r'$unknown';
  }
}

EnumMediaListSort fromJsonEnumMediaListSort(String value) {
  switch (value) {
    case r'MEDIA_ID':
      return EnumMediaListSort.MEDIA_ID;
    case r'MEDIA_ID_DESC':
      return EnumMediaListSort.MEDIA_ID_DESC;
    case r'SCORE':
      return EnumMediaListSort.SCORE;
    case r'SCORE_DESC':
      return EnumMediaListSort.SCORE_DESC;
    case r'STATUS':
      return EnumMediaListSort.STATUS;
    case r'STATUS_DESC':
      return EnumMediaListSort.STATUS_DESC;
    case r'PROGRESS':
      return EnumMediaListSort.PROGRESS;
    case r'PROGRESS_DESC':
      return EnumMediaListSort.PROGRESS_DESC;
    case r'PROGRESS_VOLUMES':
      return EnumMediaListSort.PROGRESS_VOLUMES;
    case r'PROGRESS_VOLUMES_DESC':
      return EnumMediaListSort.PROGRESS_VOLUMES_DESC;
    case r'REPEAT':
      return EnumMediaListSort.REPEAT;
    case r'REPEAT_DESC':
      return EnumMediaListSort.REPEAT_DESC;
    case r'PRIORITY':
      return EnumMediaListSort.PRIORITY;
    case r'PRIORITY_DESC':
      return EnumMediaListSort.PRIORITY_DESC;
    case r'STARTED_ON':
      return EnumMediaListSort.STARTED_ON;
    case r'STARTED_ON_DESC':
      return EnumMediaListSort.STARTED_ON_DESC;
    case r'FINISHED_ON':
      return EnumMediaListSort.FINISHED_ON;
    case r'FINISHED_ON_DESC':
      return EnumMediaListSort.FINISHED_ON_DESC;
    case r'ADDED_TIME':
      return EnumMediaListSort.ADDED_TIME;
    case r'ADDED_TIME_DESC':
      return EnumMediaListSort.ADDED_TIME_DESC;
    case r'UPDATED_TIME':
      return EnumMediaListSort.UPDATED_TIME;
    case r'UPDATED_TIME_DESC':
      return EnumMediaListSort.UPDATED_TIME_DESC;
    case r'MEDIA_TITLE_ROMAJI':
      return EnumMediaListSort.MEDIA_TITLE_ROMAJI;
    case r'MEDIA_TITLE_ROMAJI_DESC':
      return EnumMediaListSort.MEDIA_TITLE_ROMAJI_DESC;
    case r'MEDIA_TITLE_ENGLISH':
      return EnumMediaListSort.MEDIA_TITLE_ENGLISH;
    case r'MEDIA_TITLE_ENGLISH_DESC':
      return EnumMediaListSort.MEDIA_TITLE_ENGLISH_DESC;
    case r'MEDIA_TITLE_NATIVE':
      return EnumMediaListSort.MEDIA_TITLE_NATIVE;
    case r'MEDIA_TITLE_NATIVE_DESC':
      return EnumMediaListSort.MEDIA_TITLE_NATIVE_DESC;
    case r'MEDIA_POPULARITY':
      return EnumMediaListSort.MEDIA_POPULARITY;
    case r'MEDIA_POPULARITY_DESC':
      return EnumMediaListSort.MEDIA_POPULARITY_DESC;
    default:
      return EnumMediaListSort.$unknown;
  }
}

enum EnumMediaListStatus {
  CURRENT,
  PLANNING,
  COMPLETED,
  DROPPED,
  PAUSED,
  REPEATING,
  $unknown;

  factory EnumMediaListStatus.fromJson(String value) =>
      fromJsonEnumMediaListStatus(value);

  String toJson() => toJsonEnumMediaListStatus(this);
}

String toJsonEnumMediaListStatus(EnumMediaListStatus e) {
  switch (e) {
    case EnumMediaListStatus.CURRENT:
      return r'CURRENT';
    case EnumMediaListStatus.PLANNING:
      return r'PLANNING';
    case EnumMediaListStatus.COMPLETED:
      return r'COMPLETED';
    case EnumMediaListStatus.DROPPED:
      return r'DROPPED';
    case EnumMediaListStatus.PAUSED:
      return r'PAUSED';
    case EnumMediaListStatus.REPEATING:
      return r'REPEATING';
    case EnumMediaListStatus.$unknown:
      return r'$unknown';
  }
}

EnumMediaListStatus fromJsonEnumMediaListStatus(String value) {
  switch (value) {
    case r'CURRENT':
      return EnumMediaListStatus.CURRENT;
    case r'PLANNING':
      return EnumMediaListStatus.PLANNING;
    case r'COMPLETED':
      return EnumMediaListStatus.COMPLETED;
    case r'DROPPED':
      return EnumMediaListStatus.DROPPED;
    case r'PAUSED':
      return EnumMediaListStatus.PAUSED;
    case r'REPEATING':
      return EnumMediaListStatus.REPEATING;
    default:
      return EnumMediaListStatus.$unknown;
  }
}

enum EnumMediaRankType {
  RATED,
  POPULAR,
  $unknown;

  factory EnumMediaRankType.fromJson(String value) =>
      fromJsonEnumMediaRankType(value);

  String toJson() => toJsonEnumMediaRankType(this);
}

String toJsonEnumMediaRankType(EnumMediaRankType e) {
  switch (e) {
    case EnumMediaRankType.RATED:
      return r'RATED';
    case EnumMediaRankType.POPULAR:
      return r'POPULAR';
    case EnumMediaRankType.$unknown:
      return r'$unknown';
  }
}

EnumMediaRankType fromJsonEnumMediaRankType(String value) {
  switch (value) {
    case r'RATED':
      return EnumMediaRankType.RATED;
    case r'POPULAR':
      return EnumMediaRankType.POPULAR;
    default:
      return EnumMediaRankType.$unknown;
  }
}

enum EnumMediaRelation {
  ADAPTATION,
  PREQUEL,
  SEQUEL,
  PARENT,
  SIDE_STORY,
  CHARACTER,
  SUMMARY,
  ALTERNATIVE,
  SPIN_OFF,
  OTHER,
  SOURCE,
  COMPILATION,
  CONTAINS,
  $unknown;

  factory EnumMediaRelation.fromJson(String value) =>
      fromJsonEnumMediaRelation(value);

  String toJson() => toJsonEnumMediaRelation(this);
}

String toJsonEnumMediaRelation(EnumMediaRelation e) {
  switch (e) {
    case EnumMediaRelation.ADAPTATION:
      return r'ADAPTATION';
    case EnumMediaRelation.PREQUEL:
      return r'PREQUEL';
    case EnumMediaRelation.SEQUEL:
      return r'SEQUEL';
    case EnumMediaRelation.PARENT:
      return r'PARENT';
    case EnumMediaRelation.SIDE_STORY:
      return r'SIDE_STORY';
    case EnumMediaRelation.CHARACTER:
      return r'CHARACTER';
    case EnumMediaRelation.SUMMARY:
      return r'SUMMARY';
    case EnumMediaRelation.ALTERNATIVE:
      return r'ALTERNATIVE';
    case EnumMediaRelation.SPIN_OFF:
      return r'SPIN_OFF';
    case EnumMediaRelation.OTHER:
      return r'OTHER';
    case EnumMediaRelation.SOURCE:
      return r'SOURCE';
    case EnumMediaRelation.COMPILATION:
      return r'COMPILATION';
    case EnumMediaRelation.CONTAINS:
      return r'CONTAINS';
    case EnumMediaRelation.$unknown:
      return r'$unknown';
  }
}

EnumMediaRelation fromJsonEnumMediaRelation(String value) {
  switch (value) {
    case r'ADAPTATION':
      return EnumMediaRelation.ADAPTATION;
    case r'PREQUEL':
      return EnumMediaRelation.PREQUEL;
    case r'SEQUEL':
      return EnumMediaRelation.SEQUEL;
    case r'PARENT':
      return EnumMediaRelation.PARENT;
    case r'SIDE_STORY':
      return EnumMediaRelation.SIDE_STORY;
    case r'CHARACTER':
      return EnumMediaRelation.CHARACTER;
    case r'SUMMARY':
      return EnumMediaRelation.SUMMARY;
    case r'ALTERNATIVE':
      return EnumMediaRelation.ALTERNATIVE;
    case r'SPIN_OFF':
      return EnumMediaRelation.SPIN_OFF;
    case r'OTHER':
      return EnumMediaRelation.OTHER;
    case r'SOURCE':
      return EnumMediaRelation.SOURCE;
    case r'COMPILATION':
      return EnumMediaRelation.COMPILATION;
    case r'CONTAINS':
      return EnumMediaRelation.CONTAINS;
    default:
      return EnumMediaRelation.$unknown;
  }
}

enum EnumMediaSeason {
  WINTER,
  SPRING,
  SUMMER,
  FALL,
  $unknown;

  factory EnumMediaSeason.fromJson(String value) =>
      fromJsonEnumMediaSeason(value);

  String toJson() => toJsonEnumMediaSeason(this);
}

String toJsonEnumMediaSeason(EnumMediaSeason e) {
  switch (e) {
    case EnumMediaSeason.WINTER:
      return r'WINTER';
    case EnumMediaSeason.SPRING:
      return r'SPRING';
    case EnumMediaSeason.SUMMER:
      return r'SUMMER';
    case EnumMediaSeason.FALL:
      return r'FALL';
    case EnumMediaSeason.$unknown:
      return r'$unknown';
  }
}

EnumMediaSeason fromJsonEnumMediaSeason(String value) {
  switch (value) {
    case r'WINTER':
      return EnumMediaSeason.WINTER;
    case r'SPRING':
      return EnumMediaSeason.SPRING;
    case r'SUMMER':
      return EnumMediaSeason.SUMMER;
    case r'FALL':
      return EnumMediaSeason.FALL;
    default:
      return EnumMediaSeason.$unknown;
  }
}

enum EnumMediaSort {
  ID,
  ID_DESC,
  TITLE_ROMAJI,
  TITLE_ROMAJI_DESC,
  TITLE_ENGLISH,
  TITLE_ENGLISH_DESC,
  TITLE_NATIVE,
  TITLE_NATIVE_DESC,
  TYPE,
  TYPE_DESC,
  FORMAT,
  FORMAT_DESC,
  START_DATE,
  START_DATE_DESC,
  END_DATE,
  END_DATE_DESC,
  SCORE,
  SCORE_DESC,
  POPULARITY,
  POPULARITY_DESC,
  TRENDING,
  TRENDING_DESC,
  EPISODES,
  EPISODES_DESC,
  DURATION,
  DURATION_DESC,
  STATUS,
  STATUS_DESC,
  CHAPTERS,
  CHAPTERS_DESC,
  VOLUMES,
  VOLUMES_DESC,
  UPDATED_AT,
  UPDATED_AT_DESC,
  SEARCH_MATCH,
  FAVOURITES,
  FAVOURITES_DESC,
  $unknown;

  factory EnumMediaSort.fromJson(String value) => fromJsonEnumMediaSort(value);

  String toJson() => toJsonEnumMediaSort(this);
}

String toJsonEnumMediaSort(EnumMediaSort e) {
  switch (e) {
    case EnumMediaSort.ID:
      return r'ID';
    case EnumMediaSort.ID_DESC:
      return r'ID_DESC';
    case EnumMediaSort.TITLE_ROMAJI:
      return r'TITLE_ROMAJI';
    case EnumMediaSort.TITLE_ROMAJI_DESC:
      return r'TITLE_ROMAJI_DESC';
    case EnumMediaSort.TITLE_ENGLISH:
      return r'TITLE_ENGLISH';
    case EnumMediaSort.TITLE_ENGLISH_DESC:
      return r'TITLE_ENGLISH_DESC';
    case EnumMediaSort.TITLE_NATIVE:
      return r'TITLE_NATIVE';
    case EnumMediaSort.TITLE_NATIVE_DESC:
      return r'TITLE_NATIVE_DESC';
    case EnumMediaSort.TYPE:
      return r'TYPE';
    case EnumMediaSort.TYPE_DESC:
      return r'TYPE_DESC';
    case EnumMediaSort.FORMAT:
      return r'FORMAT';
    case EnumMediaSort.FORMAT_DESC:
      return r'FORMAT_DESC';
    case EnumMediaSort.START_DATE:
      return r'START_DATE';
    case EnumMediaSort.START_DATE_DESC:
      return r'START_DATE_DESC';
    case EnumMediaSort.END_DATE:
      return r'END_DATE';
    case EnumMediaSort.END_DATE_DESC:
      return r'END_DATE_DESC';
    case EnumMediaSort.SCORE:
      return r'SCORE';
    case EnumMediaSort.SCORE_DESC:
      return r'SCORE_DESC';
    case EnumMediaSort.POPULARITY:
      return r'POPULARITY';
    case EnumMediaSort.POPULARITY_DESC:
      return r'POPULARITY_DESC';
    case EnumMediaSort.TRENDING:
      return r'TRENDING';
    case EnumMediaSort.TRENDING_DESC:
      return r'TRENDING_DESC';
    case EnumMediaSort.EPISODES:
      return r'EPISODES';
    case EnumMediaSort.EPISODES_DESC:
      return r'EPISODES_DESC';
    case EnumMediaSort.DURATION:
      return r'DURATION';
    case EnumMediaSort.DURATION_DESC:
      return r'DURATION_DESC';
    case EnumMediaSort.STATUS:
      return r'STATUS';
    case EnumMediaSort.STATUS_DESC:
      return r'STATUS_DESC';
    case EnumMediaSort.CHAPTERS:
      return r'CHAPTERS';
    case EnumMediaSort.CHAPTERS_DESC:
      return r'CHAPTERS_DESC';
    case EnumMediaSort.VOLUMES:
      return r'VOLUMES';
    case EnumMediaSort.VOLUMES_DESC:
      return r'VOLUMES_DESC';
    case EnumMediaSort.UPDATED_AT:
      return r'UPDATED_AT';
    case EnumMediaSort.UPDATED_AT_DESC:
      return r'UPDATED_AT_DESC';
    case EnumMediaSort.SEARCH_MATCH:
      return r'SEARCH_MATCH';
    case EnumMediaSort.FAVOURITES:
      return r'FAVOURITES';
    case EnumMediaSort.FAVOURITES_DESC:
      return r'FAVOURITES_DESC';
    case EnumMediaSort.$unknown:
      return r'$unknown';
  }
}

EnumMediaSort fromJsonEnumMediaSort(String value) {
  switch (value) {
    case r'ID':
      return EnumMediaSort.ID;
    case r'ID_DESC':
      return EnumMediaSort.ID_DESC;
    case r'TITLE_ROMAJI':
      return EnumMediaSort.TITLE_ROMAJI;
    case r'TITLE_ROMAJI_DESC':
      return EnumMediaSort.TITLE_ROMAJI_DESC;
    case r'TITLE_ENGLISH':
      return EnumMediaSort.TITLE_ENGLISH;
    case r'TITLE_ENGLISH_DESC':
      return EnumMediaSort.TITLE_ENGLISH_DESC;
    case r'TITLE_NATIVE':
      return EnumMediaSort.TITLE_NATIVE;
    case r'TITLE_NATIVE_DESC':
      return EnumMediaSort.TITLE_NATIVE_DESC;
    case r'TYPE':
      return EnumMediaSort.TYPE;
    case r'TYPE_DESC':
      return EnumMediaSort.TYPE_DESC;
    case r'FORMAT':
      return EnumMediaSort.FORMAT;
    case r'FORMAT_DESC':
      return EnumMediaSort.FORMAT_DESC;
    case r'START_DATE':
      return EnumMediaSort.START_DATE;
    case r'START_DATE_DESC':
      return EnumMediaSort.START_DATE_DESC;
    case r'END_DATE':
      return EnumMediaSort.END_DATE;
    case r'END_DATE_DESC':
      return EnumMediaSort.END_DATE_DESC;
    case r'SCORE':
      return EnumMediaSort.SCORE;
    case r'SCORE_DESC':
      return EnumMediaSort.SCORE_DESC;
    case r'POPULARITY':
      return EnumMediaSort.POPULARITY;
    case r'POPULARITY_DESC':
      return EnumMediaSort.POPULARITY_DESC;
    case r'TRENDING':
      return EnumMediaSort.TRENDING;
    case r'TRENDING_DESC':
      return EnumMediaSort.TRENDING_DESC;
    case r'EPISODES':
      return EnumMediaSort.EPISODES;
    case r'EPISODES_DESC':
      return EnumMediaSort.EPISODES_DESC;
    case r'DURATION':
      return EnumMediaSort.DURATION;
    case r'DURATION_DESC':
      return EnumMediaSort.DURATION_DESC;
    case r'STATUS':
      return EnumMediaSort.STATUS;
    case r'STATUS_DESC':
      return EnumMediaSort.STATUS_DESC;
    case r'CHAPTERS':
      return EnumMediaSort.CHAPTERS;
    case r'CHAPTERS_DESC':
      return EnumMediaSort.CHAPTERS_DESC;
    case r'VOLUMES':
      return EnumMediaSort.VOLUMES;
    case r'VOLUMES_DESC':
      return EnumMediaSort.VOLUMES_DESC;
    case r'UPDATED_AT':
      return EnumMediaSort.UPDATED_AT;
    case r'UPDATED_AT_DESC':
      return EnumMediaSort.UPDATED_AT_DESC;
    case r'SEARCH_MATCH':
      return EnumMediaSort.SEARCH_MATCH;
    case r'FAVOURITES':
      return EnumMediaSort.FAVOURITES;
    case r'FAVOURITES_DESC':
      return EnumMediaSort.FAVOURITES_DESC;
    default:
      return EnumMediaSort.$unknown;
  }
}

enum EnumMediaSource {
  ORIGINAL,
  MANGA,
  LIGHT_NOVEL,
  VISUAL_NOVEL,
  VIDEO_GAME,
  OTHER,
  NOVEL,
  DOUJINSHI,
  ANIME,
  WEB_NOVEL,
  LIVE_ACTION,
  GAME,
  COMIC,
  MULTIMEDIA_PROJECT,
  PICTURE_BOOK,
  $unknown;

  factory EnumMediaSource.fromJson(String value) =>
      fromJsonEnumMediaSource(value);

  String toJson() => toJsonEnumMediaSource(this);
}

String toJsonEnumMediaSource(EnumMediaSource e) {
  switch (e) {
    case EnumMediaSource.ORIGINAL:
      return r'ORIGINAL';
    case EnumMediaSource.MANGA:
      return r'MANGA';
    case EnumMediaSource.LIGHT_NOVEL:
      return r'LIGHT_NOVEL';
    case EnumMediaSource.VISUAL_NOVEL:
      return r'VISUAL_NOVEL';
    case EnumMediaSource.VIDEO_GAME:
      return r'VIDEO_GAME';
    case EnumMediaSource.OTHER:
      return r'OTHER';
    case EnumMediaSource.NOVEL:
      return r'NOVEL';
    case EnumMediaSource.DOUJINSHI:
      return r'DOUJINSHI';
    case EnumMediaSource.ANIME:
      return r'ANIME';
    case EnumMediaSource.WEB_NOVEL:
      return r'WEB_NOVEL';
    case EnumMediaSource.LIVE_ACTION:
      return r'LIVE_ACTION';
    case EnumMediaSource.GAME:
      return r'GAME';
    case EnumMediaSource.COMIC:
      return r'COMIC';
    case EnumMediaSource.MULTIMEDIA_PROJECT:
      return r'MULTIMEDIA_PROJECT';
    case EnumMediaSource.PICTURE_BOOK:
      return r'PICTURE_BOOK';
    case EnumMediaSource.$unknown:
      return r'$unknown';
  }
}

EnumMediaSource fromJsonEnumMediaSource(String value) {
  switch (value) {
    case r'ORIGINAL':
      return EnumMediaSource.ORIGINAL;
    case r'MANGA':
      return EnumMediaSource.MANGA;
    case r'LIGHT_NOVEL':
      return EnumMediaSource.LIGHT_NOVEL;
    case r'VISUAL_NOVEL':
      return EnumMediaSource.VISUAL_NOVEL;
    case r'VIDEO_GAME':
      return EnumMediaSource.VIDEO_GAME;
    case r'OTHER':
      return EnumMediaSource.OTHER;
    case r'NOVEL':
      return EnumMediaSource.NOVEL;
    case r'DOUJINSHI':
      return EnumMediaSource.DOUJINSHI;
    case r'ANIME':
      return EnumMediaSource.ANIME;
    case r'WEB_NOVEL':
      return EnumMediaSource.WEB_NOVEL;
    case r'LIVE_ACTION':
      return EnumMediaSource.LIVE_ACTION;
    case r'GAME':
      return EnumMediaSource.GAME;
    case r'COMIC':
      return EnumMediaSource.COMIC;
    case r'MULTIMEDIA_PROJECT':
      return EnumMediaSource.MULTIMEDIA_PROJECT;
    case r'PICTURE_BOOK':
      return EnumMediaSource.PICTURE_BOOK;
    default:
      return EnumMediaSource.$unknown;
  }
}

enum EnumMediaStatus {
  FINISHED,
  RELEASING,
  NOT_YET_RELEASED,
  CANCELLED,
  HIATUS,
  $unknown;

  factory EnumMediaStatus.fromJson(String value) =>
      fromJsonEnumMediaStatus(value);

  String toJson() => toJsonEnumMediaStatus(this);
}

String toJsonEnumMediaStatus(EnumMediaStatus e) {
  switch (e) {
    case EnumMediaStatus.FINISHED:
      return r'FINISHED';
    case EnumMediaStatus.RELEASING:
      return r'RELEASING';
    case EnumMediaStatus.NOT_YET_RELEASED:
      return r'NOT_YET_RELEASED';
    case EnumMediaStatus.CANCELLED:
      return r'CANCELLED';
    case EnumMediaStatus.HIATUS:
      return r'HIATUS';
    case EnumMediaStatus.$unknown:
      return r'$unknown';
  }
}

EnumMediaStatus fromJsonEnumMediaStatus(String value) {
  switch (value) {
    case r'FINISHED':
      return EnumMediaStatus.FINISHED;
    case r'RELEASING':
      return EnumMediaStatus.RELEASING;
    case r'NOT_YET_RELEASED':
      return EnumMediaStatus.NOT_YET_RELEASED;
    case r'CANCELLED':
      return EnumMediaStatus.CANCELLED;
    case r'HIATUS':
      return EnumMediaStatus.HIATUS;
    default:
      return EnumMediaStatus.$unknown;
  }
}

enum EnumMediaTrendSort {
  ID,
  ID_DESC,
  MEDIA_ID,
  MEDIA_ID_DESC,
  DATE,
  DATE_DESC,
  SCORE,
  SCORE_DESC,
  POPULARITY,
  POPULARITY_DESC,
  TRENDING,
  TRENDING_DESC,
  EPISODE,
  EPISODE_DESC,
  $unknown;

  factory EnumMediaTrendSort.fromJson(String value) =>
      fromJsonEnumMediaTrendSort(value);

  String toJson() => toJsonEnumMediaTrendSort(this);
}

String toJsonEnumMediaTrendSort(EnumMediaTrendSort e) {
  switch (e) {
    case EnumMediaTrendSort.ID:
      return r'ID';
    case EnumMediaTrendSort.ID_DESC:
      return r'ID_DESC';
    case EnumMediaTrendSort.MEDIA_ID:
      return r'MEDIA_ID';
    case EnumMediaTrendSort.MEDIA_ID_DESC:
      return r'MEDIA_ID_DESC';
    case EnumMediaTrendSort.DATE:
      return r'DATE';
    case EnumMediaTrendSort.DATE_DESC:
      return r'DATE_DESC';
    case EnumMediaTrendSort.SCORE:
      return r'SCORE';
    case EnumMediaTrendSort.SCORE_DESC:
      return r'SCORE_DESC';
    case EnumMediaTrendSort.POPULARITY:
      return r'POPULARITY';
    case EnumMediaTrendSort.POPULARITY_DESC:
      return r'POPULARITY_DESC';
    case EnumMediaTrendSort.TRENDING:
      return r'TRENDING';
    case EnumMediaTrendSort.TRENDING_DESC:
      return r'TRENDING_DESC';
    case EnumMediaTrendSort.EPISODE:
      return r'EPISODE';
    case EnumMediaTrendSort.EPISODE_DESC:
      return r'EPISODE_DESC';
    case EnumMediaTrendSort.$unknown:
      return r'$unknown';
  }
}

EnumMediaTrendSort fromJsonEnumMediaTrendSort(String value) {
  switch (value) {
    case r'ID':
      return EnumMediaTrendSort.ID;
    case r'ID_DESC':
      return EnumMediaTrendSort.ID_DESC;
    case r'MEDIA_ID':
      return EnumMediaTrendSort.MEDIA_ID;
    case r'MEDIA_ID_DESC':
      return EnumMediaTrendSort.MEDIA_ID_DESC;
    case r'DATE':
      return EnumMediaTrendSort.DATE;
    case r'DATE_DESC':
      return EnumMediaTrendSort.DATE_DESC;
    case r'SCORE':
      return EnumMediaTrendSort.SCORE;
    case r'SCORE_DESC':
      return EnumMediaTrendSort.SCORE_DESC;
    case r'POPULARITY':
      return EnumMediaTrendSort.POPULARITY;
    case r'POPULARITY_DESC':
      return EnumMediaTrendSort.POPULARITY_DESC;
    case r'TRENDING':
      return EnumMediaTrendSort.TRENDING;
    case r'TRENDING_DESC':
      return EnumMediaTrendSort.TRENDING_DESC;
    case r'EPISODE':
      return EnumMediaTrendSort.EPISODE;
    case r'EPISODE_DESC':
      return EnumMediaTrendSort.EPISODE_DESC;
    default:
      return EnumMediaTrendSort.$unknown;
  }
}

enum EnumMediaType {
  ANIME,
  MANGA,
  $unknown;

  factory EnumMediaType.fromJson(String value) => fromJsonEnumMediaType(value);

  String toJson() => toJsonEnumMediaType(this);
}

String toJsonEnumMediaType(EnumMediaType e) {
  switch (e) {
    case EnumMediaType.ANIME:
      return r'ANIME';
    case EnumMediaType.MANGA:
      return r'MANGA';
    case EnumMediaType.$unknown:
      return r'$unknown';
  }
}

EnumMediaType fromJsonEnumMediaType(String value) {
  switch (value) {
    case r'ANIME':
      return EnumMediaType.ANIME;
    case r'MANGA':
      return EnumMediaType.MANGA;
    default:
      return EnumMediaType.$unknown;
  }
}

enum EnumModActionType {
  NOTE,
  BAN,
  DELETE,
  EDIT,
  EXPIRE,
  REPORT,
  RESET,
  ANON,
  $unknown;

  factory EnumModActionType.fromJson(String value) =>
      fromJsonEnumModActionType(value);

  String toJson() => toJsonEnumModActionType(this);
}

String toJsonEnumModActionType(EnumModActionType e) {
  switch (e) {
    case EnumModActionType.NOTE:
      return r'NOTE';
    case EnumModActionType.BAN:
      return r'BAN';
    case EnumModActionType.DELETE:
      return r'DELETE';
    case EnumModActionType.EDIT:
      return r'EDIT';
    case EnumModActionType.EXPIRE:
      return r'EXPIRE';
    case EnumModActionType.REPORT:
      return r'REPORT';
    case EnumModActionType.RESET:
      return r'RESET';
    case EnumModActionType.ANON:
      return r'ANON';
    case EnumModActionType.$unknown:
      return r'$unknown';
  }
}

EnumModActionType fromJsonEnumModActionType(String value) {
  switch (value) {
    case r'NOTE':
      return EnumModActionType.NOTE;
    case r'BAN':
      return EnumModActionType.BAN;
    case r'DELETE':
      return EnumModActionType.DELETE;
    case r'EDIT':
      return EnumModActionType.EDIT;
    case r'EXPIRE':
      return EnumModActionType.EXPIRE;
    case r'REPORT':
      return EnumModActionType.REPORT;
    case r'RESET':
      return EnumModActionType.RESET;
    case r'ANON':
      return EnumModActionType.ANON;
    default:
      return EnumModActionType.$unknown;
  }
}

enum EnumModRole {
  ADMIN,
  LEAD_DEVELOPER,
  DEVELOPER,
  LEAD_COMMUNITY,
  COMMUNITY,
  DISCORD_COMMUNITY,
  LEAD_ANIME_DATA,
  ANIME_DATA,
  LEAD_MANGA_DATA,
  MANGA_DATA,
  LEAD_SOCIAL_MEDIA,
  SOCIAL_MEDIA,
  RETIRED,
  CHARACTER_DATA,
  STAFF_DATA,
  $unknown;

  factory EnumModRole.fromJson(String value) => fromJsonEnumModRole(value);

  String toJson() => toJsonEnumModRole(this);
}

String toJsonEnumModRole(EnumModRole e) {
  switch (e) {
    case EnumModRole.ADMIN:
      return r'ADMIN';
    case EnumModRole.LEAD_DEVELOPER:
      return r'LEAD_DEVELOPER';
    case EnumModRole.DEVELOPER:
      return r'DEVELOPER';
    case EnumModRole.LEAD_COMMUNITY:
      return r'LEAD_COMMUNITY';
    case EnumModRole.COMMUNITY:
      return r'COMMUNITY';
    case EnumModRole.DISCORD_COMMUNITY:
      return r'DISCORD_COMMUNITY';
    case EnumModRole.LEAD_ANIME_DATA:
      return r'LEAD_ANIME_DATA';
    case EnumModRole.ANIME_DATA:
      return r'ANIME_DATA';
    case EnumModRole.LEAD_MANGA_DATA:
      return r'LEAD_MANGA_DATA';
    case EnumModRole.MANGA_DATA:
      return r'MANGA_DATA';
    case EnumModRole.LEAD_SOCIAL_MEDIA:
      return r'LEAD_SOCIAL_MEDIA';
    case EnumModRole.SOCIAL_MEDIA:
      return r'SOCIAL_MEDIA';
    case EnumModRole.RETIRED:
      return r'RETIRED';
    case EnumModRole.CHARACTER_DATA:
      return r'CHARACTER_DATA';
    case EnumModRole.STAFF_DATA:
      return r'STAFF_DATA';
    case EnumModRole.$unknown:
      return r'$unknown';
  }
}

EnumModRole fromJsonEnumModRole(String value) {
  switch (value) {
    case r'ADMIN':
      return EnumModRole.ADMIN;
    case r'LEAD_DEVELOPER':
      return EnumModRole.LEAD_DEVELOPER;
    case r'DEVELOPER':
      return EnumModRole.DEVELOPER;
    case r'LEAD_COMMUNITY':
      return EnumModRole.LEAD_COMMUNITY;
    case r'COMMUNITY':
      return EnumModRole.COMMUNITY;
    case r'DISCORD_COMMUNITY':
      return EnumModRole.DISCORD_COMMUNITY;
    case r'LEAD_ANIME_DATA':
      return EnumModRole.LEAD_ANIME_DATA;
    case r'ANIME_DATA':
      return EnumModRole.ANIME_DATA;
    case r'LEAD_MANGA_DATA':
      return EnumModRole.LEAD_MANGA_DATA;
    case r'MANGA_DATA':
      return EnumModRole.MANGA_DATA;
    case r'LEAD_SOCIAL_MEDIA':
      return EnumModRole.LEAD_SOCIAL_MEDIA;
    case r'SOCIAL_MEDIA':
      return EnumModRole.SOCIAL_MEDIA;
    case r'RETIRED':
      return EnumModRole.RETIRED;
    case r'CHARACTER_DATA':
      return EnumModRole.CHARACTER_DATA;
    case r'STAFF_DATA':
      return EnumModRole.STAFF_DATA;
    default:
      return EnumModRole.$unknown;
  }
}

enum EnumNotificationType {
  ACTIVITY_MESSAGE,
  ACTIVITY_REPLY,
  FOLLOWING,
  ACTIVITY_MENTION,
  THREAD_COMMENT_MENTION,
  THREAD_SUBSCRIBED,
  THREAD_COMMENT_REPLY,
  AIRING,
  ACTIVITY_LIKE,
  ACTIVITY_REPLY_LIKE,
  THREAD_LIKE,
  THREAD_COMMENT_LIKE,
  ACTIVITY_REPLY_SUBSCRIBED,
  RELATED_MEDIA_ADDITION,
  MEDIA_DATA_CHANGE,
  MEDIA_MERGE,
  MEDIA_DELETION,
  $unknown;

  factory EnumNotificationType.fromJson(String value) =>
      fromJsonEnumNotificationType(value);

  String toJson() => toJsonEnumNotificationType(this);
}

String toJsonEnumNotificationType(EnumNotificationType e) {
  switch (e) {
    case EnumNotificationType.ACTIVITY_MESSAGE:
      return r'ACTIVITY_MESSAGE';
    case EnumNotificationType.ACTIVITY_REPLY:
      return r'ACTIVITY_REPLY';
    case EnumNotificationType.FOLLOWING:
      return r'FOLLOWING';
    case EnumNotificationType.ACTIVITY_MENTION:
      return r'ACTIVITY_MENTION';
    case EnumNotificationType.THREAD_COMMENT_MENTION:
      return r'THREAD_COMMENT_MENTION';
    case EnumNotificationType.THREAD_SUBSCRIBED:
      return r'THREAD_SUBSCRIBED';
    case EnumNotificationType.THREAD_COMMENT_REPLY:
      return r'THREAD_COMMENT_REPLY';
    case EnumNotificationType.AIRING:
      return r'AIRING';
    case EnumNotificationType.ACTIVITY_LIKE:
      return r'ACTIVITY_LIKE';
    case EnumNotificationType.ACTIVITY_REPLY_LIKE:
      return r'ACTIVITY_REPLY_LIKE';
    case EnumNotificationType.THREAD_LIKE:
      return r'THREAD_LIKE';
    case EnumNotificationType.THREAD_COMMENT_LIKE:
      return r'THREAD_COMMENT_LIKE';
    case EnumNotificationType.ACTIVITY_REPLY_SUBSCRIBED:
      return r'ACTIVITY_REPLY_SUBSCRIBED';
    case EnumNotificationType.RELATED_MEDIA_ADDITION:
      return r'RELATED_MEDIA_ADDITION';
    case EnumNotificationType.MEDIA_DATA_CHANGE:
      return r'MEDIA_DATA_CHANGE';
    case EnumNotificationType.MEDIA_MERGE:
      return r'MEDIA_MERGE';
    case EnumNotificationType.MEDIA_DELETION:
      return r'MEDIA_DELETION';
    case EnumNotificationType.$unknown:
      return r'$unknown';
  }
}

EnumNotificationType fromJsonEnumNotificationType(String value) {
  switch (value) {
    case r'ACTIVITY_MESSAGE':
      return EnumNotificationType.ACTIVITY_MESSAGE;
    case r'ACTIVITY_REPLY':
      return EnumNotificationType.ACTIVITY_REPLY;
    case r'FOLLOWING':
      return EnumNotificationType.FOLLOWING;
    case r'ACTIVITY_MENTION':
      return EnumNotificationType.ACTIVITY_MENTION;
    case r'THREAD_COMMENT_MENTION':
      return EnumNotificationType.THREAD_COMMENT_MENTION;
    case r'THREAD_SUBSCRIBED':
      return EnumNotificationType.THREAD_SUBSCRIBED;
    case r'THREAD_COMMENT_REPLY':
      return EnumNotificationType.THREAD_COMMENT_REPLY;
    case r'AIRING':
      return EnumNotificationType.AIRING;
    case r'ACTIVITY_LIKE':
      return EnumNotificationType.ACTIVITY_LIKE;
    case r'ACTIVITY_REPLY_LIKE':
      return EnumNotificationType.ACTIVITY_REPLY_LIKE;
    case r'THREAD_LIKE':
      return EnumNotificationType.THREAD_LIKE;
    case r'THREAD_COMMENT_LIKE':
      return EnumNotificationType.THREAD_COMMENT_LIKE;
    case r'ACTIVITY_REPLY_SUBSCRIBED':
      return EnumNotificationType.ACTIVITY_REPLY_SUBSCRIBED;
    case r'RELATED_MEDIA_ADDITION':
      return EnumNotificationType.RELATED_MEDIA_ADDITION;
    case r'MEDIA_DATA_CHANGE':
      return EnumNotificationType.MEDIA_DATA_CHANGE;
    case r'MEDIA_MERGE':
      return EnumNotificationType.MEDIA_MERGE;
    case r'MEDIA_DELETION':
      return EnumNotificationType.MEDIA_DELETION;
    default:
      return EnumNotificationType.$unknown;
  }
}

enum EnumRecommendationRating {
  NO_RATING,
  RATE_UP,
  RATE_DOWN,
  $unknown;

  factory EnumRecommendationRating.fromJson(String value) =>
      fromJsonEnumRecommendationRating(value);

  String toJson() => toJsonEnumRecommendationRating(this);
}

String toJsonEnumRecommendationRating(EnumRecommendationRating e) {
  switch (e) {
    case EnumRecommendationRating.NO_RATING:
      return r'NO_RATING';
    case EnumRecommendationRating.RATE_UP:
      return r'RATE_UP';
    case EnumRecommendationRating.RATE_DOWN:
      return r'RATE_DOWN';
    case EnumRecommendationRating.$unknown:
      return r'$unknown';
  }
}

EnumRecommendationRating fromJsonEnumRecommendationRating(String value) {
  switch (value) {
    case r'NO_RATING':
      return EnumRecommendationRating.NO_RATING;
    case r'RATE_UP':
      return EnumRecommendationRating.RATE_UP;
    case r'RATE_DOWN':
      return EnumRecommendationRating.RATE_DOWN;
    default:
      return EnumRecommendationRating.$unknown;
  }
}

enum EnumRecommendationSort {
  ID,
  ID_DESC,
  RATING,
  RATING_DESC,
  $unknown;

  factory EnumRecommendationSort.fromJson(String value) =>
      fromJsonEnumRecommendationSort(value);

  String toJson() => toJsonEnumRecommendationSort(this);
}

String toJsonEnumRecommendationSort(EnumRecommendationSort e) {
  switch (e) {
    case EnumRecommendationSort.ID:
      return r'ID';
    case EnumRecommendationSort.ID_DESC:
      return r'ID_DESC';
    case EnumRecommendationSort.RATING:
      return r'RATING';
    case EnumRecommendationSort.RATING_DESC:
      return r'RATING_DESC';
    case EnumRecommendationSort.$unknown:
      return r'$unknown';
  }
}

EnumRecommendationSort fromJsonEnumRecommendationSort(String value) {
  switch (value) {
    case r'ID':
      return EnumRecommendationSort.ID;
    case r'ID_DESC':
      return EnumRecommendationSort.ID_DESC;
    case r'RATING':
      return EnumRecommendationSort.RATING;
    case r'RATING_DESC':
      return EnumRecommendationSort.RATING_DESC;
    default:
      return EnumRecommendationSort.$unknown;
  }
}

enum EnumReviewRating {
  NO_VOTE,
  UP_VOTE,
  DOWN_VOTE,
  $unknown;

  factory EnumReviewRating.fromJson(String value) =>
      fromJsonEnumReviewRating(value);

  String toJson() => toJsonEnumReviewRating(this);
}

String toJsonEnumReviewRating(EnumReviewRating e) {
  switch (e) {
    case EnumReviewRating.NO_VOTE:
      return r'NO_VOTE';
    case EnumReviewRating.UP_VOTE:
      return r'UP_VOTE';
    case EnumReviewRating.DOWN_VOTE:
      return r'DOWN_VOTE';
    case EnumReviewRating.$unknown:
      return r'$unknown';
  }
}

EnumReviewRating fromJsonEnumReviewRating(String value) {
  switch (value) {
    case r'NO_VOTE':
      return EnumReviewRating.NO_VOTE;
    case r'UP_VOTE':
      return EnumReviewRating.UP_VOTE;
    case r'DOWN_VOTE':
      return EnumReviewRating.DOWN_VOTE;
    default:
      return EnumReviewRating.$unknown;
  }
}

enum EnumReviewSort {
  ID,
  ID_DESC,
  SCORE,
  SCORE_DESC,
  RATING,
  RATING_DESC,
  CREATED_AT,
  CREATED_AT_DESC,
  UPDATED_AT,
  UPDATED_AT_DESC,
  $unknown;

  factory EnumReviewSort.fromJson(String value) =>
      fromJsonEnumReviewSort(value);

  String toJson() => toJsonEnumReviewSort(this);
}

String toJsonEnumReviewSort(EnumReviewSort e) {
  switch (e) {
    case EnumReviewSort.ID:
      return r'ID';
    case EnumReviewSort.ID_DESC:
      return r'ID_DESC';
    case EnumReviewSort.SCORE:
      return r'SCORE';
    case EnumReviewSort.SCORE_DESC:
      return r'SCORE_DESC';
    case EnumReviewSort.RATING:
      return r'RATING';
    case EnumReviewSort.RATING_DESC:
      return r'RATING_DESC';
    case EnumReviewSort.CREATED_AT:
      return r'CREATED_AT';
    case EnumReviewSort.CREATED_AT_DESC:
      return r'CREATED_AT_DESC';
    case EnumReviewSort.UPDATED_AT:
      return r'UPDATED_AT';
    case EnumReviewSort.UPDATED_AT_DESC:
      return r'UPDATED_AT_DESC';
    case EnumReviewSort.$unknown:
      return r'$unknown';
  }
}

EnumReviewSort fromJsonEnumReviewSort(String value) {
  switch (value) {
    case r'ID':
      return EnumReviewSort.ID;
    case r'ID_DESC':
      return EnumReviewSort.ID_DESC;
    case r'SCORE':
      return EnumReviewSort.SCORE;
    case r'SCORE_DESC':
      return EnumReviewSort.SCORE_DESC;
    case r'RATING':
      return EnumReviewSort.RATING;
    case r'RATING_DESC':
      return EnumReviewSort.RATING_DESC;
    case r'CREATED_AT':
      return EnumReviewSort.CREATED_AT;
    case r'CREATED_AT_DESC':
      return EnumReviewSort.CREATED_AT_DESC;
    case r'UPDATED_AT':
      return EnumReviewSort.UPDATED_AT;
    case r'UPDATED_AT_DESC':
      return EnumReviewSort.UPDATED_AT_DESC;
    default:
      return EnumReviewSort.$unknown;
  }
}

enum EnumRevisionHistoryAction {
  CREATE,
  EDIT,
  $unknown;

  factory EnumRevisionHistoryAction.fromJson(String value) =>
      fromJsonEnumRevisionHistoryAction(value);

  String toJson() => toJsonEnumRevisionHistoryAction(this);
}

String toJsonEnumRevisionHistoryAction(EnumRevisionHistoryAction e) {
  switch (e) {
    case EnumRevisionHistoryAction.CREATE:
      return r'CREATE';
    case EnumRevisionHistoryAction.EDIT:
      return r'EDIT';
    case EnumRevisionHistoryAction.$unknown:
      return r'$unknown';
  }
}

EnumRevisionHistoryAction fromJsonEnumRevisionHistoryAction(String value) {
  switch (value) {
    case r'CREATE':
      return EnumRevisionHistoryAction.CREATE;
    case r'EDIT':
      return EnumRevisionHistoryAction.EDIT;
    default:
      return EnumRevisionHistoryAction.$unknown;
  }
}

enum EnumScoreFormat {
  POINT_100,
  POINT_10_DECIMAL,
  POINT_10,
  POINT_5,
  POINT_3,
  $unknown;

  factory EnumScoreFormat.fromJson(String value) =>
      fromJsonEnumScoreFormat(value);

  String toJson() => toJsonEnumScoreFormat(this);
}

String toJsonEnumScoreFormat(EnumScoreFormat e) {
  switch (e) {
    case EnumScoreFormat.POINT_100:
      return r'POINT_100';
    case EnumScoreFormat.POINT_10_DECIMAL:
      return r'POINT_10_DECIMAL';
    case EnumScoreFormat.POINT_10:
      return r'POINT_10';
    case EnumScoreFormat.POINT_5:
      return r'POINT_5';
    case EnumScoreFormat.POINT_3:
      return r'POINT_3';
    case EnumScoreFormat.$unknown:
      return r'$unknown';
  }
}

EnumScoreFormat fromJsonEnumScoreFormat(String value) {
  switch (value) {
    case r'POINT_100':
      return EnumScoreFormat.POINT_100;
    case r'POINT_10_DECIMAL':
      return EnumScoreFormat.POINT_10_DECIMAL;
    case r'POINT_10':
      return EnumScoreFormat.POINT_10;
    case r'POINT_5':
      return EnumScoreFormat.POINT_5;
    case r'POINT_3':
      return EnumScoreFormat.POINT_3;
    default:
      return EnumScoreFormat.$unknown;
  }
}

enum EnumSiteTrendSort {
  DATE,
  DATE_DESC,
  COUNT,
  COUNT_DESC,
  CHANGE,
  CHANGE_DESC,
  $unknown;

  factory EnumSiteTrendSort.fromJson(String value) =>
      fromJsonEnumSiteTrendSort(value);

  String toJson() => toJsonEnumSiteTrendSort(this);
}

String toJsonEnumSiteTrendSort(EnumSiteTrendSort e) {
  switch (e) {
    case EnumSiteTrendSort.DATE:
      return r'DATE';
    case EnumSiteTrendSort.DATE_DESC:
      return r'DATE_DESC';
    case EnumSiteTrendSort.COUNT:
      return r'COUNT';
    case EnumSiteTrendSort.COUNT_DESC:
      return r'COUNT_DESC';
    case EnumSiteTrendSort.CHANGE:
      return r'CHANGE';
    case EnumSiteTrendSort.CHANGE_DESC:
      return r'CHANGE_DESC';
    case EnumSiteTrendSort.$unknown:
      return r'$unknown';
  }
}

EnumSiteTrendSort fromJsonEnumSiteTrendSort(String value) {
  switch (value) {
    case r'DATE':
      return EnumSiteTrendSort.DATE;
    case r'DATE_DESC':
      return EnumSiteTrendSort.DATE_DESC;
    case r'COUNT':
      return EnumSiteTrendSort.COUNT;
    case r'COUNT_DESC':
      return EnumSiteTrendSort.COUNT_DESC;
    case r'CHANGE':
      return EnumSiteTrendSort.CHANGE;
    case r'CHANGE_DESC':
      return EnumSiteTrendSort.CHANGE_DESC;
    default:
      return EnumSiteTrendSort.$unknown;
  }
}

enum EnumStaffLanguage {
  JAPANESE,
  ENGLISH,
  KOREAN,
  ITALIAN,
  SPANISH,
  PORTUGUESE,
  FRENCH,
  GERMAN,
  HEBREW,
  HUNGARIAN,
  $unknown;

  factory EnumStaffLanguage.fromJson(String value) =>
      fromJsonEnumStaffLanguage(value);

  String toJson() => toJsonEnumStaffLanguage(this);
}

String toJsonEnumStaffLanguage(EnumStaffLanguage e) {
  switch (e) {
    case EnumStaffLanguage.JAPANESE:
      return r'JAPANESE';
    case EnumStaffLanguage.ENGLISH:
      return r'ENGLISH';
    case EnumStaffLanguage.KOREAN:
      return r'KOREAN';
    case EnumStaffLanguage.ITALIAN:
      return r'ITALIAN';
    case EnumStaffLanguage.SPANISH:
      return r'SPANISH';
    case EnumStaffLanguage.PORTUGUESE:
      return r'PORTUGUESE';
    case EnumStaffLanguage.FRENCH:
      return r'FRENCH';
    case EnumStaffLanguage.GERMAN:
      return r'GERMAN';
    case EnumStaffLanguage.HEBREW:
      return r'HEBREW';
    case EnumStaffLanguage.HUNGARIAN:
      return r'HUNGARIAN';
    case EnumStaffLanguage.$unknown:
      return r'$unknown';
  }
}

EnumStaffLanguage fromJsonEnumStaffLanguage(String value) {
  switch (value) {
    case r'JAPANESE':
      return EnumStaffLanguage.JAPANESE;
    case r'ENGLISH':
      return EnumStaffLanguage.ENGLISH;
    case r'KOREAN':
      return EnumStaffLanguage.KOREAN;
    case r'ITALIAN':
      return EnumStaffLanguage.ITALIAN;
    case r'SPANISH':
      return EnumStaffLanguage.SPANISH;
    case r'PORTUGUESE':
      return EnumStaffLanguage.PORTUGUESE;
    case r'FRENCH':
      return EnumStaffLanguage.FRENCH;
    case r'GERMAN':
      return EnumStaffLanguage.GERMAN;
    case r'HEBREW':
      return EnumStaffLanguage.HEBREW;
    case r'HUNGARIAN':
      return EnumStaffLanguage.HUNGARIAN;
    default:
      return EnumStaffLanguage.$unknown;
  }
}

enum EnumStaffSort {
  ID,
  ID_DESC,
  ROLE,
  ROLE_DESC,
  LANGUAGE,
  LANGUAGE_DESC,
  SEARCH_MATCH,
  FAVOURITES,
  FAVOURITES_DESC,
  RELEVANCE,
  $unknown;

  factory EnumStaffSort.fromJson(String value) => fromJsonEnumStaffSort(value);

  String toJson() => toJsonEnumStaffSort(this);
}

String toJsonEnumStaffSort(EnumStaffSort e) {
  switch (e) {
    case EnumStaffSort.ID:
      return r'ID';
    case EnumStaffSort.ID_DESC:
      return r'ID_DESC';
    case EnumStaffSort.ROLE:
      return r'ROLE';
    case EnumStaffSort.ROLE_DESC:
      return r'ROLE_DESC';
    case EnumStaffSort.LANGUAGE:
      return r'LANGUAGE';
    case EnumStaffSort.LANGUAGE_DESC:
      return r'LANGUAGE_DESC';
    case EnumStaffSort.SEARCH_MATCH:
      return r'SEARCH_MATCH';
    case EnumStaffSort.FAVOURITES:
      return r'FAVOURITES';
    case EnumStaffSort.FAVOURITES_DESC:
      return r'FAVOURITES_DESC';
    case EnumStaffSort.RELEVANCE:
      return r'RELEVANCE';
    case EnumStaffSort.$unknown:
      return r'$unknown';
  }
}

EnumStaffSort fromJsonEnumStaffSort(String value) {
  switch (value) {
    case r'ID':
      return EnumStaffSort.ID;
    case r'ID_DESC':
      return EnumStaffSort.ID_DESC;
    case r'ROLE':
      return EnumStaffSort.ROLE;
    case r'ROLE_DESC':
      return EnumStaffSort.ROLE_DESC;
    case r'LANGUAGE':
      return EnumStaffSort.LANGUAGE;
    case r'LANGUAGE_DESC':
      return EnumStaffSort.LANGUAGE_DESC;
    case r'SEARCH_MATCH':
      return EnumStaffSort.SEARCH_MATCH;
    case r'FAVOURITES':
      return EnumStaffSort.FAVOURITES;
    case r'FAVOURITES_DESC':
      return EnumStaffSort.FAVOURITES_DESC;
    case r'RELEVANCE':
      return EnumStaffSort.RELEVANCE;
    default:
      return EnumStaffSort.$unknown;
  }
}

enum EnumStudioSort {
  ID,
  ID_DESC,
  NAME,
  NAME_DESC,
  SEARCH_MATCH,
  FAVOURITES,
  FAVOURITES_DESC,
  $unknown;

  factory EnumStudioSort.fromJson(String value) =>
      fromJsonEnumStudioSort(value);

  String toJson() => toJsonEnumStudioSort(this);
}

String toJsonEnumStudioSort(EnumStudioSort e) {
  switch (e) {
    case EnumStudioSort.ID:
      return r'ID';
    case EnumStudioSort.ID_DESC:
      return r'ID_DESC';
    case EnumStudioSort.NAME:
      return r'NAME';
    case EnumStudioSort.NAME_DESC:
      return r'NAME_DESC';
    case EnumStudioSort.SEARCH_MATCH:
      return r'SEARCH_MATCH';
    case EnumStudioSort.FAVOURITES:
      return r'FAVOURITES';
    case EnumStudioSort.FAVOURITES_DESC:
      return r'FAVOURITES_DESC';
    case EnumStudioSort.$unknown:
      return r'$unknown';
  }
}

EnumStudioSort fromJsonEnumStudioSort(String value) {
  switch (value) {
    case r'ID':
      return EnumStudioSort.ID;
    case r'ID_DESC':
      return EnumStudioSort.ID_DESC;
    case r'NAME':
      return EnumStudioSort.NAME;
    case r'NAME_DESC':
      return EnumStudioSort.NAME_DESC;
    case r'SEARCH_MATCH':
      return EnumStudioSort.SEARCH_MATCH;
    case r'FAVOURITES':
      return EnumStudioSort.FAVOURITES;
    case r'FAVOURITES_DESC':
      return EnumStudioSort.FAVOURITES_DESC;
    default:
      return EnumStudioSort.$unknown;
  }
}

enum EnumSubmissionSort {
  ID,
  ID_DESC,
  $unknown;

  factory EnumSubmissionSort.fromJson(String value) =>
      fromJsonEnumSubmissionSort(value);

  String toJson() => toJsonEnumSubmissionSort(this);
}

String toJsonEnumSubmissionSort(EnumSubmissionSort e) {
  switch (e) {
    case EnumSubmissionSort.ID:
      return r'ID';
    case EnumSubmissionSort.ID_DESC:
      return r'ID_DESC';
    case EnumSubmissionSort.$unknown:
      return r'$unknown';
  }
}

EnumSubmissionSort fromJsonEnumSubmissionSort(String value) {
  switch (value) {
    case r'ID':
      return EnumSubmissionSort.ID;
    case r'ID_DESC':
      return EnumSubmissionSort.ID_DESC;
    default:
      return EnumSubmissionSort.$unknown;
  }
}

enum EnumSubmissionStatus {
  PENDING,
  REJECTED,
  PARTIALLY_ACCEPTED,
  ACCEPTED,
  $unknown;

  factory EnumSubmissionStatus.fromJson(String value) =>
      fromJsonEnumSubmissionStatus(value);

  String toJson() => toJsonEnumSubmissionStatus(this);
}

String toJsonEnumSubmissionStatus(EnumSubmissionStatus e) {
  switch (e) {
    case EnumSubmissionStatus.PENDING:
      return r'PENDING';
    case EnumSubmissionStatus.REJECTED:
      return r'REJECTED';
    case EnumSubmissionStatus.PARTIALLY_ACCEPTED:
      return r'PARTIALLY_ACCEPTED';
    case EnumSubmissionStatus.ACCEPTED:
      return r'ACCEPTED';
    case EnumSubmissionStatus.$unknown:
      return r'$unknown';
  }
}

EnumSubmissionStatus fromJsonEnumSubmissionStatus(String value) {
  switch (value) {
    case r'PENDING':
      return EnumSubmissionStatus.PENDING;
    case r'REJECTED':
      return EnumSubmissionStatus.REJECTED;
    case r'PARTIALLY_ACCEPTED':
      return EnumSubmissionStatus.PARTIALLY_ACCEPTED;
    case r'ACCEPTED':
      return EnumSubmissionStatus.ACCEPTED;
    default:
      return EnumSubmissionStatus.$unknown;
  }
}

enum EnumThreadCommentSort {
  ID,
  ID_DESC,
  $unknown;

  factory EnumThreadCommentSort.fromJson(String value) =>
      fromJsonEnumThreadCommentSort(value);

  String toJson() => toJsonEnumThreadCommentSort(this);
}

String toJsonEnumThreadCommentSort(EnumThreadCommentSort e) {
  switch (e) {
    case EnumThreadCommentSort.ID:
      return r'ID';
    case EnumThreadCommentSort.ID_DESC:
      return r'ID_DESC';
    case EnumThreadCommentSort.$unknown:
      return r'$unknown';
  }
}

EnumThreadCommentSort fromJsonEnumThreadCommentSort(String value) {
  switch (value) {
    case r'ID':
      return EnumThreadCommentSort.ID;
    case r'ID_DESC':
      return EnumThreadCommentSort.ID_DESC;
    default:
      return EnumThreadCommentSort.$unknown;
  }
}

enum EnumThreadSort {
  ID,
  ID_DESC,
  TITLE,
  TITLE_DESC,
  CREATED_AT,
  CREATED_AT_DESC,
  UPDATED_AT,
  UPDATED_AT_DESC,
  REPLIED_AT,
  REPLIED_AT_DESC,
  REPLY_COUNT,
  REPLY_COUNT_DESC,
  VIEW_COUNT,
  VIEW_COUNT_DESC,
  IS_STICKY,
  SEARCH_MATCH,
  $unknown;

  factory EnumThreadSort.fromJson(String value) =>
      fromJsonEnumThreadSort(value);

  String toJson() => toJsonEnumThreadSort(this);
}

String toJsonEnumThreadSort(EnumThreadSort e) {
  switch (e) {
    case EnumThreadSort.ID:
      return r'ID';
    case EnumThreadSort.ID_DESC:
      return r'ID_DESC';
    case EnumThreadSort.TITLE:
      return r'TITLE';
    case EnumThreadSort.TITLE_DESC:
      return r'TITLE_DESC';
    case EnumThreadSort.CREATED_AT:
      return r'CREATED_AT';
    case EnumThreadSort.CREATED_AT_DESC:
      return r'CREATED_AT_DESC';
    case EnumThreadSort.UPDATED_AT:
      return r'UPDATED_AT';
    case EnumThreadSort.UPDATED_AT_DESC:
      return r'UPDATED_AT_DESC';
    case EnumThreadSort.REPLIED_AT:
      return r'REPLIED_AT';
    case EnumThreadSort.REPLIED_AT_DESC:
      return r'REPLIED_AT_DESC';
    case EnumThreadSort.REPLY_COUNT:
      return r'REPLY_COUNT';
    case EnumThreadSort.REPLY_COUNT_DESC:
      return r'REPLY_COUNT_DESC';
    case EnumThreadSort.VIEW_COUNT:
      return r'VIEW_COUNT';
    case EnumThreadSort.VIEW_COUNT_DESC:
      return r'VIEW_COUNT_DESC';
    case EnumThreadSort.IS_STICKY:
      return r'IS_STICKY';
    case EnumThreadSort.SEARCH_MATCH:
      return r'SEARCH_MATCH';
    case EnumThreadSort.$unknown:
      return r'$unknown';
  }
}

EnumThreadSort fromJsonEnumThreadSort(String value) {
  switch (value) {
    case r'ID':
      return EnumThreadSort.ID;
    case r'ID_DESC':
      return EnumThreadSort.ID_DESC;
    case r'TITLE':
      return EnumThreadSort.TITLE;
    case r'TITLE_DESC':
      return EnumThreadSort.TITLE_DESC;
    case r'CREATED_AT':
      return EnumThreadSort.CREATED_AT;
    case r'CREATED_AT_DESC':
      return EnumThreadSort.CREATED_AT_DESC;
    case r'UPDATED_AT':
      return EnumThreadSort.UPDATED_AT;
    case r'UPDATED_AT_DESC':
      return EnumThreadSort.UPDATED_AT_DESC;
    case r'REPLIED_AT':
      return EnumThreadSort.REPLIED_AT;
    case r'REPLIED_AT_DESC':
      return EnumThreadSort.REPLIED_AT_DESC;
    case r'REPLY_COUNT':
      return EnumThreadSort.REPLY_COUNT;
    case r'REPLY_COUNT_DESC':
      return EnumThreadSort.REPLY_COUNT_DESC;
    case r'VIEW_COUNT':
      return EnumThreadSort.VIEW_COUNT;
    case r'VIEW_COUNT_DESC':
      return EnumThreadSort.VIEW_COUNT_DESC;
    case r'IS_STICKY':
      return EnumThreadSort.IS_STICKY;
    case r'SEARCH_MATCH':
      return EnumThreadSort.SEARCH_MATCH;
    default:
      return EnumThreadSort.$unknown;
  }
}

enum EnumUserSort {
  ID,
  ID_DESC,
  USERNAME,
  USERNAME_DESC,
  WATCHED_TIME,
  WATCHED_TIME_DESC,
  CHAPTERS_READ,
  CHAPTERS_READ_DESC,
  SEARCH_MATCH,
  $unknown;

  factory EnumUserSort.fromJson(String value) => fromJsonEnumUserSort(value);

  String toJson() => toJsonEnumUserSort(this);
}

String toJsonEnumUserSort(EnumUserSort e) {
  switch (e) {
    case EnumUserSort.ID:
      return r'ID';
    case EnumUserSort.ID_DESC:
      return r'ID_DESC';
    case EnumUserSort.USERNAME:
      return r'USERNAME';
    case EnumUserSort.USERNAME_DESC:
      return r'USERNAME_DESC';
    case EnumUserSort.WATCHED_TIME:
      return r'WATCHED_TIME';
    case EnumUserSort.WATCHED_TIME_DESC:
      return r'WATCHED_TIME_DESC';
    case EnumUserSort.CHAPTERS_READ:
      return r'CHAPTERS_READ';
    case EnumUserSort.CHAPTERS_READ_DESC:
      return r'CHAPTERS_READ_DESC';
    case EnumUserSort.SEARCH_MATCH:
      return r'SEARCH_MATCH';
    case EnumUserSort.$unknown:
      return r'$unknown';
  }
}

EnumUserSort fromJsonEnumUserSort(String value) {
  switch (value) {
    case r'ID':
      return EnumUserSort.ID;
    case r'ID_DESC':
      return EnumUserSort.ID_DESC;
    case r'USERNAME':
      return EnumUserSort.USERNAME;
    case r'USERNAME_DESC':
      return EnumUserSort.USERNAME_DESC;
    case r'WATCHED_TIME':
      return EnumUserSort.WATCHED_TIME;
    case r'WATCHED_TIME_DESC':
      return EnumUserSort.WATCHED_TIME_DESC;
    case r'CHAPTERS_READ':
      return EnumUserSort.CHAPTERS_READ;
    case r'CHAPTERS_READ_DESC':
      return EnumUserSort.CHAPTERS_READ_DESC;
    case r'SEARCH_MATCH':
      return EnumUserSort.SEARCH_MATCH;
    default:
      return EnumUserSort.$unknown;
  }
}

enum EnumUserStaffNameLanguage {
  ROMAJI_WESTERN,
  ROMAJI,
  NATIVE,
  $unknown;

  factory EnumUserStaffNameLanguage.fromJson(String value) =>
      fromJsonEnumUserStaffNameLanguage(value);

  String toJson() => toJsonEnumUserStaffNameLanguage(this);
}

String toJsonEnumUserStaffNameLanguage(EnumUserStaffNameLanguage e) {
  switch (e) {
    case EnumUserStaffNameLanguage.ROMAJI_WESTERN:
      return r'ROMAJI_WESTERN';
    case EnumUserStaffNameLanguage.ROMAJI:
      return r'ROMAJI';
    case EnumUserStaffNameLanguage.NATIVE:
      return r'NATIVE';
    case EnumUserStaffNameLanguage.$unknown:
      return r'$unknown';
  }
}

EnumUserStaffNameLanguage fromJsonEnumUserStaffNameLanguage(String value) {
  switch (value) {
    case r'ROMAJI_WESTERN':
      return EnumUserStaffNameLanguage.ROMAJI_WESTERN;
    case r'ROMAJI':
      return EnumUserStaffNameLanguage.ROMAJI;
    case r'NATIVE':
      return EnumUserStaffNameLanguage.NATIVE;
    default:
      return EnumUserStaffNameLanguage.$unknown;
  }
}

enum EnumUserStatisticsSort {
  ID,
  ID_DESC,
  COUNT,
  COUNT_DESC,
  PROGRESS,
  PROGRESS_DESC,
  MEAN_SCORE,
  MEAN_SCORE_DESC,
  $unknown;

  factory EnumUserStatisticsSort.fromJson(String value) =>
      fromJsonEnumUserStatisticsSort(value);

  String toJson() => toJsonEnumUserStatisticsSort(this);
}

String toJsonEnumUserStatisticsSort(EnumUserStatisticsSort e) {
  switch (e) {
    case EnumUserStatisticsSort.ID:
      return r'ID';
    case EnumUserStatisticsSort.ID_DESC:
      return r'ID_DESC';
    case EnumUserStatisticsSort.COUNT:
      return r'COUNT';
    case EnumUserStatisticsSort.COUNT_DESC:
      return r'COUNT_DESC';
    case EnumUserStatisticsSort.PROGRESS:
      return r'PROGRESS';
    case EnumUserStatisticsSort.PROGRESS_DESC:
      return r'PROGRESS_DESC';
    case EnumUserStatisticsSort.MEAN_SCORE:
      return r'MEAN_SCORE';
    case EnumUserStatisticsSort.MEAN_SCORE_DESC:
      return r'MEAN_SCORE_DESC';
    case EnumUserStatisticsSort.$unknown:
      return r'$unknown';
  }
}

EnumUserStatisticsSort fromJsonEnumUserStatisticsSort(String value) {
  switch (value) {
    case r'ID':
      return EnumUserStatisticsSort.ID;
    case r'ID_DESC':
      return EnumUserStatisticsSort.ID_DESC;
    case r'COUNT':
      return EnumUserStatisticsSort.COUNT;
    case r'COUNT_DESC':
      return EnumUserStatisticsSort.COUNT_DESC;
    case r'PROGRESS':
      return EnumUserStatisticsSort.PROGRESS;
    case r'PROGRESS_DESC':
      return EnumUserStatisticsSort.PROGRESS_DESC;
    case r'MEAN_SCORE':
      return EnumUserStatisticsSort.MEAN_SCORE;
    case r'MEAN_SCORE_DESC':
      return EnumUserStatisticsSort.MEAN_SCORE_DESC;
    default:
      return EnumUserStatisticsSort.$unknown;
  }
}

enum EnumUserTitleLanguage {
  ROMAJI,
  ENGLISH,
  NATIVE,
  ROMAJI_STYLISED,
  ENGLISH_STYLISED,
  NATIVE_STYLISED,
  $unknown;

  factory EnumUserTitleLanguage.fromJson(String value) =>
      fromJsonEnumUserTitleLanguage(value);

  String toJson() => toJsonEnumUserTitleLanguage(this);
}

String toJsonEnumUserTitleLanguage(EnumUserTitleLanguage e) {
  switch (e) {
    case EnumUserTitleLanguage.ROMAJI:
      return r'ROMAJI';
    case EnumUserTitleLanguage.ENGLISH:
      return r'ENGLISH';
    case EnumUserTitleLanguage.NATIVE:
      return r'NATIVE';
    case EnumUserTitleLanguage.ROMAJI_STYLISED:
      return r'ROMAJI_STYLISED';
    case EnumUserTitleLanguage.ENGLISH_STYLISED:
      return r'ENGLISH_STYLISED';
    case EnumUserTitleLanguage.NATIVE_STYLISED:
      return r'NATIVE_STYLISED';
    case EnumUserTitleLanguage.$unknown:
      return r'$unknown';
  }
}

EnumUserTitleLanguage fromJsonEnumUserTitleLanguage(String value) {
  switch (value) {
    case r'ROMAJI':
      return EnumUserTitleLanguage.ROMAJI;
    case r'ENGLISH':
      return EnumUserTitleLanguage.ENGLISH;
    case r'NATIVE':
      return EnumUserTitleLanguage.NATIVE;
    case r'ROMAJI_STYLISED':
      return EnumUserTitleLanguage.ROMAJI_STYLISED;
    case r'ENGLISH_STYLISED':
      return EnumUserTitleLanguage.ENGLISH_STYLISED;
    case r'NATIVE_STYLISED':
      return EnumUserTitleLanguage.NATIVE_STYLISED;
    default:
      return EnumUserTitleLanguage.$unknown;
  }
}

enum Enum__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum__TypeKind.fromJson(String value) =>
      fromJsonEnum__TypeKind(value);

  String toJson() => toJsonEnum__TypeKind(this);
}

String toJsonEnum__TypeKind(Enum__TypeKind e) {
  switch (e) {
    case Enum__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum__TypeKind.UNION:
      return r'UNION';
    case Enum__TypeKind.ENUM:
      return r'ENUM';
    case Enum__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum__TypeKind.LIST:
      return r'LIST';
    case Enum__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum__TypeKind fromJsonEnum__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum__TypeKind.INTERFACE;
    case r'UNION':
      return Enum__TypeKind.UNION;
    case r'ENUM':
      return Enum__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum__TypeKind.LIST;
    case r'NON_NULL':
      return Enum__TypeKind.NON_NULL;
    default:
      return Enum__TypeKind.$unknown;
  }
}

enum Enum__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum__DirectiveLocation.fromJson(String value) =>
      fromJsonEnum__DirectiveLocation(value);

  String toJson() => toJsonEnum__DirectiveLocation(this);
}

String toJsonEnum__DirectiveLocation(Enum__DirectiveLocation e) {
  switch (e) {
    case Enum__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum__DirectiveLocation.UNION:
      return r'UNION';
    case Enum__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum__DirectiveLocation fromJsonEnum__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'ActivityUnion': {
    'TextActivity',
    'ListActivity',
    'MessageActivity',
  },
  'LikeableUnion': {
    'ListActivity',
    'TextActivity',
    'MessageActivity',
    'ActivityReply',
    'Thread',
    'ThreadComment',
  },
  'NotificationUnion': {
    'AiringNotification',
    'FollowingNotification',
    'ActivityMessageNotification',
    'ActivityMentionNotification',
    'ActivityReplyNotification',
    'ActivityReplySubscribedNotification',
    'ActivityLikeNotification',
    'ActivityReplyLikeNotification',
    'ThreadCommentMentionNotification',
    'ThreadCommentReplyNotification',
    'ThreadCommentSubscribedNotification',
    'ThreadCommentLikeNotification',
    'ThreadLikeNotification',
    'RelatedMediaAdditionNotification',
    'MediaDataChangeNotification',
    'MediaMergeNotification',
    'MediaDeletionNotification',
  },
};
