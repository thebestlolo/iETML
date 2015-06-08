//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : CantineViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier est un fichier objetcif-c qui faire faire des actions aux elements de l'interace CafeViewController qui est dans le fichier MainSotryboard. Cette est simplement composé d'une webview qui affiche la page de l'etml où il y a les menus de la cantine de l'etml.

#import "CantineETMLViewController.h"
#import "SWRevealViewController.h"

// Interface avec le fichier "MainStoryboard"
@interface CantineETMLViewController ()

@end


@implementation CantineETMLViewController


// Méthode viewDidload
- (void)viewDidLoad
{
    
    {
        [super viewDidLoad];
        
        // lien du site que sera utiliser pour afficher les horraires
        NSString *strURL = @"http://www.etml.ch/vie-de-lecole/menus-du-restaurant.html#menu-du-restaurant";
        // Affichage de la page web dans le UIWebView
        NSURL *url = [NSURL URLWithString:strURL];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:urlRequest];
        
        // Titre placé dans la barre d'entête de la page
        self.title = NSLocalizedString (@"CAFETERIA", @"Message");
        
    }
}
// Méthode didReceiveMemoryWarning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
