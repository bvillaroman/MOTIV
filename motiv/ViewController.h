//
//  ViewController.h
//  motiv
//
//  Created by abraham villaroman on 1/12/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Video.h"
#import "videoModel.h"

                                            //gives us the ability to modify the methods in these protocols
@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

//creates to the table view that is linked to the story board
@property (weak, nonatomic) IBOutlet UITableView *tableView;

//creates the mutable array that stores all the videos and its information along with it
@property(strong,nonatomic) NSMutableArray *videos;

@property(strong,nonatomic) Video *selectedVideo;

//button that picks a random video when pressed
- (IBAction)MOTIVButton:(id)sender;


//methods to control the information of the tableview and segues
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;


@end

