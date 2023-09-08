import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castEntity(Cast cast) => Actor(
      id: cast.id,
      name: cast.name,
      profilPath: cast.profilePath != null
          ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
          : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNnXQRA1v4fRDDiE9qTJZFPOXw0UJFCKM_LA&usqp=CAU',
      character: cast.character);
}
