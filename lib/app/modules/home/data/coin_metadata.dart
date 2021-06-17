import 'package:flutter/foundation.dart';

import 'package:json_annotation/json_annotation.dart';

part 'coin_metadata.g.dart';

@JsonSerializable()
class CoinMetadata {
  final String id;
  final String symbol;
  final String name;
  final int? block_time_in_minutes;
  final String? hashing_algorithm;
  final List<String>? categories;
  final List<dynamic>? additional_notices;
  final Description description;
  final Links? links;
  final Image? image;
  final String? country_origin;
  final String? genesis_date;
  final MarketData market_data;
  final String last_updated;
  CoinMetadata({
    required this.id,
    required this.symbol,
    required this.name,
    required this.block_time_in_minutes,
    required this.hashing_algorithm,
    required this.categories,
    required this.additional_notices,
    required this.description,
    required this.links,
    required this.image,
    required this.country_origin,
    required this.genesis_date,
    required this.market_data,
    required this.last_updated,
  });

  factory CoinMetadata.fromJson(Map<String, dynamic> json) =>
      _$CoinMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$CoinMetadataToJson(this);
}

@JsonSerializable()
class Description {
  final String en;
  final String id;
  Description({
    required this.en,
    required this.id,
  });

  @override
  String toString() {
    return 'Description(en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Description && other.en == en && other.id == id;
  }

  @override
  int get hashCode {
    return en.hashCode ^ id.hashCode;
  }

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}

@JsonSerializable()
class Links {
  final List<String> homepage;
  final List<String> blockchain_site;
  final List<String> official_forum_url;
  final List<String> chat_url;
  final List<String> announcement_url;
  final String twitter_screen_name;
  final String facebook_username;
  final String telegram_channel_identifier;
  final String subreddit_url;
  final ReposUrl repos_url;
  Links({
    required this.homepage,
    required this.blockchain_site,
    required this.official_forum_url,
    required this.chat_url,
    required this.announcement_url,
    required this.twitter_screen_name,
    required this.facebook_username,
    required this.telegram_channel_identifier,
    required this.subreddit_url,
    required this.repos_url,
  });

  @override
  String toString() {
    return 'Links(homepage: $homepage, blockchain_site: $blockchain_site, official_forum_url: $official_forum_url, chat_url: $chat_url, announcement_url: $announcement_url, twitter_screen_name: $twitter_screen_name, facebook_username: $facebook_username, telegram_channel_identifier: $telegram_channel_identifier, subreddit_url: $subreddit_url, repos_url: $repos_url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Links &&
        listEquals(other.homepage, homepage) &&
        listEquals(other.blockchain_site, blockchain_site) &&
        listEquals(other.official_forum_url, official_forum_url) &&
        listEquals(other.chat_url, chat_url) &&
        listEquals(other.announcement_url, announcement_url) &&
        other.twitter_screen_name == twitter_screen_name &&
        other.facebook_username == facebook_username &&
        other.telegram_channel_identifier == telegram_channel_identifier &&
        other.subreddit_url == subreddit_url &&
        other.repos_url == repos_url;
  }

  @override
  int get hashCode {
    return homepage.hashCode ^
        blockchain_site.hashCode ^
        official_forum_url.hashCode ^
        chat_url.hashCode ^
        announcement_url.hashCode ^
        twitter_screen_name.hashCode ^
        facebook_username.hashCode ^
        telegram_channel_identifier.hashCode ^
        subreddit_url.hashCode ^
        repos_url.hashCode;
  }

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class ReposUrl {
  final List<String> github;
  final List<dynamic> bitbucket;
  ReposUrl({
    required this.github,
    required this.bitbucket,
  });

  @override
  String toString() => 'Repos_url(github: $github, bitbucket: $bitbucket)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ReposUrl &&
        listEquals(other.github, github) &&
        listEquals(other.bitbucket, bitbucket);
  }

  @override
  int get hashCode => github.hashCode ^ bitbucket.hashCode;

  factory ReposUrl.fromJson(Map<String, dynamic> json) => _$ReposUrlFromJson(json);
  Map<String, dynamic> toJson() => _$ReposUrlToJson(this);
}

@JsonSerializable()
class Image {
  final String thumb;
  final String small;
  final String large;
  Image({
    required this.thumb,
    required this.small,
    required this.large,
  });

  @override
  String toString() => 'Image(thumb: $thumb, small: $small, large: $large)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Image &&
        other.thumb == thumb &&
        other.small == small &&
        other.large == large;
  }

  @override
  int get hashCode => thumb.hashCode ^ small.hashCode ^ large.hashCode;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class MarketData {
  final SparklineData sparkline_7d;
  final String last_updated;
  MarketData({
    required this.sparkline_7d,
    required this.last_updated,
  });

  factory MarketData.fromJson(Map<String, dynamic> json) => _$MarketDataFromJson(json);
  Map<String, dynamic> toJson() => _$MarketDataToJson(this);
}

@JsonSerializable()
class SparklineData {
  final List<double> price;
  SparklineData({
    required this.price,
  });

  @override
  String toString() => 'Sparkline_7d(price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SparklineData && listEquals(other.price, price);
  }

  @override
  int get hashCode => price.hashCode;

  factory SparklineData.fromJson(Map<String, dynamic> json) => _$SparklineDataFromJson(json);
  Map<String, dynamic> toJson() => _$SparklineDataToJson(this);
}
