
//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : TransportViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier sert à faire le lien avec l'interface TransportViewController dans le fichier MainStoryboard. Sur cette page il y aura une webview qui permettra d'optenir les horraires pour les bus et de calculer un itinéraire.

// Importation du fichier UIKit
#import <UIKit/UIKit.h>

// Interface avec le fichier "MainStoryboard"
@interface TransportViewController : UIViewController

// Bouton donnant accès au menu de l'application qui glisse
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


// web view pour les horraires de bus et de métro
@property (weak, nonatomic) IBOutlet UIWebView *webView;

// Titre du menu en haut à gauche
@property (weak, nonatomic) IBOutlet UIButton *titre;

// Annimation permettant de montrer le chargementb
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
