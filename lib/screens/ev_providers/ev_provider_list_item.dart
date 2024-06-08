import 'package:easevents_app/exports.dart';
import 'package:easevents_app/models/ev_provider.dart';

class EVProviderListItem extends StatelessWidget {
  const EVProviderListItem(this.evProvider, {super.key});

  final EVProvider evProvider;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EVProviderProfileScreen(evProvider),
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
              const SizedBox(height: 8),
              // for (var tag in evProvider.tags)
              //   Container(
              //     padding: const EdgeInsets.all(5),
              //     decoration: BoxDecoration(
              //       color: Colors.pink,
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     child: Text(
              //       tag,
              //       style: const TextStyle(
              //         fontSize: 12,
              //         color: AppStyles.textSecondary,
              //       ),
              //     ),
              //   ),
              // const SizedBox(height: 5),
              Text(
                evProvider.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                evProvider.location,
                style: const TextStyle(
                  fontSize: 12,
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
