% Magnicifat Peter Benoit
%#(set-default-paper-size "a4")
#(set-global-staff-size 15)
\version "2.10.33"
\header 
{
  mutopiatitle = "Magnificat"
  mutopiacomposer = "BenoitP"
  mutopiainstrument = "Three Voices and Organ"
  mutopiastyle = "Hymn"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2009-02-26"

  title = "Magnificat"
  composer = "Peter Benoit (1834-1901)"
  source = "Schott Frères Bruxelles S.F.1272 (undated) and hand copied choral parts dated 1953."
  meter = "Lento"
 footer = "Mutopia-2009/03/05-1639"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \time 4/4
   \key c \major
}
sopIA = \relative c'' {
  c2\ff c4 c % 2
  c1	     %3
  c2 b4 c
  a4 d b c
  c1
  e4 e8 e e4 e
  c2 c4 c
  e2 e4 e
  c4. c8 c4. c8
  c4. c8 c4( d)
  e1\fermata
}

sopIC = \relative c'' {
  c2 c
  c c
  c4 c b( c)
  a d b c
  c1
  e2 e4 e
  c2 c
  c( d)
  e1\fermata
}

sopID = \relative c'' {
  r4 cis cis cis8 cis
  e4.\ff cis8 cis4 r
  r cis2( a4
  e'4. d8) cis4 r
  r a2 gis4 
  fis4. a8 e2
  r4 a2 gis4
  fis4. a8 e2
  r4 a b cis8 cis
  b1
  e,2 r
}

sopIE = \relative c'' {
  e2 b4 b
  c8. c16 b4 r b
  e4. e8 b2
  c4 b r e,
  a4 a8 a b2
  c2. e,8 e
  a2 b
  c c4 c
  e4. e8 b4 b
  c b r b
  c b r8 e, e e
  e2\> e4(\! f)\p
  g2. g4
  c,1\fermata
}
 
sopIG = \relative c'' {
  c2 c4 c
  c4. c8 c2
  c c4 c
  c2 c
  c4. c8 c4 d
  e4. e8 e2
  c4 c8 c d4. c8
  c1\fermata
  c2 c4 c
  c1
  c2 c4 c 
  e1\fermata \bar"|."
}

sopIIA = \relative c'' {
  c2\ff c4 c
  c1
  g2 g4 g
  a f g g
  c,1
  g'4 g8 g g4 g 
  c2 c4 c
  g2 g4 g
  c4. c8 c4. c8
  a4. a8 a2 gis1\fermata
}

sopIIC = \relative c'' {
  c2 c
  c c
  g4 g g( e)
  a a b g
  c1
  g2 g4 g
  c2 c
  c2( a)
  gis1\fermata
}

sopIIE = \relative c'' {
  e,2 b4 b
  c8. c16 b4 r b
  e4. e8 b2
  c4 b r e
  a4 a8 a b2
  c2. e,8 e
  a2 b
  c c4 c
  e,4. e8 b'4 gis
  a gis r gis
  a gis r8 e e e
  e2\> e4(\! f)\p
  g2. g4
  c,1\fermata
}
sopIIG = \relative c'' {
  c2 c4 c
  c4. c8 c2
  c c4 c
  c2 c
  c4. c8 c4 d
  e4. e8 e2
  a,4 a8 a b4. c8
  c,1\fermata
  c2 c4 c
  c1
  c2 c4 c
  g'1\fermata \bar"|."
}  

altA = \relative c' {
  c2\ff c4 c 
  c1 
  e2 d4 e
  f d g e
  c1
  c4 c8 c c4 c
  c2 c4 c
  c2 c4 c
  c4. c8 c4. c8
  f4. f8 f2
  e1\fermata 
}

altB = \relative c' {
  r4\pp e e e
  c'2 b
  r4 a a e
  g( f) e2
  r4 e d e
  f( a) gis2
  r4 e8. e16 e4 e
  c'2 b
  r4 a a e8 e
  g4( f) e2
  r4 e8. e16 e4 f
  g( e8) f g2
  c, r
}

altC = \relative c' {
  c2 c
  c c
  e4 e d( c)
  f f g e
  c1
  c2 c4 c
  c2 c
  c2( f)
  e1\fermata
}

