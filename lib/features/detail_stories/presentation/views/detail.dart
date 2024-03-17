import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:story_u/extension/extention_datetime.dart';
import 'package:story_u/features/detail_stories/bloc/stories_detail_bloc.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  const DetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Story'),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).goNamed('home');
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: BlocBuilder<StoriesDetailBloc, StoriesDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            storiesLoading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            storiesDetailLoaded: (detailStory) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(
                        detailStory.photoUrl,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            detailStory.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: GoogleMap(
                              initialCameraPosition: detailStory.lat != null &&
                                      detailStory.lon != null
                                  ? CameraPosition(
                                      target: LatLng(
                                        detailStory.lat!.toDouble(),
                                        detailStory.lon!.toDouble(),
                                      ),
                                      zoom: 15,
                                    )
                                  : const CameraPosition(
                                      target: LatLng(0, 0),
                                      zoom: 15,
                                    ),
                              markers: detailStory.lat != null &&
                                      detailStory.lon != null
                                  ? {
                                      Marker(
                                        markerId: MarkerId(detailStory.id),
                                        position: LatLng(
                                          detailStory.lat!.toDouble(),
                                          detailStory.lon!.toDouble(),
                                        ),
                                        infoWindow: InfoWindow(
                                          title: detailStory.name,
                                          snippet: detailStory.description,
                                        ),
                                      ),
                                    }
                                  : {},
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            detailStory.description,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Created at: ${detailStory.createdAt.toIndTime()}',
                            style: const TextStyle(
                                fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            storiesError: (errorMessage) => Center(
              child: Text('Error: $errorMessage'),
            ),
            orElse: () => const Center(
              child: Text('Unknown state'),
            ),
          );
        },
      ),
    );
  }
}
