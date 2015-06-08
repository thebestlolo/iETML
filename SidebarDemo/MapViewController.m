//  Created by Informatique on 05.03.15.
//  Copyright (c) 2015 Etml. All rights reserved.
//
//  Modifier par : Loïc Nguyen
//  Modifier le : Vendredi 13 mars 2015
//  Nom du fichier : MapViewController.m
//  Nom de l'application : iEtml
//  Descrition : Ce fichier est en fichier objetif-c et sert a effectuer des actions avec les elements de l'interface MapViewContrller dans le fichier MainStoryboard. Cette page doit servir a afficher la carte a pouvoir l'utiliser, elle sera utiliser pour affichier des points sur la carte pour y afficher des restaurants et la position de l'etml.


// Importation du fichier .h et du fichier servant à l'annimation pour le menu
#import "MapViewController.h"
#import "SWRevealViewController.h"

#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)

// Interface avec l'un des views controller du fichier mainstoryboard
@interface MapViewController ()

@end


@implementation MapViewController

@synthesize mapView;




- (void)viewDidLoad
{
    

    
    [super viewDidLoad];
    
    // Partie parmmettant de faire la localisation de l'utilsateur
    mapView.delegate = self;
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    // Condition si l'utilisatuer est d'accord de se faire localiser.
    #ifdef __IPHONE_8_0
    if(IS_OS_8_OR_LATER) {
         // Use one or the other, not both. Depending on what you put in info.plist
        [self.locationManager requestWhenInUseAuthorization];
        [self.locationManager requestAlwaysAuthorization];
    }
    #endif
    [self.locationManager startUpdatingLocation];

    // Localisation de l'utisatuer
    mapView.showsUserLocation = YES;
    [mapView setMapType:MKMapTypeStandard];
    [mapView setZoomEnabled:YES];
    [mapView setScrollEnabled:YES];
    
    
    
    // commande permmetant au menu de savoir quand rentré en action
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        // Quand le bouton du menu est actionné
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        // Quand le menu est glissé vers la doite
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
    }
   
    // Titre de la page qui viendra se placé
    self.title = NSLocalizedString (@"CARTE", @"Message");
    
    
    // Annotation ETML
    CLLocationCoordinate2D annotationCoord;
    // Cordonné du restaurant
    annotationCoord.latitude = 46.523608;
    annotationCoord.longitude = 6.615728;
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationPoint.coordinate = annotationCoord;
    // Titre de l'annotation
    annotationPoint.title = @"ETML";
    // Sous titre de l'annotation
    annotationPoint.subtitle = @"12 Rue du Sebeillion Lausanne";
    [mapView addAnnotation:annotationPoint];
    
    
    // Annotation Mistral restaurant
    CLLocationCoordinate2D annotationmistralCoord = CLLocationCoordinate2DMake(46.522722, 6.618550);
    MKPointAnnotation *annotationmistralPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmistralPoint.coordinate = annotationmistralCoord;
    // Titre de l'annotation
    annotationmistralPoint.title = @"Restaurant le Mistral";
    // Sous titre de l'annotation
    annotationmistralPoint.subtitle = @"Avenue de Sévelin 46 Lausanne";
    [mapView addAnnotation:annotationmistralPoint];
    
    
    // Annotation Maupas kebab
    CLLocationCoordinate2D annotationmaupasCoord = CLLocationCoordinate2DMake(46.525163, 6.625087);
    MKPointAnnotation *annotationmaupasPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmaupasPoint.coordinate = annotationmaupasCoord;
    // Titre de l'annotation
    annotationmaupasPoint.title = @"Maupas Kebab";
    // Sous titre de l'annotation
    annotationmaupasPoint.subtitle = @"Avenue de France 2 Lausanne";
    [mapView addAnnotation:annotationmaupasPoint];
    
    
    // Annotation Sayonara
    CLLocationCoordinate2D annotationsayonaraCoord = CLLocationCoordinate2DMake(46.525163, 6.625087);
    MKPointAnnotation *annotationsayonaraPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationsayonaraPoint.coordinate = annotationsayonaraCoord;
    // Titre de l'annotation
    annotationsayonaraPoint.title = @"Café-Restaurant le Sayonara";
    // Sous titre de l'annotation
    annotationsayonaraPoint.subtitle = @"Avenue Recordon 2 Lausanne";
    [mapView addAnnotation:annotationsayonaraPoint];
    
    
    // Annotation Macdo
    CLLocationCoordinate2D annotationmacdoCoord = CLLocationCoordinate2DMake(46.522274, 6.625992);
    MKPointAnnotation *annotationmacdoPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmacdoPoint.coordinate = annotationmacdoCoord;
    // Titre de l'annotation
    annotationmacdoPoint.title = @"MacDonald";
    // Sous titre de l'annotation
    annotationmacdoPoint.subtitle = @"Rue de Genève 35 Lausanne";
    [mapView addAnnotation:annotationmacdoPoint];
    
    
    // Annotation Holycow
    CLLocationCoordinate2D annotationholycowCoord = CLLocationCoordinate2DMake(46.522746, 6.628093);
    MKPointAnnotation *annotationholycowPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationholycowPoint.coordinate = annotationholycowCoord;
    // Titre de l'annotation
    annotationholycowPoint.title = @"Holy Cow";
    // Sous titre de l'annotation
    annotationholycowPoint.subtitle = @"Rue des Terreaux 10 Lausanne";
    [mapView addAnnotation:annotationholycowPoint];
    
    
    // Annotation Burger King
    CLLocationCoordinate2D annotationburgerkingCoord = CLLocationCoordinate2DMake(46.521715, 6.630337);
    MKPointAnnotation *annotationburgerkingPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationburgerkingPoint.coordinate = annotationburgerkingCoord;
    // Titre de l'annotation
    annotationburgerkingPoint.title = @"Burger King";
    // Sous titre de l'annotation
    annotationburgerkingPoint.subtitle = @"Grand-Pont 10 Lausanne";
    [mapView addAnnotation:annotationburgerkingPoint];
    
    
    // Annotation Boulangerie M. Marquet
    CLLocationCoordinate2D annotationmarquetCoord = CLLocationCoordinate2DMake(46.525967, 6.612808);
    MKPointAnnotation *annotationmarquetPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmarquetPoint.coordinate = annotationmarquetCoord;
    // Titre de l'annotation
    annotationmarquetPoint.title = @"Boulangerie M. Marquet";
    // Sous titre de l'annotation
    annotationmarquetPoint.subtitle = @"Rue Couchirad 15 Lausanne";
    [mapView addAnnotation:annotationmarquetPoint];
    
    
    // Annotation Mon peit Boulanger Chéri
    CLLocationCoordinate2D annotationcheriCoord = CLLocationCoordinate2DMake(46.523750, 6.627959);
    MKPointAnnotation *annotationcheriPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationcheriPoint.coordinate = annotationcheriCoord;
    // Titre de l'annotation
    annotationcheriPoint.title = @"Mon Petit Boulanger Chéri";
    // Sous titre de l'annotation
    annotationcheriPoint.subtitle = @"Rue de l'Ale 42 Lausanne";
    [mapView addAnnotation:annotationcheriPoint];
    
    
    // Annotation Polli - Petit-Chêne
    CLLocationCoordinate2D annotationpolliCoord = CLLocationCoordinate2DMake(46.518602, 6.630800);
    MKPointAnnotation *annotationpolliPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationpolliPoint.coordinate = annotationpolliCoord;
    // Titre de l'annotation
    annotationpolliPoint.title = @"Polli - Petit-Chêne";
    // Sous titre de l'annotation
    annotationpolliPoint.subtitle = @"Rue du Petit-Chêne 1";
    [mapView addAnnotation:annotationpolliPoint];
    
    
    // Annotation Confeserie L. Buet
    CLLocationCoordinate2D annotationbuetCoord = CLLocationCoordinate2DMake(46.522445, 6.631130);
    MKPointAnnotation *annotationbuetPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationbuetPoint.coordinate = annotationbuetCoord;
    // Titre de l'annotation
    annotationbuetPoint.title = @"Confiserie L. Buet";
    // Sous titre de l'annotation
    annotationbuetPoint.subtitle = @"Rue Haldimand 11";
    [mapView addAnnotation:annotationbuetPoint];
    
    
    // Annotation Sushi express Ekaï
    CLLocationCoordinate2D annotationsushiCoord = CLLocationCoordinate2DMake(46.521577, 6.630543);
    MKPointAnnotation *annotationsushiPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationsushiPoint.coordinate = annotationsushiCoord;
    // Titre de l'annotation
    annotationsushiPoint.title = @"Sushi express Ekaï";
    // Sous titre de l'annotation
    annotationsushiPoint.subtitle = @"Rue du Grand-Pont 8 Lausanne";
    [mapView addAnnotation:annotationsushiPoint];
    
    
    // Annotation Migros
    CLLocationCoordinate2D annotationmigrosCoord = CLLocationCoordinate2DMake(46.521605, 6.616116);
    MKPointAnnotation *annotationmigrosPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmigrosPoint.coordinate = annotationmigrosCoord;
    // Titre de l'annotation
    annotationmigrosPoint.title = @"Migros";
    // Sous titre de l'annotation
    annotationmigrosPoint.subtitle = @"Avenue de Sévelin 2 Lausanne";
    [mapView addAnnotation:annotationmigrosPoint];
    
    
    // Annotation coop
    CLLocationCoordinate2D annotationcoopCoord = CLLocationCoordinate2DMake(46.526758, 6.612687);
    MKPointAnnotation *annotationcoopPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationcoopPoint.coordinate = annotationcoopCoord;
    // Titre de l'annotation
    annotationcoopPoint.title = @"Coop";
    // Sous titre de l'annotation
    annotationcoopPoint.subtitle = @"Avenue de Morges 60 Lausanne";
    [mapView addAnnotation:annotationcoopPoint];
    
    
    // Annotation migros 2
    CLLocationCoordinate2D annotationmigros2Coord = CLLocationCoordinate2DMake(46.522750, 6.627091);
    MKPointAnnotation *annotationmigros2Point = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmigros2Point.coordinate = annotationmigros2Coord;
    // Titre de l'annotation
    annotationmigros2Point.title = @"Migros";
    // Sous titre de l'annotation
    annotationmigros2Point.subtitle = @"Rue des Terreaux 23 Lausanne";
    [mapView addAnnotation:annotationmigros2Point];
    
    
    // Annotation Aldi
    CLLocationCoordinate2D annotationaldiCoord = CLLocationCoordinate2DMake(46.526805, 6.603592);
    MKPointAnnotation *annotationaldiPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationaldiPoint.coordinate = annotationaldiCoord;
    // Titre de l'annotation
    annotationaldiPoint.title = @"Aldi";
    // Sous titre de l'annotation
    annotationaldiPoint.subtitle = @"Avenue du Chablais 3B Lausanne";
    [mapView addAnnotation:annotationaldiPoint];
    
    
    // Annotation Denner
    CLLocationCoordinate2D annotationdennerCoord = CLLocationCoordinate2DMake(46.515955, 6.626587);
    MKPointAnnotation *annotationdennerPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationdennerPoint.coordinate = annotationdennerCoord;
    // Titre de l'annotation
    annotationdennerPoint.title = @"Denner";
    // Sous titre de l'annotation
    annotationdennerPoint.subtitle = @"Bouevard de Grancy 37 Lausanne";
    [mapView addAnnotation:annotationdennerPoint];
    
    
    // Annotation Lidl
    CLLocationCoordinate2D annotationlidlCoord = CLLocationCoordinate2DMake(46.532395, 6.587959);
    MKPointAnnotation *annotationlidlPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationlidlPoint.coordinate = annotationlidlCoord;
    // Titre de l'annotation
    annotationlidlPoint.title = @"Lidl";
    // Sous titre de l'annotation
    annotationlidlPoint.subtitle = @"Rue du Caudray 6 Renens";
    [mapView addAnnotation:annotationlidlPoint];
    
    
    // Annotation Bubble Café
    CLLocationCoordinate2D annotationbubbleCoord = CLLocationCoordinate2DMake(46.521779, 6.629486);
    MKPointAnnotation *annotationbubblePoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationbubblePoint.coordinate = annotationbubbleCoord;
    // Titre de l'annotation
    annotationbubblePoint.title = @"Bubble Café";
    // Sous titre de l'annotation
    annotationbubblePoint.subtitle = @"Route de Bel-Air 1 Lausanne";
    [mapView addAnnotation:annotationbubblePoint];
    
    
    // Annotation Bar à café le Sayonara
    CLLocationCoordinate2D annotationsayonaracafeCoord = CLLocationCoordinate2DMake(46.524955, 6.616777);
    MKPointAnnotation *annotationsayonaracafePoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationsayonaracafePoint.coordinate = annotationsayonaracafeCoord;
    // Titre de l'annotation
    annotationsayonaracafePoint.title = @"Bar à café le Sayonara";
    // Sous titre de l'annotation
    annotationsayonaracafePoint.subtitle = @"Avenue Recordon 2 Lausanne";
    [mapView addAnnotation:annotationsayonaracafePoint];
    
    
    // Annotation Aux Bonnes Choses Metropole 2000
    CLLocationCoordinate2D annotationbonneschosesCoord = CLLocationCoordinate2DMake(46.522797, 6.627663);
    MKPointAnnotation *annotationbonneschosesPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationbonneschosesPoint.coordinate = annotationbonneschosesCoord;
    // Titre de l'annotation
    annotationbonneschosesPoint.title = @"Aux bonnes choses, Métropole 2000";
    // Sous titre de l'annotation
    annotationbonneschosesPoint.subtitle = @"Rue des Terreaux Lausanne";
    [mapView addAnnotation:annotationbonneschosesPoint];
    
    
    // Annotation Café de Montelly François Croteau
    CLLocationCoordinate2D annotationmontellyCoord = CLLocationCoordinate2DMake(46.520782, 6.612779);
    MKPointAnnotation *annotationmontellyPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmontellyPoint.coordinate = annotationmontellyCoord;
    // Titre de l'annotation
    annotationmontellyPoint.title = @"Café de MOntelly François Croteau";
    // Sous titre de l'annotation
    annotationmontellyPoint.subtitle = @"Chemin de Montelly 1 Lausanne";
    [mapView addAnnotation:annotationmontellyPoint];
    
    
    // Annotation Bar à café le 421
    CLLocationCoordinate2D annotation421Coord = CLLocationCoordinate2DMake(46.524592, 6.614454);
    MKPointAnnotation *annotation421Point = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotation421Point.coordinate = annotation421Coord;
    // Titre de l'annotation
    annotation421Point.title = @"Bar à café le 421";
    // Sous titre de l'annotation
    annotation421Point.subtitle = @"Rue de Genève 77 Lausanne";
    [mapView addAnnotation:annotation421Point];
    
    
    // Annotation Café Romand
    CLLocationCoordinate2D annotationromandCoord = CLLocationCoordinate2DMake(46.519904, 6.632585);
    MKPointAnnotation *annotationromandPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationromandPoint.coordinate = annotationromandCoord;
    // Titre de l'annotation
    annotationromandPoint.title = @"Café Romand";
    // Sous titre de l'annotation
    annotationromandPoint.subtitle = @"Place Saint-François 2 Lausanne";
    [mapView addAnnotation:annotationromandPoint];
    
    
    // Annotation Brasserie Montbenon
    CLLocationCoordinate2D annotationmontbenonCoord = CLLocationCoordinate2DMake(46.520368, 6.625025);
    MKPointAnnotation *annotationmontbenonPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationmontbenonPoint.coordinate = annotationmontbenonCoord;
    // Titre de l'annotation
    annotationmontbenonPoint.title = @"Brasserie de Montbenon";
    // Sous titre de l'annotation
    annotationmontbenonPoint.subtitle = @"Allée Ernest-Ansermet 3";
    [mapView addAnnotation:annotationmontbenonPoint];
    
    
    // Annotation Café Théàatre le Pois Chiche
    CLLocationCoordinate2D annotationtheatreCoord = CLLocationCoordinate2DMake(46.526112, 6.614420);
    MKPointAnnotation *annotationtheatrePoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationtheatrePoint.coordinate = annotationtheatreCoord;
    // Titre de l'annotation
    annotationtheatrePoint.title = @"Café théâtre le Pois Chiche";
    // Sous titre de l'annotation
    annotationtheatrePoint.subtitle = @"Avenue de Morges 119 Lausanne";
    [mapView addAnnotation:annotationtheatrePoint];
    
    
    // Annotation Ozimi
    CLLocationCoordinate2D annotationozimiCoord = CLLocationCoordinate2DMake(46.519848, 6.635095);
    MKPointAnnotation *annotationozimiPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationozimiPoint.coordinate = annotationozimiCoord;
    // Titre de l'annotation
    annotationozimiPoint.title = @"Ozimi";
    // Sous titre de l'annotation
    annotationozimiPoint.subtitle = @"Rue de Bourg 16-18 Lausanne";
    [mapView addAnnotation:annotationozimiPoint];
    
    
    // Annotation Cafe de l'hôtel de ville
    CLLocationCoordinate2D annotationhotelCoord = CLLocationCoordinate2DMake(46.522181, 6.632270);
    MKPointAnnotation *annotationhotelPoint = [[MKPointAnnotation alloc] init];
    // chargemnt des cordonné
    annotationhotelPoint.coordinate = annotationhotelCoord;
    // Titre de l'annotation
    annotationhotelPoint.title = @"Café de l'hôtel de ville";
    // Sous titre de l'annotation
    annotationhotelPoint.subtitle = @"Rue de la Palud 10 Lausanne";
    [mapView addAnnotation:annotationhotelPoint];

    
}

