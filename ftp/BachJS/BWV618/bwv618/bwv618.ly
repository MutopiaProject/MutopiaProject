\version "2.8.1"

\header {
   mutopiatitle = "O Lamm Gottes, unschuldig"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 618"
   mutopiainstrument = "Organ"
   date = ""
   source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/Apr/06"

   title = "O Lamm Gottes, unschuldig"
   composer = "Johann Sebastian Bach"
   opus = "BWV 618"

   footer = "Mutopia-2006/04/07-723"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1) }
restdown = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -3.0 ) }
halsup = { \stemUp \tieUp \slurUp}
halsdown = { \stemDown \tieDown }
halsneutral = { \stemNeutral \tieNeutral }
staffup = { \change Staff = "right" \halsdown }
staffdown = { \change Staff = "left" \halsup }
noflag = { \once \override Stem #'flag-style = #'no-flag }

global = {
   \key f\major
   \time 4/4
   #(set-accidental-style 'default)
   #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

sopran = {
   \new Voice \relative c'' {
      \global
      \clef treble
      \stemUp
      c2^\markup { \large "Adagio. Canone alla Quinta." }\mordent~ c8 f16( e!) e( d) d( c)
      \repeat volta 2 {
         c16( d32 es) d16( c) c( b) b( a) a( b32 c) b16( a) a( g) g( a32 f)
         e8 e'16( f) f( g) g( a) d,8 g~ g16 g a b
         \halsup e,16( f32 g) f16( e) e( d) d( c) c( d32 es) d16( c) c( b) b( a)
      %% Takt  5 ==================================================
         a16( b32 c) b( g) a16 e8.\trill f16 f4 r4
         r8 e'16( d) d( c) c( h) h( c32 d) c16( h) h( a) a( g)
         c16( d32 e f g a16) g( f) f( e) e g32 f g16 a d,8. c16
      }
      \alternative {
         {
            c2\mordent~ c8 f16( e!) e( d) d( c)
         }
         {
            c1~
         }
      }
      c8 h16( c) c( d) d( e) e8 b!16( a) a( g) g( f)
      %% Takt 10 ==================================================
      f16( g32 a) g16( f) f( e) e( f) e8 g!16( a) a( h) h( c)
      c16( h32 a) h16( c) c( d) d( e) e( d32 c) d16( e) e( fis) fis( g)
      g8 es16( d) d( c) c( b!) b( c32 d) c16 b) b( a) a( g)
      es'16( d) d( e) e( f!) f( g) g( f32 e) d16( e) e( d) d( cis)
      cis8 b!16( a) a( g) g( f) f8 b16( c!32 d) c16( b) b( a)
      %% Takt 15 ==================================================
      a32( c d e f g a16) g( f) f( e) e( f32 g) f16( e) e( d) d( c)
      c16( d32 e) d16( c) h( c) c( d) d8 e,16( fis) fis( g) g( a)
      a8 d d4\mordent~ d16( e32 f!) e16( d) cis( d) d( e)
      e16( f32 g) f16( e) d( c!) c( h) c2~
      c16(b!32 a) g16( a) a( b) b( a) a( g32 f) g16( a) a( b) b8~
      %% Takt 20 ==================================================
      b16( c32 d) c16( b) b( a) a( g) a2\fermata
   }
}

alt = {
   \new Voice \relative c' {
      \global
      \clef treble
      \halsdown
      \restdown R1
      \repeat volta 2 {
         e2\rest c
         c4 c g' g
         a2 g
         %% Takt  5 ==================================================
         c,4\rest g' c, d
         e4 f8 e d2
         c4 d4\rest e2\rest
      }
      \alternative {
         {
            \restdown R1
         }
         {
            \restdown R1
         }
      }
      e2 e4 e
      %% Takt 10 ==================================================
      d8. c16 h4 c8 h a4
      g2 r
      g'2 g4 g
      a4 g2 f4
      e2 c\rest
      %% Takt 15 ==================================================
      a'2 g~
      g4 f8 e d2~
      d4 e8 fis g2~
      g4 f e2~
      e8 g f e d2
      %% Takt 20 ==================================================
      c1_\fermata
   }
}


