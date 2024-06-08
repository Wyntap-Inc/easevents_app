import 'package:easevents_app/exports.dart';
import 'package:easevents_app/models/ev_provider.dart';
import 'package:easevents_app/screens/ev_providers/ev_provider_profile_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class EVProviderListItem extends StatelessWidget {
  const EVProviderListItem(this.evProvider, {super.key});

  final EVProvider evProvider;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EVProviderProfile(evProvider),
          ),
        );
      },
      child: Card(
        child: Container(
          margin: const EdgeInsets.only(
            top: 8,
            right: 8,
            left: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
                child: Hero(
                  tag: evProvider.name,
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    placeholder: MemoryImage(kTransparentImage),
                    image: AssetImage(evProvider.image),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                evProvider.services,
                style: const TextStyle(
                  fontSize: 10,
                  color: AppStyles.textSecondary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                evProvider.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                evProvider.location,
                style: const TextStyle(
                  fontSize: 10,
                  color: AppStyles.textSecondary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
