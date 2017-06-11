#import "RedditOpenerHandler.h"

@implementation RedditOpenerHandler

- (instancetype)init {
	self = [super init];

	if (self) {
		self.name = @"RedditOpener";
		self.identifier = @"com.fiiiiilth.redditopenerhandler";
	}

	return self;
}

- (id)openURL:(NSURL *)url sender:(NSString *)sender {

	if (([url.host isEqualToString:@"reddit.com"]) || [url.host hasSuffix:@".reddit.com"]) {
				return @[
						[NSURL URLWithString:[NSString stringWithFormat:@"reddit://%@", url.path]]];
        }
    return nil;
}

@end