// Préparation de l'affichage de la localisation de l'utilisateur
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    // Temps d'attend pour lancé la carte
    sleep(3);
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager startUpdatingLocation];
    NSLog(@"%@", [self deviceLocation]);
    
    //zoome sur la position de l'utilisateur
    MKCoordinateRegion region = { { 0.0, 0.0 }, { 0.0, 0.0 } };
    region.center.latitude = self.locationManager.location.coordinate.latitude;
    region.center.longitude = self.locationManager.location.coordinate.longitude;
    region.span.longitudeDelta = 0.005f;
    region.span.longitudeDelta = 0.005f;
    [mapView setRegion:region animated:YES];
    
}

// Affichage de la localisation de l'utilisateur sur la carte ainsi rendu de quelque inforamtion en ca de non foncitionnement
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    
}
// Information sur la latitude et logitude
- (NSString *)deviceLocation {
    return [NSString stringWithFormat:@"latitude: %f longitude: %f", self.locationManager.location.coordinate.latitude, self.locationManager.location.coordinate.longitude];
}
- (NSString *)deviceLat {
    return [NSString stringWithFormat:@"%f", self.locationManager.location.coordinate.latitude];
}
- (NSString *)deviceLon {
    return [NSString stringWithFormat:@"%f", self.locationManager.location.coordinate.longitude];
}
- (NSString *)deviceAlt {
    return [NSString stringWithFormat:@"%f", self.locationManager.location.altitude];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
