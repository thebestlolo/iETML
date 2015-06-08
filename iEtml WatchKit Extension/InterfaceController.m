//
//  InterfaceController.m
//  iEtml WatchKit Extension
//
//  Created by Informatique on 08.06.15.
//  Copyright (c) 2015 ETML. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Determine a location to display - ETML
    CLLocationCoordinate2D mapLocation = CLLocationCoordinate2DMake(46.523608, 6.615728);
    // Disatance d'affichage de la carte
    MKCoordinateSpan coordinateSpan = MKCoordinateSpanMake(0.01, 0.01);
    
    // Other colors include red and green pins
    [self.mapView addAnnotation:mapLocation withPinColor: WKInterfaceMapPinColorPurple];
    
    // Affichage de la disance d'affichage et des coordonnée
    [self.mapView setRegion:(MKCoordinateRegionMake(mapLocation, coordinateSpan))];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



