//
//  YouponAppDelegate.h
//  Youpon
//
//  Created by Garrison on 5/30/11.
//  Copyright 2011 Garrison Prinslow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"

@interface YouponAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    //Interface references
    UIWindow    *window;
    UITabBarController *tabBarController;
    //Login View Controller ref
    LoginViewController *loginViewController;
        
    //Core Data references
@private
    NSManagedObjectContext *managedObjectContext;
    NSManagedObjectModel *managedObjectModel;
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
}

//Tab Bar app default properties
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

//Core Data default properties
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;



//Default methods
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

//Custom methods


@end
