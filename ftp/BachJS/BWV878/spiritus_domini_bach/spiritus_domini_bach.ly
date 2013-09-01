\header {
	title = "Spiritus Domini"
	subtitle = "Das Wohltemperierte Klavier II, Fuga 9 (BWV 878)"
	composer = "Johann Sebastian Bach"
	arranger = "Arr. SATB Kris Van Bruwaene"
	mutopiacomposer = "BachJS"
	mutopiainstrument = "Voice (SATB)"
	mutopiaopus = "BWV 878"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Kris Van Bruwaene"
	maintainerEmail = "krvbr@yahoo.co.uk"
	style = "Baroque"
	source = "J.S. Bach Le Clavecin Bien Tempéré, par Adolphe F. Wouters, Schott Frères Bruxelles SF 5862"
%   (Adolphe F. Wouters 1849-05-28 - 1924-04-16)
	lastupdated = "2013-08-27"
	moreInfo = "Arrangement for choir SATB of Bach's fugue nr. 9 in E from WTC II"

 footer = "Mutopia-2013/09/01-1865"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}
\version "2.16.1"
#(set-global-staff-size 18)
%#(set-default-paper-size "a4") % commented out for Mutopia

global = { 
\time 2/1
\set Staff.timeSignatureFraction = 2/2 
\tempo Grave 2 = 48
\dynamicUp
\key e \major
}

Soprano = \relative c'' {
R1*8										% 1-4
r1 b |										% 5
cis2 e dis cis |							% 6
b1 ~ b4 a8( gis) a2 ~ |                     % 7
a2 gis( fis e) |                            % 8
dis r2 r1 |                                 % 9
R1*2 |                                      % 10
e1 fis2 a |                                 % 11
gis fis4 fis eis4 fis gis a |               % 12
b4 fis b1 a2 |                              % 13
gis1 ~ gis2. a8( b) |                       % 14
cis4 bis cis dis( bis) cis2 bis4 |          % 15
cis1 r1 |                                   % 16
b1 cis2 e |                                 % 17
dis cis b cis |                             % 18
fis,4( dis) gis2. fis8( e fis2 ~ |          % 19
fis4) e8( dis) e4 fis8( e) dis4 b' eis,2 ~ | % 20
eis4 fis2 eis4 cis'2 b ~ |                  % 21
b4 a2 gis2 fis( eis4) |                     % 22
fis1 gis4 a b2 ~ |                          % 23
b4 a gis2 fis e4( fis) |                    % 24
gis2.( a4 gis) fis e2 |                     % 25
r1. gis2 |                                  % 26
a4 cis b a gis2 ais |						% 27
b1 ~ b2. ais4 |                             % 28
b4 gis a b cis dis e2 ~ |                   % 29
e2. dis4( e) b2( ais4) |                    % 30
b2 r4 fis'4 b, gis a( b) |					% 31
cis2 b a gis |                              % 32
fis4( e') dis cis b2 ais ~ |                % 33
ais4 gis8( fisis) gis2( ~ gis2. fisis4) |   % 34
gis2 r4 b4 gis( e) fis( gis) |              % 35
a( b) cis( dis) e8( b e2 dis4 ~ |           % 36
dis) cis8( b cis2) b4 r e2 |                % 37
fis2 a gis fis |                            % 38
e2 dis cis b( ~ |                           % 39
b4 cis b a) gis2 r |                        % 40
r e' dis cis |                              % 41
b a gis8( fis gis a b4 a) |                 % 42
gis2( fis) e1\fermata                       % 43
\bar "|."
}

Alto = \relative c' {
R1*6										% 1-3
e1 fis2 a |									% 4
gis fis e r4 b |							% 5
e4( fis) gis( ais) b8( fis) b2 a4 ~ |   	% 6
a gis8( fis) gis2 cis,2.( dis8 e) |         % 7
dis2( e2. dis4) cis2 |                      % 8
<fis, \parenthesize b> b cis e |            % 9
dis2 cis b4 e2 dis4 ~ |                     % 10
dis4 cis2 b8( ais b4) fis'2 e8( dis) |      % 11
e2.( dis4) cis1 |                           % 12
b4 cis dis e fis cis fis2 ~ |               % 13
fis e dis1 |                                % 14
cis4 dis e fis gis2 fis |                   % 15
e1 fis2 a |                                 % 16
gis fis e4 cis gis'2 ~ |                    % 17
gis4 fis8( eis) fis2. e8( dis) e4 fis8( e) |% 18
dis2. <gis, \parenthesize gis'>4 a2. ais4 | % 19
b2. ais4 b2 d |                             % 20
cis1. gis'2 |                               % 21
cis, b a gis |                              % 22
a4( b) cis1 dis4 eis |                      % 23
fis2.( e4) dis2 cis ~ |                     % 24
cis4 d8( cis) bis2 cis4 dis <gis, \parenthesize gis'>2 | % 25
dis'4 e8( dis) cis4 a' bis, cis2( b4) |     % 26
cis2 dis e4 gis fis e |	     				% 27
dis a' gis fis e( gis) fis e |              % 28
dis( e) fis gis a2.( gis4) |                % 29
fis4( e) fis2 e1 |                          % 30
fis2 a gis fis |							% 31
e4 a2 gis4 fis d' cis b |                   % 32
a4 fisis gis ais gis( fis) e2 |             % 33
dis2 cisis dis1 |                           % 34
b2 b cis e |                                % 35
dis cis b b' |                              % 36
gis4 e gis ais b8( fis) b2 a4 ~ |           % 37
a4 dis,( e fis gis) cis( a) b |             % 38
gis4 a( fis gis e) fis( dis) e( ~ |         % 39
e dis8 cis) dis2 r4 e8( fis gis4) ais |     % 40
b8( fis) b2 a4 ~ a8( dis, gis2) fis4 ~ |    % 41
fis8( b, e2) dis4 e r r e |                 % 42
e2 dis b1\fermata                           % 43
\bar "|." 
}

