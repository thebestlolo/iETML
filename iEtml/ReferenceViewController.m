//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : jeudi 19 mars 2015
//  Nom du fichier : ReferenceViewControlle
//  Nom de l'application : iEtml
//  Descrition : Ce fichier est un fichier objetcif-c qui faire faire des actions aux elements de l'interace TrasnportViewController qui est dans le fichier MainSotryboard. Cette page sert a des donnée des infomration sur les transports lausannois garce a une webview qui donne sur le site des tl et qui donne la possibilter de rentrer un itiniéraire et de voir les potentionelle perturbation du travfic

#import "ReferenceViewController.h"
#import "SWRevealViewController.h"

// Interface avec le fichier "MainStoryboard"
@interface ReferenceViewController ()

@end


@implementation ReferenceViewController


// Méthode viewDidload
- (void)viewDidLoad
{
    {
    
    [super viewDidLoad];
      
    // Commande permmetant au menu de savoir quand rentré en action
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        // si le bouton du menu est actionné
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        // si le menu glisse l
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
      
    }
    // Titre de la page placé dans l'entête de la page
    self.title = NSLocalizedString (@"REFE", @"Message");
    }
}
// Méthode didReceiveMemoryWarning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
