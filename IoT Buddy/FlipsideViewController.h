//
//  FlipsideViewController.h
//  IoT Buddy
//
//  Created by Joel Wehr on 7/13/13.
//  Copyright (c) 2013 Joel Wehr. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate, UITextFieldDelegate> delegate;

@property (nonatomic, weak) IBOutlet UITextField *urlTextField;
@property (nonatomic, weak) IBOutlet UITextField *buttonOneNameTextField;
@property (nonatomic, weak) IBOutlet UITextField *buttonOneValueTextField;
@property (nonatomic, weak) IBOutlet UITextField *buttonTwoNameTextField;
@property (nonatomic, weak) IBOutlet UITextField *buttonTwoValueTextField;
@property (nonatomic, weak) IBOutlet UITextField *switchOneNameTextField;
@property (nonatomic, weak) IBOutlet UITextField *switchOneOnValueTextField;
@property (nonatomic, weak) IBOutlet UITextField *switchOneOffValueTextField;
@property (nonatomic, weak) IBOutlet UITextField *switchTwoNameTextField;
@property (nonatomic, weak) IBOutlet UITextField *switchTwoOnValueTextField;
@property (nonatomic, weak) IBOutlet UITextField *switchTwoOffValueTextField;

- (IBAction)done:(id)sender;

- (BOOL)textFieldShouldReturn:(UITextField *)textField;

- (void)saveUserInfo;
- (void)loadUserEnteredInfo;

@end
