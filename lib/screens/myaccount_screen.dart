import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Me'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,    
                child:
                Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage('https://cdn.prod.website-files.com/5fd2ba952bcd68835f2c8254/654553fedbede7976b97eaf5_Professional-5.remini-enhanced.webp'),
                    ),
                    SizedBox(height: 7),
                    Text('John Doe', style: Theme.of(context).textTheme.titleLarge,),
                  ],
                )
              ),
              
             
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text('Profile', style: Theme.of(context).textTheme.titleSmall,),
                  TextButton.icon(onPressed:(){} , label: Text('Account Manamgement'), icon: Icon(Icons.account_circle),),
                  TextButton.icon(onPressed: (){}, label: Text('Username'), icon: Icon(Icons.alternate_email_rounded),),
          
                  SizedBox(height: 30),
          
                  Text('Account', style: Theme.of(context).textTheme.titleSmall,),
                  TextButton.icon(onPressed: (){}, label: Text('Account Manamgement'), icon: Icon(Icons.account_circle),),
                  TextButton.icon(onPressed: (){}, label: Text('Notifications'), icon: Icon(Icons.circle_notifications),),
                  TextButton.icon(onPressed: (){}, label: Text('Help'), icon: Icon(Icons.help),),
                ],
              ),

          
              
              ElevatedButton(onPressed: (){}, child: Text('Sign Out'))
            ],
                
          ),
        ),
      ),
    );
  }
}