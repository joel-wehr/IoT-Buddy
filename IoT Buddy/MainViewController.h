//
//  MainViewController.h
//  IoT Buddy
//
//  Created by Joel Wehr on 7/13/13.
//  Copyright (c) 2013 Joel Wehr. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, NSURLConnectionDelegate>
{
    NSString *impURL;
    NSString *buttonOneName;
    NSString *buttonOneValue;
    NSString *buttonTwoName;
    NSString *buttonTwoValue;
    NSString *switchOneName;
    NSString *switchOneOnValue;
    NSString *switchOneOffValue;
    NSString *switchTwoName;
    NSString *switchTwoOnValue;
    NSString *switchTwoOffValue;
    
    NSURLConnection *connection;
    NSMutableData *responseData;
    NSMutableURLRequest *request;
    
}

//@property (nonatomic, retain) IBOutlet UILabel *httpResponseLabel;
@property (nonatomic, weak) IBOutlet UIButton *buttonOne;
@property (nonatomic, weak) IBOutlet UIButton *buttonTwo;
@property (nonatomic, weak) IBOutlet UILabel *switchOneLabel;
@property (nonatomic, weak) IBOutlet UILabel *switchTwoLabel;
@property (nonatomic, weak) IBOutlet UISwitch *switchOne;
@property (nonatomic, weak) IBOutlet UISwitch *switchTwo;

-(IBAction)switchOneToggled:(id)sender;
-(IBAction)switchTwoToggled:(id)sender;

- (IBAction)buttonOnePressed:(id)sender;
- (IBAction)buttonTwoPressed:(id)sender;


@end
