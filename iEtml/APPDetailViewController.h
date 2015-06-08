//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : APPDetailViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier sert à faire le lien avec l'interface APPDetailViewController dans le fichier MainStoryboard. Cette page affiche une web View après avoir cliquer sur une des actualité du tableau précédent.


#import <UIKit/UIKit.h>

// Interface avec le quelle il doit fonctionné
@interface APPDetailViewController: UIViewController <UIWebViewDelegate>

// Web view qui affichera la page web
@property (weak, nonatomic) IBOutlet UIWebView *webView;
// sert à faire l'annimation pour montrer le chargement de la page
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;


@end


