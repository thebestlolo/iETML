
//
//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Vendredi 13 mars 2015
//  Nom du fichier : MapWiewController.h
//  Nom de l'application : iEtml
//  Descrition : Ce fichier fait le lien entre l'interface qui se trouve dans le fichier Mainsotryboard. Cette page doit servir a afficher la carte avec de Lausanne et afficher des points sur la carte.


#import "UIKit/UIKit.h"
#import <MapKit/Mapkit.h>// importation outil de la carte.
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MKannotation.h>

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
}

// Catre qui s'affiche
@property(nonatomic, retain) IBOutlet MKMapView *mapView;
// Localisation de l'utilsateur
@property(nonatomic, retain) CLLocationManager *locationManager;

// Référence au bouton en haut à gauche dans l'entête qui donne accès au menu
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


// Titre du menu en haut à gauche
@property (weak, nonatomic) IBOutlet UIBarButtonItem *titre;
@end
