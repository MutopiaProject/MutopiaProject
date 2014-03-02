\version "2.18.0"
\include "deutsch.ly"

\header {
   title = "Fuga II"
   subtitle = "a 3 Voci"
   composer = "Johann Sebastian Bach"
   opus="BWV 847"
   
   mutopiatitle = "Das Wohltemperierte Clavier I, Fuga II"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 847"
   mutopiainstrument = "Harpsichord, Piano"
   source = "Edition Peters"
   style = "Baroque"
   license = "Creative Commons Attribution-ShareAlike 4.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"

 footer = "Mutopia-2014/03/02-1941"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown}
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

global = {
   \key c \minor
   \time 4/4
}

sopran = {
   \new Voice \relative g'' {
      \global \halsup
      \once \override MultiMeasureRest #'staff-position = 4 R1
      \once \override MultiMeasureRest #'extra-offset = #'( 1 . 1 ) R1
      g8\rest g16 fis g8 c, es g16 fis! g8 a
      d,8 g16 fis g8 a c,16 d es4 d16 c
      
      %%% 5
      b8 es16 d es8 g, as f'16 es f8 a,
      b8 g'16 f g8 h, c d16 es f4~
      f8 es16 d c b! as g f8 as' g f
      es d es f h, c d h
      c8 g'16 fis g8 d es4 g8\rest e
      
      %%% 10
      f8 f16 e f8 c d4 f8\rest d
      es8 es16 d es8 b c es16 d! es8 f
      b,8 es16 d es8 f as,16 b c4 b16 as
      \halsneutral g16 es f g as b c d es d c d es f g a
      b16 f, g as! b c d! e f es d es f g a h 
      
      %%% 15
      \halsup c8 h16 a g f! es d c8 es d c
      b8 a b c fis,! g a! fis
      g8 d'16 c d8 f\rest f\rest e16 d e8 f\rest 
      f8\rest fis16 e fis8 f\rest f\rest g,16 f! g8 h\rest
      h8\rest a16 g a8 h\rest h\rest h16 a h8 h\rest 
      
      %%% 20
      h8\rest c16 h c8 g as c16 h! c8 d
      g,8 c16 h c8 d f,16 g as4 g16 f
      es8 c'16 h c8 g as4 d8\rest a
      b8 b16 a b8 f g4 d'8\rest g,~
      g8 as16 b c h c as f2~
      
      %%% 25
      f8 d'16 c d8 f, es es'16 d es8 g,
      f8 f'16 es f8 as, g16 f' es d c h a g
      c8 f es d d\rest as g f
      g8 f16 es f8 d as' g d'\rest a
      h8 c f,16 es d c c8 c'16 h c8 g
      
      %%% 30
      as8 c16 h c8 <as h! d> g c16 h c8 d 
      f,16 g as4 g16 f e2
   }
}

alt = {
   \new Voice \relative c'' {
      \global \halsdown
      r8 c16 h c8 g as c16 h c8 d
      g,8 c16 h c8 d f,16 g as4 g16 f
      es16 c' h a g f! es d c8 es' d c
      b8 a b c fis, g a fis
      
      %%% 5
      g4 es16\rest c d es f g as8~ as16 d, es f 
      g16 a b8~ b16 es, f g as g f es d8 c'16 h!
      c4 c,4\rest c8\rest f' es d
      g,8\rest as g f g f16 es f8 d
      g4 g8\rest h c c16 h! c8 g
      
      %%% 10
      as4 g8\rest a b b16a! b8 f
      g4 g8\rest g as as g f
      \staffdown c8\rest as b c c\rest as16 g as8 f
      b8 c b as b g f es 
      f8 des' c b c as g f
      
      %%% 15
      g8 \staffup g'16 fis g8 c, es g16 fis! g8 a
      d,8 g16 fis g8 a! c,16 d es4 d16 c
      b8 c\rest c16\rest d e fis g a b8~ b16 e,! f g
      a16 b c8~ c16 fis, g a b8 es,!16 d es8 g,
      as!8 f'16 es f8 a, b g'16 f g8 h,
      
      %%% 20
      c16 f es d \staffdown c b! as g f8 \staffup as' g f
      es8 d es f h, c d h
      c4 c8\rest e f f16 e! f8 c
      d4 c8\rest d es es16 d es8 b
      c2~ c8 d16 es f es f d 
      
      %%% 25
      h8 c\rest c\rest h c c\rest c\rest es
      d8 e\rest e\rest f~ f e\rest e\rest f
      es8 as! g f es d es f
      h,8 c d h h c c\rest c 
      f16 d es c~ c8 h c4 e8\rest e
      
      %%% 30 
      f4 e8\rest f f es16 d es8 <as f>
      <h, d>8 c\rest <h d> c\rest <g c>2
      \bar "|."
   }
}

bass = {
   \new Voice \relative c' {
      \global
      R1*6
      r8 c16 h c8 g as c16 h! c8 d
      g,8 c16 h c8 d f,16 g as4 g16 f
      es16 c' h a g f! es d c d es d c b! as! g
      
      %%% 10
      f16 b' as g f es! d c b c d c b as! g f 
      es16 as' g f es des c b as8 c' b as
      g8 f g as d, es f d
      es8 as g f g es d c 
      d8 b' as g as f es d!
      
      %%% 15
      es8 r8 r4 r8 c b a
      r8 es' d c d c16 b c8 d
      g,8 b'16 a b8 d, es c'16 b c8 e,
      f8 d'16 c d8 fis, g4 r16 g, a h
      c16 d es8~ es16 a, b c d es f8~ f16 h, c d 
      
      %%% 20 
      es8 b\rest b\rest e \stemDown f f, es! d
      \stemNeutral r8 as' g f g f16 es f8 g
      c16 d es d c b! as  g f b' as g f es! d c
      b16 c d c b as! g f es as' g f es d c b 
      as16 b c b as g f es d g' f es d c h a 
      
      %%% 25
      g4 r r16 g a h c d es f
      g16 f as g f es d c h8 c16 h c8 g as c16 h! c8 d
      g,8 c16 h c8 d f,16 g as4 g16 f
      es4 r8 es'
      d8 c g' g, <c, c'>2~
      
      %%% 30
      <c c'>1~
      <c c'>1
   }
}

right = {
   \clef "treble"
   <<
      \sopran
      \alt
   >>
}

left = {
   \clef "bass"
   \bass
}

\score {
   \new PianoStaff {
      \set PianoStaff.midiInstrument = "harpsichord"
      <<
         \context Staff = right {
            \context Voice = right \right
         }
         \context Staff = left {
            \context Voice = left \left
         }
      >>
   }

   \layout{
      indent = 0.8\cm
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 76 4)
      }
   }
}
