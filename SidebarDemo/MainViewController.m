//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 12 mars 2015
//  Nom du fichier : MainViewController.m
//  Nom de l'application : iEtml
//  Descrition : Ce fichier à été repris du site Appcoda pour aider à la création du menu glissant. Ce fichier est en fichier objectif-c qui contien les actions que vont effectuer les elements qui sont dans l'interface du fichier MainStoryboard qui s'appelle MainViewControlle. Cette page est la page d'accueil de l'application iEtml et la principal action qu'il va effectuer est juste le glissement du menu. Sinon tout les elements de la page d'accueil seront statique.


//Importation du fichier mainviewcontroller.h
#import "MainViewController.h"
//Importation du fichier SWRevealViewController.h
#import "SWRevealViewController.h"

// Interface dans le fichier mainstoryboard est relier avec la fenêtre mainviewcontroller
@interface MainViewController ()


@end

@implementation MainViewController

//Code servant à faire l'action du menu de s'ouvir et de se refermé
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // "if" pour la commande servant a mettre en action le menu
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        // si le bouton du menu est actionné
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        // si le menu glisse l
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    // titre de la page
    self.title = NSLocalizedString (@"ACCUEIL", @"Message");


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
