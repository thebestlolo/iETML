
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 12 mars 2015
//  Nom du fichier : MainViewCOntroller.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier à été repris du site Appcoda pour aider à la création du menu glissant. Ce fichier fait les lien avec l'interface dans MainStoryboard qui s'appele MainViewControleller qui est l'écran d'accueil de l'application

#import <UIKit/UIKit.h>


@interface MainViewController : UIViewController

// Référence au bouton pour accéder au menu
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

//Référence a l'image de l'etml comme titre
@property (weak, nonatomic) IBOutlet UIImageView *imagedefond;

// Référence au message de bienvenue sur la page d'accueil
@property (weak, nonatomic) IBOutlet UILabel *bienvenue;

// Titre du menu en haut à gauche
@property (weak, nonatomic) IBOutlet UIButton *titre;


@end
