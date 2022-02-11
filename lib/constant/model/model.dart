import 'dart:convert';

Accura accuraFromJson(String str) => Accura.fromJson(json.decode(str));

String accuraToJson(Accura data) => json.encode(data.toJson());

class Accura {
  Accura({
    required this.info,
    required this.item,
  });

  Info info;
  List<AccuraItem> item;

  factory Accura.fromJson(Map<String, dynamic> json) => Accura(
    info: Info.fromJson(json["info"]),
    item: List<AccuraItem>.from(
        json["item"].map((x) => AccuraItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "info": info.toJson(),
    "item": List<dynamic>.from(item.map((x) => x.toJson())),
  };
}

class Info {
  Info({
    required this.postmanId,
    required this.name,
    required this.description,
    required this.schema,
  });

  String postmanId;
  String name;
  String description;
  String schema;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    postmanId: json["_postman_id"],
    name: json["name"],
    description: json["description"],
    schema: json["schema"],
  );

  Map<String, dynamic> toJson() => {
    "_postman_id": postmanId,
    "name": name,
    "description": description,
    "schema": schema,
  };
}

class AccuraItem {
  AccuraItem({
    required this.name,
    required this.item,
  });

  String name;
  List<ItemItem> item;

  factory AccuraItem.fromJson(Map<String, dynamic> json) => AccuraItem(
    name: json["name"],
    item:
    List<ItemItem>.from(json["item"].map((x) => ItemItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "item": List<dynamic>.from(item.map((x) => x.toJson())),
  };
}

class ItemItem {
  ItemItem({
    required this.name,
    required this.request,
    required this.response,
  });

  String name;
  Request request;
  List<dynamic> response;

  factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
    name: json["name"],
    request: Request.fromJson(json["request"]),
    response: List<dynamic>.from(json["response"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "request": request.toJson(),
    "response": List<dynamic>.from(response.map((x) => x)),
  };
}

class Request {
  Request({
    required this.method,
    required this.header,
    required this.body,
    required this.url,
  });

  String method;
  List<dynamic> header;
  Body body;
  String url;

  factory Request.fromJson(Map<String, dynamic> json) => Request(
    method: json["method"],
    header: List<dynamic>.from(json["header"].map((x) => x)),
    body: Body.fromJson(json["body"]),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "method": method,
    "header": List<dynamic>.from(header.map((x) => x)),
    "body": body.toJson(),
    "url": url,
  };
}

class Body {
  Body({
    required this.mode,
    required this.formdata,
  });

  String mode;
  List<Formdatum> formdata;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
    mode: json["mode"],
    formdata: List<Formdatum>.from(
        json["formdata"].map((x) => Formdatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "mode": mode,
    "formdata": List<dynamic>.from(formdata.map((x) => x.toJson())),
  };
}

class Formdatum {
  Formdatum({
    required this.key,
    required this.value,
    required this.type,
    required this.description,
    required this.disabled,
  });

  String key;
  String value;
  Type? type;
  String description;
  bool disabled;

  factory Formdatum.fromJson(Map<String, dynamic> json) => Formdatum(
    key: json["key"],
    value: json["value"],
    type: typeValues.map[json["type"]],
    description: json["description"] == null ? null : json["description"],
    disabled: json["disabled"] == null ? null : json["disabled"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
    "type": typeValues.reverse[type],
    "description": description == null ? null : description,
    "disabled": disabled == null ? null : disabled,
  };
}

enum Type { TEXT }

final typeValues = EnumValues(reverseMap: {}, map: {"text": Type.TEXT});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues({required this.map, required this.reverseMap});

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