tenor = {
   \new Voice \relative f {
      \global
      \clef bass
      r8 f16( e) e( d) d( c) c16( d32 es) d16( c) c( b) b( a)
      \repeat volta 2 {
         a16( b32 c) b16( a) a( g) g( f) f8 e'! f g
         a16( b32 c) b16( a) a( g) g( f) b( c32 d) c16( b) b( a) a( g)
         c8 a16( g) g( f) f( e) e( f32 g) f16( e!) e( d) d( e)
         %% Takt  5 ==================================================
         f8 d16( c) c( b) b( a) a( b32 c) b16( a) a( g) g( f)
         c'8 c, d e f e f g
         \stemUp a f'16( e) e( d) d( c) c8 f g g, \stemNeutral
      }
      \alternative {
         {
            c8 f16( e) e( d) d( c) c16( d32 es) d16( c) c( b) b( a)
         }
         {
            c8 c,16( d) d( e) e( f) f( e32 d) e16( f) f( g) g( a)
         }
      }
      a16( g32 f) g16( a) a( h) h( c) \once \override TextScript #'extra-offset = #'( 6.7 . 2.5 )
            c4_\markup { \fontsize #3 \musicglyph #"custodes.mensural.u0" }  cis8.(_\prallprall h!32 cis)
      %% Takt 10 ==================================================
      d16( e) e( f) \scriptdown gis,8.(_\prallprall fis32 gis) a8 e'16( f!) f( g!32 a) g16( f)
      e16( f32 g) f16( e) e( d) d( c) c8 h c d
      es8 c16( b!) b( a) a( g) g8 b es! e
      f8 fis g e cis a d gis,
      a8 a16( h) h( cis) cis( d) d( c32 b) c16( d) d( e) e( f)
      %% Takt 15 ==================================================
      f8 g a h c a16( g) g( f) f( e)
      e16( f32 g) f16( e) d( c) c( h) h( c32 d) c16( b) a( g) g( fis)
      fis( g a32 b c16) b( a) a( g) g( d' g f!) e( d) d( cis)
      cis16( h32 a) h16( cis) d8 d, a'16( g32 f) g16( a) a( b) b( c)
      c8 e16( d) d( cis) cis( d) d( e32 f) es16 ( d) d( c) c( b)
      %% Takt 20 ==================================================
      f'2 f,2\fermata
   }
}
pedal = {
   \new Voice \relative f {
      \global
      \clef bass
      R1
      \repeat volta 2 {
         f2 f4 f
         c'4 c d2
         c2 r4 c
         %% Takt  5 ==================================================
         f,4 g a b8 a
         g2 f4 r
         R1
      }
      \alternative {
         {
            R1
         }
         {
            \set Score.currentBarNumber = #8
            r2 a
         }
      }
      a4 a g8. f16 e4
      %% Takt 10 ==================================================
      f8 e d4 c2
      r2 c'
      c4 c d c~
      c4 b a2
      r2 d
      %% Takt 15 ==================================================
      c2. b!8 a
      g2. a8 b
      c2. b4
      a2~ a8 c b! a
      g2 f~
      %% Takt 20 ==================================================
      f1\fermata \bar "|."
   }
}

right = {
   \clef treble
   <<
   \alt
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \tenor
   >>
}

\score {
   <<
      \new PianoStaff {
         \set PianoStaff.instrument = \markup { \large "Manuale." }
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \context Staff = pedal {
         \set Staff.instrument = \markup { \large "Pedale." \hspace #1.8 }
         \context Voice = pedal \pedal
      }
   >>
   \layout{}
}

\score {
   \unfoldRepeats {
      <<
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \sopran
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c' \sopran
         }
         \new Staff {
            \set Staff.midiInstrument = "oboe"
            \alt
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \tenor
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c' \tenor
         }
         \new Staff {
            \set Staff.midiInstrument = "bassoon"
            \pedal
         }
      >>
   }
   \midi{ \tempo 4 = 32 }
}