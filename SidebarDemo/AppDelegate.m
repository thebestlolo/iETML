
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 12 mars 2015
//  Nom du fichier : AppDelegat.m
//  Nom de l'application : iEtml
//  Descrition : Ce fichier à été repris du site Appcoda pour aider à la création du menu glissant

#import "AppDelegate.h"
#import "MapViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Override point for customization after application launch.
    
    // Change the background color of navigation bar
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    
    // Change the font style of the navigation bar
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
    shadow.shadowOffset = CGSizeMake(0, 0);
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor colorWithRed:10.0/255.0 green:10.0/255.0 blue:10.0/255.0 alpha:1.0], NSForegroundColorAttributeName,
                                                           shadow, NSShadowAttributeName,
                                                           [UIFont fontWithName:@"Helvetica Neue Condensed" size:21.0], NSFontAttributeName, nil]];
    // lancement de l'application si c'est pas la premier fois
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"HasLaunchedOnce"])
    {
        sleep(2);
    }
    // lancement de l'application si c'est la permier fois
    else
    {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"HasLaunchedOnce"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        // action du message d'alerte
        UIAlertView * uimessagealerte = [[ UIAlertView alloc ]
                                         // Titre du message d'alerte
                                         initWithTitle : NSLocalizedString (@"ATTENTION", @"Message")
                                         // Contenu du message d'alerte
                                         message: NSLocalizedString (@"MESSAGE", @"Message")
                                         delegate:nil
                                         // Bouton pour faire partir le message
                                         cancelButtonTitle: NSLocalizedString (@"ACCEPTER", @"Message")
                                         otherButtonTitles:nil];
        
        // Affichage du message
        [uimessagealerte show];
        sleep(5);
    }

    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
