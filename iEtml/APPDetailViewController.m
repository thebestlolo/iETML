
//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : APPDetailViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier est un fichier objetcif-c qui faire faire des actions aux elements de l'interace APPdetailViewController qui est dans le fichier MainSotryboard. Cette page affiche une web View après avoir cliquer sur une des actualité du tableau précédent.

#import "APPDetailViewController.h"
#import "APPMasterViewController.h"

@implementation APPDetailViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    // Début du chargement de la page et de l'annimation
    [_activityIndicator startAnimating];
    // Chagement de la page
    NSString *fullURL = @"http://www.etml.ch/actualites.html";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    // Disparition de l'annimation
     _activityIndicator.hidden = TRUE;
   
}




@end