altE = \relative c' {
  e2 b4 b
  c8. c16 b4 r b
  e4. e8 b2
  c4 b r e
  a a8 a b2
  c2. e,8 e
  a2 b
  c2 c4 c
  e,4. e8 b4 e
  e e r e
  e e r8 e e e
  e2\> e4(\! f)\p
  g2. g4
  c,1\fermata
}

altF = \relative c' {
  r4 e e4. e8
  c'2 b 
  r4 a a e
  g( f) e2
  r4 e d( e 
  f) a gis2
  r4 e e e8 e
  f4( a) gis2
  r4 e c' b
  b4. a8 a4( g)
  g4 fis8 e fis2
  g1
  r4 a2 c4
  b4( g) d2
  r4 a' a c
  b( g) f e
  d1
  c2 r
}

altG = \relative c' {
  c2 c4 c |
  c4. c8 c2 |
  c c4 c |
  c2 c |
  c4. c8 c4 d |
  e4. e8 e2 |
  a,4 a8 a g4. c8 |
  c1 \fermata |
  c2 c4 c |
  c1 |
  c2 c4 c |
  c1\fermata \bar"|."
}  

poetryA = \lyricmode {	   
  Mag -- ni -- fi -- cat a -- ni -- ma me -- a
  do -- mi -- num, et ex -- sul -- ta -- vit
  spi -- ri -- tus me -- us in de -- o sa -- lu --
  ta -- ri me -- o.
}

poetryB = \lyricmode {
  Qui -- a res -- pe -- xit hu -- mi -- li -- ta -- tem
  an -- cil -- lae su -- ae, ec -- ce e -- nim ex hoc
  be -- a -- tam me di -- cent om -- nes ge -- ne --
  ra -- ti -- o -- nes,
}

poetryC = \lyricmode { 
  Qui -- a fe -- cit mi -- hi
  mag -- na qui po -- tens est, et sanc -- tum no -- men
  e -- ius,
}

poetryD = \lyricmode {
  et mi -- se -- ri -- cor -- di -- a e -- ius a
  pro -- ge -- ni -- e in pro -- ge -- ni -- es
  ti -- men -- ti -- bus e -- um.
}

poetryE = \lyricmode {
  Fe -- cit po -- ten -- ti -- am in bra -- chi -- o
  su -- o, dis -- per -- sit su -- per -- bos men -- te
  cor -- dis su -- i, de -- po -- su -- it po -- ten -- tes
  de se -- de et ex -- al -- ta -- vit hu -- mi -- les
}

poetryF = \lyricmode {
  e -- su -- ri -- en -- tes im -- ple -- vit bo -- nis,
  et di -- vi -- tes di -- mi -- sit in -- a -- nes,
  sus -- ce -- pit Is -- ra -- el pu -- e -- rum
  su -- um. Re -- cor -- da -- tus mi -- se -- ri --
  cor -- di -- ae su -- ae.
}

poetryG = \lyricmode {
  Si -- cut lo -- cu -- tus est ad pa -- tres nos -- tros
  A -- bra -- ham et se -- mi -- ni e -- ius in sae -- cu -- la.
  Mag --  ni -- fi -- cat!   Mag --  ni -- fi -- cat! 
}

SopILyrics = \lyricmode {
      \poetryA
      \poetryC
      \poetryD
      \poetryE
      \poetryG
}

SopIILyrics = \lyricmode {
      \poetryA
      \poetryC
      \poetryE
      \poetryG
}

AltLyrics = \lyricmode {
      \poetryA
      \poetryB
      \poetryC
      \poetryE
      \poetryF
      \poetryG
}

