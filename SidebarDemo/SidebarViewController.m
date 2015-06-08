
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Jeudi 12 mars 2015
//  Nom du fichier : SlidebarViewController.m
//  Nom de l'application : iEtml
//  Descrition : Ce fichier à été repris du site Appcoda pour aider à la création du menu glissant. Ce fichier est un fichier objetf-c et donc sert a faire les actions des elements du menu. L'interface de ce fichier est dans MainStoryboard et s'appele SlidebarViewController. Dans ce fichier ce trouve les différents actions que le menu va faier telque l'affichage des différents page que l'application contient et les icones que les "cells" contienne.

// importation des tous les fichiers de du projet pour le menu
#import "SidebarViewController.h"
#import "SWRevealViewController.h"
#import "RepasViewController.h"
#import "TransportViewController.h"
#import "APPMasterViewController.h"
#import "ReferenceViewController.h"
#import "MapViewController.h"

//  Interface avec le mainstoryboard.storyboard
@interface SidebarViewController ()

// Varriable du menu
@property (nonatomic, strong) NSArray *menuItems;
@end

@implementation SidebarViewController



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // déclare que menuiTems est égale à toutes les cellules du menu
    _menuItems = @[@"titre", @"accueil", @"actualite", @"carte", @"repas",@"transport", @"horaire", @"reference"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Début de programme permettant d'afficher les menus
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _menuItems.count;
}
 // initialse le tableau d'élément de menu avec de l'idientifiant des cellules
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [_menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Set the title of navigation bar by using the menu items
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    UINavigationController *destViewController = (UINavigationController*)segue.destinationViewController;
    destViewController.title = [[_menuItems objectAtIndex:indexPath.row] capitalizedString];
    
}

@end
