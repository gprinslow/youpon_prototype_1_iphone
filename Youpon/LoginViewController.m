//
//  LoginViewController.m
//  Youpon
//
//  Created by Garrison on 5/30/11.
//  Copyright 2011 Garrison Prinslow. All rights reserved.
//

#import "LoginViewController.h"


@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [lblUsername release];
    [lblPassword release];
    [lblTitle release];
    [txtfUsername release];
    [txtfPassword release];
    [lblPIN release];
    [txtfPIN release];
    [btnLogin release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [lblUsername release];
    lblUsername = nil;
    [lblPassword release];
    lblPassword = nil;
    [lblTitle release];
    lblTitle = nil;
    [txtfUsername release];
    txtfUsername = nil;
    [txtfPassword release];
    txtfPassword = nil;
    [lblPIN release];
    lblPIN = nil;
    [txtfPIN release];
    txtfPIN = nil;
    [btnLogin release];
    btnLogin = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Custom Action Methods

- (IBAction)doLoginAction:(id)sender {
    
    //Successful login - dismiss the modal Login view from TabBarViewController
    [self.parentViewController dismissModalViewControllerAnimated:YES];
}

- (IBAction)usernameTextFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
    if (txtfPIN.enabled) {        
        [txtfPIN becomeFirstResponder];
    }
    else {
        [txtfPassword becomeFirstResponder];
    }
}

- (IBAction)passwordTextFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
    [self doLoginAction:sender];
}

- (IBAction)pinTextFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
    [self doLoginAction:sender];
}

- (IBAction)backgroundTouch:(id)sender {
    [txtfUsername resignFirstResponder];
    [txtfPassword resignFirstResponder];
    [txtfPIN resignFirstResponder];
}


@end
