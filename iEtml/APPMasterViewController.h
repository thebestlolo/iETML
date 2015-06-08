//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 19 mars 2015
//  Nom du fichier : APPMasterViewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier sert à faire le lien avec l'interface APPMasterViewController dans le fichier MainStoryboard. Cette page doit annalyser la page rss de l'actualité de l'etml pour ensuite en sortir les infomrations souhaiter pour la création d'un tableau avec le titre.

#import <UIKit/UIKit.h>


@interface APPMasterViewController : UITableViewController <NSXMLParserDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *titre;



@end
