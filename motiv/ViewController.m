//
//  ViewController.m
//  motiv
//
//  Created by abraham villaroman on 1/12/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import "ViewController.h"
#import "videoModel.h"
#import "Video.h"
#import "VideoDetailVC.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //creates an instance of a video model and initializes it
    videoModel *VM = [[videoModel alloc]init];
    
    // initializes the videos object
    self.videos = [[NSMutableArray alloc] init];
    
    //fills the array of videos from VM into videos.
    [self.videos addObjectsFromArray:[VM getVideos]];
    
    //makes takes the information given from the view and implements it into the table view
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    self.tableView.separatorColor = [UIColor clearColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//since we replacing the dataSource and Delegate of our tableView with information thats in our current view, we need to implement the methods where the Delegate and dataSource protocols had


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        //get width of the screen to calculate the height of the row
    return (self.view.frame.size.width / 320) * 180;
}



- (IBAction)MOTIVButton:(id)sender {
    //creates an instance of a video model and initializes it
    videoModel *VM = [[videoModel alloc]init];
    
    // initializes the videos object
    self.videos = [[NSMutableArray alloc] initWithArray:[VM getVideos]];
    
    //gets a random index
    NSUInteger randomIndex = arc4random() % [self.videos count];
    
    // gets a random videos from _videos and puts it in _selectedVideo
    _selectedVideo = self.videos[randomIndex];
    
    //checks if its a iphone 4s
    CGSize iOSDeviceScreenSize = [[UIScreen mainScreen] bounds].size;
    
    
    if(iOSDeviceScreenSize.height > 480){
        //call the segue
        [self performSegueWithIdentifier:@"goToDetail" sender:self];
    }
    else{
        
        [self performSegueWithIdentifier:@"4detail" sender:self];
    }

    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    //creates the cell to return the cell with the reusableIdentifier "basicCell"
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
    
    //checks to see if the cell is initialized, if not, intialize it
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BasicCell"];
    
    }
    
    
    //creates an instance of a video model and initializes it
    videoModel *VM = [[videoModel alloc]init];
    
    // initializes the videos object
    self.videos = [[NSMutableArray alloc] init];
    
    //fills the array of videos from VM into videos.
    [self.videos addObjectsFromArray:[VM getVideos]];
    
    
    
    //casting: initializes the video object AVO,then make AVO a video object on the current index of where indexPath.row is, which is dependent on the number of video objects in count, and an NSString called VideoTitle record's the current AVO's video title and ID
    
    Video *AVO = [[Video alloc] init];
    AVO = self.videos[indexPath.row];
    NSString *VideoTitle = AVO.videoTitle;
    NSString *vID = AVO.videoID ;
    NSString *VideoTime = AVO.videoTime;
    
    //gets the labels for the cell
    UILabel *titleLabel = [cell viewWithTag:2];
    UILabel *timeLabel = [cell viewWithTag:3];
    [titleLabel setText:VideoTitle];
    [timeLabel setText:VideoTime];
    
    
    //construct the video thumbnail URL
    NSString *videoTNImageString = [NSString stringWithFormat:@"https://i.ytimg.com/vi/%@/mqdefault.jpg",vID];
    
    //create a NSUrl object
    NSURL *videoTNURL = [[NSURL alloc] initWithString:videoTNImageString];
    
    //create an NSURLRequestObject
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:videoTNURL];
    
    
    //create a datatask and pass in the request
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            //get reference to imageview element of the cell
            UIImageView *imageView = [cell viewWithTag:1];
            
            //create an image object from the data and assign it to the imageview
            UIImage *IMG = [UIImage imageWithData:data];
            imageView.image = IMG;
        });
        
        
    }];
    
    [dataTask resume];
    //returns the cell
    return cell;
    
}

//modifies the amount of rows in our table view according to the amount of bojects in our videos array
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_videos count];
    
}


//the event in which a table view cell is selected
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //creates an instance of a video model and initializes it
    videoModel *VM = [[videoModel alloc]init];
    
    // initializes the videos object
    self.videos = [[NSMutableArray alloc] initWithArray:[VM getVideos]];


        //take note of which video the user selected
    _selectedVideo = self.videos[indexPath.row];
    
    // checks if its a iphone 4s
    CGSize iOSDeviceScreenSize = [[UIScreen mainScreen] bounds].size;
    
    
    if(iOSDeviceScreenSize.height > 480){
        //call the segue
        [self performSegueWithIdentifier:@"goToDetail" sender:self];
    }
    else{
        
        [self performSegueWithIdentifier:@"4detail" sender:self];
    }
    
}

// loads the information for the next view
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    // makes the the segue being called is the "go To Detail"
    if([[segue identifier] isEqualToString:@"goToDetail"]){
        
        //get reference to the destination view controller
        VideoDetailVC *vc = [[VideoDetailVC alloc] init];
        vc = [segue destinationViewController];
        
        //set the selected video properties of the destination view controller
        vc.vTitle = _selectedVideo.videoTitle;
        vc.vID = _selectedVideo.videoID;
        vc.vQuote = _selectedVideo.videoQuote;
        vc.vAuthor = _selectedVideo.quoteAuthor;
        vc.vST = _selectedVideo.startTime;
        
        
    }
    
    else if([[segue identifier] isEqualToString:@"4detail"]){
        
        //get reference to the destination view controller
        VideoDetailVC *vc = [[VideoDetailVC alloc] init];
        vc = [segue destinationViewController];
        
        //set the selected video properties of the destination view controller
        vc.vTitle = _selectedVideo.videoTitle;
        vc.vID = _selectedVideo.videoID;
        vc.vQuote = _selectedVideo.videoQuote;
        vc.vAuthor = _selectedVideo.quoteAuthor;
        vc.vST = _selectedVideo.startTime;
        
    }

}

@end
