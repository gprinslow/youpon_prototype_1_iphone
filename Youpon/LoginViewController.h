//
//  LoginViewController.h
//  Youpon
//
//  Created by Garrison on 5/30/11.
//  Copyright 2011 Garrison Prinslow. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController {
    IBOutlet UILabel *lblTitle;
    IBOutlet UILabel *lblUsername;
    IBOutlet UILabel *lblPassword;
    IBOutlet UILabel *lblPIN;
    IBOutlet UITextField *txtfUsername;
    IBOutlet UITextField *txtfPassword;
    IBOutlet UITextField *txtfPIN;
    IBOutlet UIButton *btnLogin;
}

- (IBAction)doLoginAction:(id)sender;




@end
