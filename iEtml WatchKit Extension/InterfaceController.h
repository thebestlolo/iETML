//
//  InterfaceController.h
//  iEtml WatchKit Extension
//
//  Created by Informatique on 08.06.15.
//  Copyright (c) 2015 ETML. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

// Carte de l'apple watch
@property (weak, nonatomic) IBOutlet WKInterfaceMap *mapView;
@end