organUp = \relative c' {
    \clef G
    <c e g c>2 <c f a c>	    % 1
    <c e g c>1    
    <c e g c>2 <c f a c>
    <c e g c>2 <d g b>4 <e g c>
    <c f a> <f a c> <d g b> <e g c>
    <e g c>2 <f a c f>
    <e g c e>1
    <c e g c>2 <f a c f>
    <e g c e>1
    <c e g c>2 <c g' bes c>	    % 10
    <c f a c> <c f a c>4 <d a' d>
    <e gis b e>1\fermata
    <c e>1\pp
    <c c'>2 <b b'>
    <c e>1
    <e g>4 <d f> <c e>2
    <<{c1} \\ {e2 d4 e}>>
    <d b>4 <c a> <b gis>2	    % 18
    <c e>1
    <c c'>2 <b b'>
    <c e>1
    <e g>4 <d f> <c e>2
    <c e>2. <c f>4
    << {g'4 e8[ f] <d g>2} \\ {c2 c4 b}>>
    <c e g c>2\ff <c f a c>	    % 25
    <c e g c>1
    <c e g c>2 <c f a c>
    <c e g c>4 <c e g c> <d g b> <c e g c>
    <c f a> <f a d> <d g b> <e g c>
    <e g c>2 <f a c f>
    <e g c e>1
    <c e g c>2 <f a c f>
    <e g c e> <d a' d>
    <e gis e'>1\fermata		    % 34
    cis1(
    cis1)
    cis
    << {e4 d cis2} \\ {e1} >>
    <a e a,>1
    << {a1} \\ {fis4 d cis2} >>
    <a e' a>1
    << {a'1} \\ {fis4 d cis2} >>    % 42
    <cis e cis'>2 <cis eis b'>4 <cis fis a>
    <b gis'>2 <a fis'>2
    <gis e'>2 r \bar"||"	    % 45
    <e' gis b e>2 <b e b'>
    <c e a c>4 <b e gis b> r <b b'>
    <e gis b e>2-> <b e b'>->
    <c e a c>4 <b e gis b> r e
    <c e a>2 <d g b>		    % 50
    <c e g c>2 c4 e
    <c e a>2 <d g b>
    <c e g c>2. <c e a c>4
    <e gis b e>2. r4
    r <e gis b> <e a c> <e gis b>
    r <e gis b> <e a c> <e gis b>
    r1				    % 57
    <c e>2\pp <b d>
    <c g e>1\fermata
    <c e>
    <c c'>2 <b b'>
    <c e>1
    <e g>4 <d f> <c e>2
    << c1 \\ { e2 d4 e} >>
    <d b>4 <c a> <b gis>2	    % 65
    <c e>1
    <b d>4 <a c> <gis b>2
    <c e> <e c'>4 <d b'>
    <d b'>2 <c a'>4 <cis g'>
    << {g'4 fis8[ e] fis2\trill} \\ {d2 c} >>
    <b g'>2 <b g>
    <c a>1->			    % 72
    <b g>->
    <c a>->
    <b g>4 <g g'> <b f'> <c e>
    << d1 \\ {c2 b} >>
    <c e g c>2\ff <c f a c> \bar"||" % 77
    <c e g c>1
    <c e g c>2 <c f a c>
    <c e g c>1
    <c e g c>2 <c f a c>
    <c e g c>2 <c e a c>4 <d a' d>
    <e gis b e>1
    <c e a c>2 <d f b d>
    <c e g c>1\fermata		    %85
    <c f a c>2 <c f as c>
    <c e g c>1
    <c f a c>2 <d as' c d>
    <e g c e>1\fermata \bar"|."
}

organDown = \relative c {
    \clef F
    \once \override TextScript #'extra-offset = #'( -2.0 . 1.0 )
    <c c,>2^\markup{ \small \italic {Grand Jeu.} } <f f,>2  % 1
    <c c,>1
    <c c,>2 <f f,>2
    <c c,>1
    <f f,>4 <d d,> <g g,> c,
    <c c,>2 <f f,>
    <c c,>1
    <c c,>2 <f f,>
    <c c,>1
    <c c,>2 <e e,>		    % 10
    <f f,> <f f,>
    <e e,>1\fermata
    <a a,>1\pp
    <a dis,>2 <gis e> 
    <a a,>1
    << {a1} \\ {d,,4 f a2}>>
    <c g'>1
    <f d>4 <fis dis> e2		    % 18
    <a a,>1
    <a dis,>2 <gis e>
    <a a,>1
    <<{a1} \\ {d,,4 f a2}>>
    <c bes'>2. <d a'>4
    << {g4 e8[ f] g2} \\ {e4 c d g,} >>
    <c c,>2\ff <f f,>		    % 25
    <c c,>1
    <c c,>2 <c c,>
    <c c,>1
    <f f,>4 <d d,> <g g,> <c, c,>
    <c c,>2 <f f,>
    <c c,>1
    <c c,>2 <f f,>2
    <c c,> <f a, f>
    <e b e,>1\fermata		    % 34
    <a e a,>1 ~
    <a e a,>1
    <a fis fis,>1
    <gis, b'>2 <a a'>
    cis1
    << {a'1} \\ {d,4 fis, a2} \\ {s2 e'2}>>
    cis1
    << {a'1} \\ {d,4 fis, a2} \\ {d2 e2}>>  % 42
    <a a,>2 <gis gis,>4 <fis fis,>
    << {fis4 e2 dis4} \\ {b1} >>
    <e b e,>2 r \bar"||"	    % 45
    \once \override TextScript #'extra-offset = #'( -1.0 . 1.0 )
    <e e,>^\markup{ \small \italic {Grand Jeu.}} <gis gis,>
    <a a,>4 <e e,> r <b b'>
    <e e,>2-> <gis gis,>->
    <a a,>4 <e e,> r <e e,>
    <a a,>2 <g g,>		    % 50
    <c, c,>2 c4 e
    <a a,>2 <g g,>
    <c, c,>2. <a a'>4
    <e e'>2. r4
    r <e e'> <a a'> <e e'>
    r <e e'> <a a'> <e e'>
    r1				    % 57
    << {g'2 f} \\ {g,1} >>
    <g c,>1
    <a a'>1
    <a' dis,>2 <gis e>
    <a a,>1
    << a1 \\ {d,2 e} \\ {d,4 f a2} >>
    <c g'>1
    <d f>4 <dis fis> <e gis>2	    % 65
    <c g'>1
    <d f>4 <dis fis> <e gis>2	    % 67
    <a e a,>2 <gis e a,>
    <gis e a,> <a e a,>
    << { b2 a } \\ d,1 >>
    <g d g,>2 <d g,>
    <es g,>1->			    % 72
    <d g,>->
    <es g,>->
    <d g,>4 <c e> <d f> <e g>
    << <g g,>1 \\ {g2 f} >>
    <c c,>2\ff <f f,> \bar "||"    % 77
    <c c,>1
    <c c,>2 <f f,>
    <c c,>1
    <c c,>2 <f f,>
    <c c,>2 <a a'>4 <f f'>
    <e e'>1
    <a a'>2 <g g'>
    <c c,>1\fermata		    % 85
    <f f,>
    <c c,>
    <f f,>2 <f f,>
    <c c,>1\fermata \bar"|."
}

\score {
	<<
		\new ChoirStaff {
			<<
			\new Staff = sopIStaff { 
			    %\set Staff.instrumentName = "Sop.I" 
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = sopIVoice { 
				\global 
				\autoBeamOff \dynamicUp
				R1
				\sopIA
			        R1*13
				\sopIC
				\sopID
				\sopIE
				R1*18
				\sopIG
			    } 
			}
			\new Lyrics \lyricsto sopIVoice \SopILyrics
			
			\new Staff = sopIIStaff { 
			    %\set Staff.instrumentName = "Sop.II"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = sopIIVoice { 
				\global
				\autoBeamOff \dynamicUp
				R1
				\sopIIA
				R1*13
				\sopIIC
				R1*11
				\sopIIE
				R1*18
			        \sopIIG
			    } 
			}
			\new Lyrics \lyricsto sopIIVoice \SopIILyrics
		
			\new Staff = altStaff { 
			    %\set Staff.instrumentName = "Alt"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				R1
				\altA
				\altB
				\altC
				R1*11
				\altE
				\altF
			        \altG
			    } 
			}
			\new Lyrics \lyricsto altVoice \AltLyrics
		
			>>
		}
			\new PianoStaff <<
		        \set PianoStaff.midiInstrument = "church organ"
		        \set PianoStaff.instrumentName = "Organ"
		        \new Staff = "up" {
		          #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
		          \organUp
		        }
		        \new Staff = "down" {
		          #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
		          \organDown
		        }
			>>
	>>
    
  \layout {
    \context {
      \RemoveEmptyStaffContext
      \override RemoveEmptyVerticalGroup #'remove-first = ##f
    }
  }
  \midi {
    \context {
      \Score
          tempoWholesPerMinute = #(ly:make-moment 78 4)
    }
  }
}
% EOF
