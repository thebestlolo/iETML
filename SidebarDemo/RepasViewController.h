
//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Lundi 23 mars 2015
//  Nom du fichier : RepasViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier sert a faire le lien avec l'interface RepasViewCOntroller dans le fichier MainStoryboard Dans ce fichier apparait toutes les elements qui sont dans l'interface. La page doit servir a afficher tout les types de repas possible tout autours de l'etml.

#import <UIKit/UIKit.h>

// Interface avec le fichier main.storyboard dont le fichier le viewcontroller repas

@interface RepasViewController : UITableViewController

// Bouton en haut à gauche faisant parti de l'entête
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


// Titre du menu en haut à gauche
@property (weak, nonatomic) IBOutlet UIButton *titre;


@end
