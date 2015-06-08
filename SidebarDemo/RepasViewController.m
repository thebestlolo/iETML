//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Lundi 23 mars 2015
//  Nom du fichier : RepasViewController.m
//  Nom de l'application : iEtml
//  Descrition : Ce fchier est un fichier objectif-c et sert a faire l'annimation des elements de l'interface RepasViewController dans le fichier MainStroyboard. Cette page affichera tout les types de repas possible de mangé autours de l'etml.


// importation des tous les fichiers de du projet pour le menu
#import "SidebarViewController.h"
#import "SWRevealViewController.h"
#import "RepasViewController.h"
#import "TransportViewController.h"
#import "APPMasterViewController.h"
#import "APPDetailViewController.h"
#import "FastFoodViewController.h"
#import "RepasViewController.h"
#import "ReferenceViewController.h"

//  Interface avec le mainstoryboard.storyboard
@interface RepasViewController ()

// Varriable du menu
@property (nonatomic, strong) NSArray *categorierepas;
@end

@implementation RepasViewController



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
    self.title = NSLocalizedString (@"REPAS", @"message");
    
    [super viewDidLoad];
    // Déclare que menuiTems est égale à toutes les cellules du menu
    _categorierepas = @[@"titretable", @"cantineetml", @"fastfood", @"boulangerie", @"supermarche", @"cafeetthe", @"vegetarien"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _categorierepas.count;
}
// initialse le tableau d'élément de menu avec de l'idientifiant des cellules
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [_categorierepas objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}


@end
