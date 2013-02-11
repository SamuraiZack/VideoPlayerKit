VideoPlayerKit
==============

We know how hard making a custom video player is. That is why we created VideoPlayerKit. Using VideoPlayerKit is easy to use. All controls, progress bar, and airplay are already set up to make everyone life easier.

#Installation Instruction:

##In View Controller that will contain the video player:

###Import VideoPlayerKit.h
    import "VideoPlayerKit.h"

###Initializing video player
    [VideoPlayerKit initWithContainingViewController:optionalTopView:hideTopViewWithControls:];
Make sure that the view controller that contains the video player is passed into the first parameter. This is used when a modal fullscreen occurs. The optional top view is a view that will be at the top of the video player. This can be use to put any additional buttons or labels. The third parameter is a boolean that will be use to check if the top view should hide with the video player controls. If this is set to NO, it is still possible to hide the top view only on certain times given the situation using the two notifications: kVideoPlayerWillHideControlsNotification and kVideoPlayerWillShowControlsNotification.

###Top View Edge Inset
    setControlsEdgeInsets
If a top view is set, use this to offset the controls so it accounts for the top view. Usually you'll only want to change the edge inset's top parameter but the option is left open to change it entirely.

###Playing video on player
    playVideoWithTitle:URL:videoID:isStreaming:playInFullScreen:
The method will automatically start playing the video that is given in the url. The title parameter is used for the label that will appear near the bottom of the video player. The videoID and isStreaming parameters are used mainly for analytics tracking. The last parameter, playInFullScreen, is a boolean that when set to YES, the video will play automatically in fullscreen.

##VideoPlayerDelegate

###Event tracking
    trackEvent:videoID:title:
This method is used for analytic event tracking. The first parameter will be one of three events: kTrackEventVideoStart, kTrackEventVideoLiveStart, kTrackEventVideoComplete. The videoID and title will be the same ones that was passed into the method playVideoWithTitle:URL:videoID:isStreaming:playInFullScreen:

###Fullscreen toggle switch
    BOOL fullScreenToggled
This property will be set to YES whenever the video player is fullscreen modally

##Optional Methods

###Launch video player in fullscreen
    launchFullScreen

###Minimize video player from fullscreen
    minimizeVideo

###Play and pause video
    playPauseHandler
Plays the video if paused. Pauses the video if playing.

##Optional properties

###Check if fullscreen mode is toggled
    fullScreenModeToggled

###Set the end time to static or dynamic
    showStaticEndTime
Set this boolean to yes if the end time should just be a static label. Default setting is NO which will make the end time decrease as the video plays.

###Get current video info
    currentVideoInfo
A dictionary which uses these keys: @"title" for title of video, @"videoID" for id of video, @"isStreaming" to check if it is a live video.

###Check if video is playing
    isPlaying

###Allow fullscreen view to be in portrait
Default fullscreen is landscape. For portrait fullscreen, mark this property to YES.