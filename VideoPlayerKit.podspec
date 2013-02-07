Pod::Spec.new do |s|
  s.name     = 'VideoPlayerKit'
  s.version  = '1.0.0'
  s.platform = :ios, '5.0'
  s.license  = { :type => 'BSD'}
  s.summary  = 'An iOS video player'
  s.homepage = 'https://github.com/SamuraiZack/VideoPlayerKit'
  s.author   = { 'Aung Thar' => 'samuraizack@gmail.com',
                 'Grant Bartone'  => 'gbartone@ign.com',
		 'Alex Ivlev'  => 'aivlev@ign.com',
		 'Brad Taylor'  => 'brtaylor@ign.com' }

  s.source   = { :git => 'https://github.com/SamuraiZack/VideoPlayerKit.git', :tag => '1.0.0' }

  s.description  = 'We know how hard making a custom video player is. That is why ' \
		   'we created VideoPlayerKit. Using VideoPlayerKit is easy and ' \
		   'all controls are already set up to make everyone life easier.'
  s.source_files = 'Code/*.{h,m}'
  s.resources    = 'Assets/*.png'
  s.frameworks    = 'AudioToolbox', 'CoreMedia', 'AVFoundation', 'MediaPlayer'
  s.requires_arc = true
end