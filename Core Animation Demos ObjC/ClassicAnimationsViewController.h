//
//  ClassicAnimationsViewController.h
//  Core Animation Demos ObjC
//
//  Created by Andrei Ionescu on 03/09/2018.
//  Copyright © 2018 Andrei Ionescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassicAnimationsViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(id) NSArray *buttons;
- (IBAction)changeCornerRadius:(id)sender;
- (IBAction)changeBorder:(id)sender;
- (IBAction)changeOpacity:(id)sender;
- (IBAction)changeColor:(id)sender;
- (IBAction)changeBounds:(id)sender;
- (IBAction)changePosition:(id)sender;

@end
