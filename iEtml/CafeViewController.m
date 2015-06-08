//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : CafeViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier est un fichier objetcif-c qui faire faire des actions aux elements de l'interace CafeViewController qui est dans le fichier MainSotryboard.   Cette page aura une simple plusieurs label qui donneront des infomrations sur les différents cafée à disposition autours de l'etml.

#import "CafeViewController.h"
#import "SWRevealViewController.h"

// Interface avec le fichier "MainStoryboard"
@interface CafeViewController ()

@end


@implementation CafeViewController


// Méthode viewDidload
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Titre placé dans la barre d'entête de la page
    self.title = NSLocalizedString (@"CAFE", @"Message");
    
}
// Méthode didReceiveMemoryWarning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