Tenor = \relative c' {
\clef "G_8"
R1*2									% 1
r1 b |                                  % 2
cis2 e dis cis |                        % 3
b2. b4 a b cis dis |                    % 4
e8( b) e2 d4 e2 gis,4( fis) |           % 5
gis2 e2 fis1 ~ |                        % 6
fis4 <b, \parenthesize b'> e2. cis4 fis2 ~ | % 7
fis4 e8( fis gis4 a b8 fis) b2( ais4) | % 8
b2 r2 e,1 |                             % 9
fis2 a gis fis |                        % 10
e4 a2 gis4 fis e8( dis) e4 fis |        % 11
gis a b8( fis) a4 gis2 fis ~ |          % 12
fis e dis4 eis fis2 |                   % 13
cis4 dis e fis gis dis gis2 ~ |         % 14
gis2 fis2. e4 dis2 |                    % 15
cis4 gis' cis2. b8( ais) b2 ~ |         % 16
b4 a8( gis a4) b8( a gis2.) gis4 |      % 17
a2. ais4 b2. ais4 |                     % 18
b4. a8( gis fis e dis) e2 r |           % 19
dis1 gis2 b |                           % 20
a gis2. fis2 eis4 |                     % 21
fis2 d cis1 ~ |                         % 22
cis2. dis4( eis cis) gis'2 |            % 23
fis gis4 cis,2 bis4( cis) dis |         % 24
cis fis8( e dis1) e4 fis |              % 25
gis2. fis4 e2 dis |                     % 26
e2 r r1 |								% 27
r2 b'2 cis4 e dis cis |                 % 28
b d cis b a2 b4 b |                     % 29
b2. a4 gis2 gis4 cis4 |                 % 30
fis,4 dis e fis gis( b) cis( dis) |		% 31
gis, e fis gis a( b) cis2 ~ |           % 32
cis4 cis b ais( b) dis cis2 |           % 33
b2. ais8( gis ais4) b cis2 |            % 34
dis2 r2 e,1 |                           % 35
fis2 a gis fis |                        % 36
e r r r4 e |                            % 37
dis4( b' cis dis) e8( b) e2 dis4 ~ |    % 38
dis8( gis, cis2) b4 ~ b8( e, a2) gis4 | % 39
fis1 e4( gis cis) fis, ~ |              % 40
fis fis gis a b dis, e fis |            % 41
gis2 a b4 r r cis |                     % 42
b2. a4 gis1\fermata                     % 43
\bar "|." 
}

