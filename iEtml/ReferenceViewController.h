
//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : ReferenceViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier sert à faire le lien avec l'interface TransportViewController dans le fichier MainStoryboard. Sur cette page il y aura une webview qui permettra d'optenir les horraires pour les bus et de calculer un itinéraire.

// Importation du fichier UIKit
#import <UIKit/UIKit.h>

// Interface avec le fichier main.storyboard dont le fichier le viewcontroller repas

@interface ReferenceViewController : UITableViewController

// Bouton en haut à gauche faisant parti de l'entête
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

// Titre du menu en haut à gauche
@property (weak, nonatomic) IBOutlet UIButton *titre;



@end
