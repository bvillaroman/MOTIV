//
//  ViewDetail4.h
//  motiv
//
//  Created by abraham villaroman on 1/22/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import "VideoDetailVC.h"

@interface ViewDetail4 : VideoDetailVC

@property (weak, nonatomic) IBOutlet UILabel *quote;
@property (weak, nonatomic) IBOutlet UILabel *Title;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *wHeight;
@property (weak, nonatomic) IBOutlet UIWebView *webs;


@property (weak, nonatomic) IBOutlet UILabel *start;
@property (weak, nonatomic) IBOutlet UILabel *Author;


- (IBAction)OG:(id)sender;
@end