Bass = \relative c {
\clef bass
e1 fis2 a |						    	% 1
gis fis e4( dis8[ cis] dis4) b |        % 2
e fis gis ais b8( fis) b2 a4 ~ |        % 3
a4 gis8( fis gis1 fis2) |               % 4
gis2( a4) b8( a gis4 fis e dis) |       % 5
cis1 b2 fis |                           % 6
gis2. <e \parenthesize e'>4 a2. fis4 |  % 7
b\breve |                               % 8
b2 r2 r1 |                              % 9
r1 b1 |                                 % 10
cis2 e dis cis |                        % 11
b1 b2 a |                               % 12
gis2 gis fis4 gis a b |                 % 13
cis gis cis1( b2) |                     % 14
a1( gis) |                              % 15
cis2 r4 cis d2. dis4 |                  % 16
e2.( dis4) e2 cis |                     % 17
fis2 e dis cis |                        % 18
b2 b cis2 e |                           % 19
dis cis b4 gis2 a8( b) |                % 20
cis2 b a gis |                          % 21
fis b cis <cis, \parenthesize cis'> |   % 22
fis4( gis) a( fis) cis'2 b4 cis |       % 23
d( cis bis cis) fis,( gis) a2 |         % 24
gis1( ais4 bis) cis2( ~ |               % 25
cis4 b) a2 gis1 ~ |                     % 26
gis2 fis <e \parenthesize e'>4( <cis \parenthesize cis'>) fis2 | % 27
b r r fis' |							% 28
gis4 b a gis fis2 e |					% 29
b'2 b,2 cis4 e dis( cis) |				% 30
dis4 b cis dis e2. dis4 |				% 31
e4 cis dis eis fis2. eis4 |	            % 32
fis4 dis eis fisis gis2.( fisis4) |		% 33
gis4 gis eis2 dis <dis, \parenthesize dis'> | % 34
gis2 r2 r1 |                            % 35
r1 b1 |                                 % 36
cis2 e dis cis |                        % 37
b4 r r2 r1 |                            % 38
R1*2 |                                  % 39
b1 cis2 e |                             % 40
dis2 cis b a |                          % 41
gis fis e4( fis) gis a |                % 42
b1 <e, \parenthesize e'>\fermata |      % 43
\bar "|."
}

Lyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum, 
Al -- le -- lu -- ia,
et hoc quod con -- ti -- net o -- mni -- a sci -- en -- ti -- am ha -- bet vo -- cis.
}

sopLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni. Et hoc quod con -- ti -- net o -- mni -- a, 
sci -- en -- ti -- am ha -- bet vo -- cis.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum, 
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, 
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, 
sci -- en -- ti -- am ha -- bet vo -- cis, 
sci -- en -- ti -- am ha -- bet vo -- cis,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni, 
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

altLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum.
Et hoc quod con -- ti -- net o -- mni -- a, 
et hoc quod con -- ti -- net o -- mni -- a, sci -- en -- ti -- am 
ha -- bet vo -- cis, ha -- bet vo -- cis, 
al -- le -- lu -- ia, al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, con -- ti -- net o -- mni -- a, 
sci -- en -- ti -- am ha -- bet vo -- cis.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, 
al -- le -- lu -- ia, al -- le -- lu -- ia,
al -- le -- lu -- ia.
}

tenLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, sci -- en -- ti -- am ha -- bet vo -- cis,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, sci -- en -- ti -- am ha -- bet vo -- cis,
al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

basLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni, al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, 
Et hoc quod con -- ti -- net o -- mni -- a sci -- en -- ti -- am ha -- bet vo -- cis.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum
et hoc quod con -- ti -- net o -- mni -- a sci -- en -- ti -- am ha -- bet vo -- cis.
Al -- le -- lu -- ia. 
Spi -- ri -- tus Do -- mi -- ni, 
Spi -- ri -- tus Do -- mi -- ni, 
al -- le -- lu -- ia, al -- le -- lu -- ia.
}

\score {
  <<
		\new ChoirStaff {
			<<
			\new Staff = sopStaff { 
			    \set Staff.instrumentName = "Sop." 
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = sopVoice { 
				\global 
				\Soprano
			    } 
			}
                        \new Lyrics = "sopmainlyrics" \lyricsto sopVoice \sopLyrics
			
			\new Staff = altStaff { 
			    \set Staff.instrumentName = "Alt"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altVoice { 
				\global
				\Alto
			    } 
			}
			\new Lyrics = "altmainlyrics" \lyricsto altVoice \altLyrics
		
			\new Staff = tenorStaff { 
			    \set Staff.instrumentName = "Ten."
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = tenVoice { 
				\global 
				\Tenor
			    } 
			}
			\new Lyrics = "tenmainlyrics" \lyricsto tenVoice \tenLyrics
		
			\new Staff = bassStaff { 
			    \set Staff.instrumentName = "Bas"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = basVoice { 
				\global 
				\Bass
			    } 
			}
			\new Lyrics = "basmainlyrics" \lyricsto basVoice \basLyrics
			>>
		}
  >>
  \layout {
%     \context {
       % a little smaller so lyrics
       % can be closer to the staff
%       \Staff
%       \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
%     }
  }
  \midi {
      \context {
      \Score
          tempoWholesPerMinute = #(ly:make-moment 48 2)
      }
  }
}
