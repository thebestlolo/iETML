//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : CantineETMLViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier sert à faire le lien avec l'interface CantineETMLViewController dans le fichier MainStoryboard. Cette page aura simplement une web view qui affichera le site de l'etml avec les informations des différents menus qui se font cette semaine si à la cantine de l'etml.

// Importation du fichier UIKit
#import <UIKit/UIKit.h>

// Interface avec le fichier "MainStoryboard"
@interface CantineETMLViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
