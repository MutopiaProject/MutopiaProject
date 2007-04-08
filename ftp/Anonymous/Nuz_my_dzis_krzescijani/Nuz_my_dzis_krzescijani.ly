\version "2.7.39"
\header {
title = "Nuż my dziś krześcijani"
subtitle = "Anonymus, Kancjonał staniątecki"
opus = "1586"
 mutopiatitle = "Nuż my dziś krześcijani (Polish Christmas Carol)"
 mutopiacomposer = "Anonymous"
 mutopiapoet = "Anonymus"
 mutopiainstrument = "Voice (SATB)"
 source = "Kancjonał staniątecki"
 style = "Renaissance"
 copyright = "Public Domain"
 maintainer = "Till Rettig"
 lastupdated = "2006/November/15"
 footer = "Mutopia-2006/12/01-856"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\include "deutsch.ly"
#(set-global-staff-size 18.5) #(set-default-paper-size "a4")
%#(set-default-paper-size "letter") #(set-global-staff-size 18)

	\paper{
	%left-margin = #20
	ragged-last-bottom = ##f
	print-page-number = ##f
	%bottom-margin = #50
	%between-system-padding = #15
	%#(define bottom-margin (* 2 cm))
	after-title-space = #1
	between-title-space = #4
}
     global = {
        \key g \minor
        \time 2/2
	\skip 1*12 \bar "||"
	\skip 1*8 \bar "|."
     }
     
     sopMusic = \relative c'' {
	\set Staff.instrument = "S"
	\set Score.measureLength = #(ly:make-moment 4 2)
        g2 b a g | \slurDotted  fis(  g) a1 | g2 b a g | \slurDotted fis( g) a1 |
	g2 a g fis g1 s1 | g4 fis g a g2 fis |
	g4 fis g a g2 fis | b a g( fis) | g1 g\fermata
     }
     sopWords = \lyricmode {
        \set stanza = "1." Nuż my dziś \set ignoreMelismata = ##t krze -- ści -- ja -- ni, ser -- decz -- nie się ra -- duj -- my \set ignoreMelismata = ##t dnia dzi -- siej -- sze -- go, iż się nim na -- ro -- dził z_czy -- sto -- ści pa -- nień -- skiej Syn Bo -- ga ży -- we -- go.
	}

	sopWordzwei = \lyricmode {
	\set stanza = "2." Na -- ro -- dził się \set ignoreMelismata = ##t  w_Be -- tle -- jem, mia -- ste -- czku Da -- wi -- do -- wym w_u -- bo -- gim gma -- chu w_pie -- lu -- szki u -- wi-nio -- ny w_ja -- słe -- czkach po -- ło-żo -- ny u -- ży -- wał __ \skip 2 stra -- chu.
     }

	sopWorddrei = \lyricmode {
	\set stanza = "3."
	Je -- mu  dziś śpie -- waj -- my, Je -- mu dzię -- ki czyń -- my mó -- wiąc bez mia -- ry. Bądź po -- zdro -- wion Pa -- nie, bądź po -- zdro -- wion Pa -- nie za twe \set ignoreMelismata = ##t da -- ry. A -- men.
	}
     
     altoMusic = \relative c'' {
	\set Score.measureLength = #(ly:make-moment 4 2)
	\set Staff.instrument = "A"
        g2 g d d d2. e4 f1 | g2 g d d d2. e4 f1 | 
	d2 es d d | d1 s1 | d1~ d4 c d es | 
	d2 d d4 c d es | f2 es b4 c d2 d es d1\fermata
     }
     altoWords = \lyricmode {
        \set stanza = "1." Nuż my dziś krze -- ści -- ja -- ni, ser -- decz -- nie się ra -- duj -- my dnia dzi -- siej -- sze -- go, iż się nam na -- ro -- dził z_czys -- to -- ści pa -- nień -- skiej Syn Bo -- ga ży -- we -- go.
     }

altWordzwei = \lyricmode {
	\set stanza = "2." Na -- ro -- dził się  w_Be -- tle -- jem, mia -- ste -- czku Da -- wi -- do -- wym w_u -- bo -- gim gma -- chu w_pie -- lu -- szki u -- wi-nio -- ny w_ja -- słe -- czkach po -- ło-żo -- ny u -- ży -- wał  stra -- \skip 2 chu.
     }
     
	altWorddrei = \lyricmode {
	\set stanza = "3."
	Je -- mu  dziś śpie -- waj -- \skip 4 my, Je -- mu dzię -- ki czyń -- \skip 4 my mó -- wiąc bez mia -- ry. Bądź po -zdro -- wion Pa -- nie, bądź po -- zdro -- wion Pa -- nie za twe \set ignoreMelismata = ##t da -- ry. A -- men.
	}

     tenorMusic = \relative c' {
	\set Staff.instrument = "T"
	\set Score.measureLength = #(ly:make-moment 4 2)
        g2 d' d b \slurDotted a( b) c1 | g2 d' d b | a( b) c1 |
	b2 c b a | b1 s1 | b4 a b c b2 a2 | b4 a b c b2 a2 | d2 c g( a) b( c) b1\fermata
     }
     tenorWords = \lyricmode {
        
     }
     
     bassMusic = \relative c' {
	%\set Staff.instrument = "B"
	\set Staff.instrument = \markup {
       \column { "T"
                 \line { "B"} } }
	\set Score.measureLength = #(ly:make-moment 4 2)
        \slurDotted g2 g fis g d( g) f1 | g2 g fis g d( g) f1 | 
	g2 c, d d g1 s  | g4 d g fis g2 d |
	g4 d g fis g2 d | b c es( d) g1 g1\fermata
     }
     
     \score {
        \new ChoirStaff <<
           %\new Lyrics = sopranos { s1 }
           \new Staff = women <<
              \new Voice =
                "sopranos" {  << \global \sopMusic >> }
	>>
	\new Lyrics = "sopranos" { s1 }
	\new Lyrics = "sopranoszwei"
	\new Lyrics = "sopranosdrei"
	\new Staff = womena <<
              \new Voice =
                "altos" { \voiceOne << \global \altoMusic >> }
           >>
           \new Lyrics = "altos" { s1 }
	\new Lyrics = "altoszwei"
	\new Lyrics = "altosdrei"
          % \new Lyrics = "tenors" { s1 }
           \new Staff = men <<
              \clef bass
              \new Voice =
                "tenors" { \voiceOne <<\global \tenorMusic >> }
              \new Voice =
                "basses" { \voiceTwo <<\global \bassMusic >> }
           >>
           \new Lyrics = basses { s1 }
	\new Lyrics = basseszwei
	\new Lyrics = bassesdrei
     
           \context Lyrics = sopranos \lyricsto sopranos \sopWords
	\context Lyrics = sopranoszwei \lyricsto sopranos \sopWordzwei
	\context Lyrics = sopranosdrei \lyricsto sopranos \sopWorddrei
           \context Lyrics = altos \lyricsto altos \altoWords
	\context Lyrics = altoszwei \lyricsto altos \altWordzwei
	\context Lyrics = altosdrei \lyricsto altos \altWorddrei
          % \context Lyrics = tenors \lyricsto tenors \tenorWords
           \context Lyrics = basses \lyricsto basses \sopWords
	\context Lyrics = basseszwei \lyricsto basses \sopWordzwei
	\context Lyrics = bassesdrei \lyricsto basses \sopWorddrei
        >>
     
	\midi{\tempo 1=60}
        \layout {
	indent = #2
           \context {
              % a little smaller so lyrics
              % can be closer to the staff
              \Staff
              \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
           }

        }
     }
