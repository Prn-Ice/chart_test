// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinMetadata _$CoinMetadataFromJson(Map<String, dynamic> json) {
  return CoinMetadata(
    id: json['id'] as String,
    symbol: json['symbol'] as String,
    name: json['name'] as String,
    block_time_in_minutes: json['block_time_in_minutes'] as int?,
    hashing_algorithm: json['hashing_algorithm'] as String?,
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    additional_notices: json['additional_notices'] as List<dynamic>?,
    description:
        Description.fromJson(json['description'] as Map<String, dynamic>),
    links: json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
    image: json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    country_origin: json['country_origin'] as String?,
    genesis_date: json['genesis_date'] as String?,
    market_data:
        MarketData.fromJson(json['market_data'] as Map<String, dynamic>),
    last_updated: json['last_updated'] as String,
  );
}

Map<String, dynamic> _$CoinMetadataToJson(CoinMetadata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'block_time_in_minutes': instance.block_time_in_minutes,
      'hashing_algorithm': instance.hashing_algorithm,
      'categories': instance.categories,
      'additional_notices': instance.additional_notices,
      'description': instance.description,
      'links': instance.links,
      'image': instance.image,
      'country_origin': instance.country_origin,
      'genesis_date': instance.genesis_date,
      'market_data': instance.market_data,
      'last_updated': instance.last_updated,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return Description(
    en: json['en'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    homepage:
        (json['homepage'] as List<dynamic>).map((e) => e as String).toList(),
    blockchain_site: (json['blockchain_site'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    official_forum_url: (json['official_forum_url'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    chat_url:
        (json['chat_url'] as List<dynamic>).map((e) => e as String).toList(),
    announcement_url: (json['announcement_url'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    twitter_screen_name: json['twitter_screen_name'] as String,
    facebook_username: json['facebook_username'] as String,
    telegram_channel_identifier: json['telegram_channel_identifier'] as String,
    subreddit_url: json['subreddit_url'] as String,
    repos_url: ReposUrl.fromJson(json['repos_url'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'homepage': instance.homepage,
      'blockchain_site': instance.blockchain_site,
      'official_forum_url': instance.official_forum_url,
      'chat_url': instance.chat_url,
      'announcement_url': instance.announcement_url,
      'twitter_screen_name': instance.twitter_screen_name,
      'facebook_username': instance.facebook_username,
      'telegram_channel_identifier': instance.telegram_channel_identifier,
      'subreddit_url': instance.subreddit_url,
      'repos_url': instance.repos_url,
    };

ReposUrl _$ReposUrlFromJson(Map<String, dynamic> json) {
  return ReposUrl(
    github: (json['github'] as List<dynamic>).map((e) => e as String).toList(),
    bitbucket: json['bitbucket'] as List<dynamic>,
  );
}

Map<String, dynamic> _$ReposUrlToJson(ReposUrl instance) => <String, dynamic>{
      'github': instance.github,
      'bitbucket': instance.bitbucket,
    };

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image(
    thumb: json['thumb'] as String,
    small: json['small'] as String,
    large: json['large'] as String,
  );
}

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'thumb': instance.thumb,
      'small': instance.small,
      'large': instance.large,
    };

MarketData _$MarketDataFromJson(Map<String, dynamic> json) {
  return MarketData(
    sparkline_7d:
        SparklineData.fromJson(json['sparkline_7d'] as Map<String, dynamic>),
    last_updated: json['last_updated'] as String,
  );
}

Map<String, dynamic> _$MarketDataToJson(MarketData instance) =>
    <String, dynamic>{
      'sparkline_7d': instance.sparkline_7d,
      'last_updated': instance.last_updated,
    };

SparklineData _$SparklineDataFromJson(Map<String, dynamic> json) {
  return SparklineData(
    price: (json['price'] as List<dynamic>)
        .map((e) => (e as num).toDouble())
        .toList(),
  );
}

Map<String, dynamic> _$SparklineDataToJson(SparklineData instance) =>
    <String, dynamic>{
      'price': instance.price,
    };
