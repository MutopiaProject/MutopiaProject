\version "2.18.0"
\include "deutsch.ly"

\header {
   title = "Zwei geistliche Chöre"
   subtitle = \markup { \center-column { "II." "Periti autem" }}
   composer = "Felix Mendelssohn Bartholdy"
   opus = "Op. 115"

   mutopiatitle = "Zwei geistliche Chöre - Periti autem"
   mutopiacomposer = "Mendelssohn-BartholdyF"
   mutopiainstrument = "Voice (TTBB)"
   date = "1833"
   source = "Leipzig: Breitkopf & Härtel, 1874-82. Plate M.B. 110."
   style = "Romantic"
   copyright = "Creative Commons Attribution-ShareAlike 4.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"

 mutopiaopus = "Op. 115"
 footer = "Mutopia-2014/02/06-1937"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 4.0 International License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/4.0" http://creativecommons.org/licenses/by-sa/4.0 } } } } }
}

\paper {
   top-margin = 1.3 \cm
   right-margin = 0.6 \cm
   left-margin = 0.7 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-global-staff-size 18)

ctext = { \crescTextCresc \dimTextDecresc }
cpin = { \crescHairpin \dimHairpin }
lyricsstyle = { \small }

global = {
  \key d \major
  \time 2/2
  \autoBeamOff
  \override Score.BarNumber.font-size = #0
  \override Score.BarNumber.stencil = #(make-stencil-boxer 0.125 0.25 ly:text-interface::print)
}

tenor_i = \relative a {
   \clef "G_8"
   \tempo "Allegro vivace" 2 = 96
   \partial 4 a4^\f
   d2 e
   fis2 e4 fis
   g1
   fis2 r4 e
   d4 cis8. d16 e4 d
   cis2 r4 a
   h4 a8.[( g16]) d'4 d8. d16
   d2 a4 a

   %%% 10
   h4 a8. g16 d'4 d
   d2. d4
   e2 cis4 e
   fis2 d4 cis
   h2 e
   a,2 r
   r4 h e2~
   e2 a,
   r4 h e2
   e4 a, fis'2~

   %%% 20
   fis2 d4 a
   a'2 gis4 fis
   e2 e
   e2 a,4. h8
   c4 c c c
   c2 a
   d1 h4 h^\p c d
   e4 d e4. d8
   d4 h c d
   e4 d fis4. fis8

   %%%  30
   g4 d g g
   g2 fis
   e2. e4
   e2 r4 cis
   d e8. fis16 g4 fis
   fis4 e r a,
   d4 cis8. d16 e4 d
   d4 cis r2
   R1
   r2 r4 d

   %%% 40
   fis4 e8. fis16 h,4 h
   e4.( d8) cis4 d
   d2.( e8.[ d16]
   cis2. d8.[ cis16]
   h4 cis8.[ d16] e2~
   e4 fis8. e16 d4 cis
   h2 e~
   e4 d8. cis16) h4 fis'
   g4 fis8. g16 cis,4 cis
   fis4.( e8) d4 h

   %%% 50
   e2 fis
   g2 d4 d
   d2.( e8.[ d16])
   cis2. d8.[( cis16])
   h4( d g) fis
   e2( a~
   a2 g~
   g2) fis4 e
   d4( fis) e d
   e4 d8. e16 a,4 a

   %%% 60
   d4.( cis8) h4 e
   e4( a, fis') e
   d2( cis)
   d2 r4 a^\f
   d2^\markup \italic "marcato" e
   fis2 e4 fis
   g1
   fis2 r4 e
   \override TextSpanner.bound-details.left.text = "ritenuto  "
   d2\startTextSpan  e4 d
   cis2 d4 a\stopTextSpan \bar "||"

   %%% 70
   \tempo "Adagio" fis'2 e
   d1 \bar"|."
}
tenor_i_words = \lyricmode {
   \lyricsstyle
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor, ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor, ut ful -- gor, ut ful -- gor, ut ful -- gor ae -- the -- re -- us.
   Qui -- que mul -- tos red -- di -- de -- runt jus -- tos
   e -- runt stel -- la -- rum si -- mi -- les,
   e -- runt stel -- la -- rum si -- mi -- les,
   e -- runt stel -- la -- rum si -- mi -- les
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem, in om -- nem ae -- ter -- ni -- ta -- tem, ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem, in om -- nem ae -- ter -- ni -- ta -- tem, ae -- ter -- ni -- ta -- tem.
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor, ut ful -- gor ae -- the -- re -- us.
}

tenor_ii = \relative a {
   \clef "G_8"
   \partial 4 a4^\f
   d2 cis
   d2 d4 d
   d2( e)
   fis r4 cis
   d4 cis8. d16 e4 d
   cis2 r4 a
   h4 a8.[( g16]) d'4 d8. d16
   d2 a4 a
   h4 a8. g16 d'4 d

   %%% 10
   d2. d4
   cis2 a4 cis
   d2 a4 a
   a2 gis
   a4 a d2~
   d2 d
   r4 a d2~
   d2 d
   r4 a d2~
   d2 a4 a

   %%% 20
   fis'2 e4 d
   d2 d
   cis2 a4. h8
   c4 c c c
   c2 a
   a1
   g4 g^\p a h
   c4 h c4. h8
   h4 g a h
   c4 h c4. c8

   %%% 30
   d4 d e d
   cis!2 d
   d2. d4
   cis2 r4 a
   d4 cis8. d16 e4 d
   d4 cis r a
   d4 a8. a16 g4 fis
   fis4 e r2
   R1
   r2 r4 d'

   %%% 40
   fis4 e8. fis16 h,4 h
   e4.( d8) cis4 d
   d2.( e8.[ d16]
   cis2. d8.[ cis16]
   h4 cis8.[ d16] e2~
   e4 fis8. e16 d4 cis
   h2 e~
   e4 d8. cis16) d4 r
   R1
   r2 r4 d

   %%% 50
   e4 d8. e16 a,4 a
   d4.( c8) h4 h
   h1(
   cis!4. h8) a4 a
   h2( cis4) d
   cis2( fis~
   fis2 e4 d
   cis2) d4 d
   d4 cis8. d16 gis,4 gis
   cis4.( h8) a4 a

   %%% 60
   d2 d4 d
   cis2( d4) h
   a1
   a2 r4 a^\f
   d2^\markup \italic "marcato" cis
   c2 c4 a
   d2( e)
   a,2 r4 cis!
   \override TextSpanner.bound-details.left.text = "ritenuto  "
   h1\startTextSpan
   a2. a4\stopTextSpan \bar "||"

   %%% 70
   d2 cis
   d1 \bar"|."
}
tenor_ii_words = \lyricmode {
   \lyricsstyle
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor, ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor, ut ful -- gor, ut ful -- gor, ut ful -- gor ae -- the -- re -- us.
   Qui -- que mul -- tos red -- di -- de -- runt jus -- tos
   e -- runt stel -- la -- rum si -- mi -- les,
   e -- runt stel -- la -- rum si -- mi -- les,
   e -- runt stel -- la -- rum si -- mi -- les
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem, in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem.
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us.
}

bass_i = \relative a {
   \clef bass
   \partial 4 a4^\f
   a2 a
   a2 g4 a
   h2( cis)
   d2 r4 a
   a4 a8. a16 h4 h
   a2 r
   r2 r4 h
   a4 fis a g8. fis16
   h2 h4 h

   %%% 10
   a4 fis8. g16 a4 fis
   e2 r4 a
   a2 fis4 e
   d2 e
   fis2 r4 a
   h4 gis8. a16 h4 gis
   cis2 a
   h4 gis8. a16 h4 gis
   cis2 r4 a
   d2 d,

   %%% 20
   a'2 a4 a
   gis2 gis
   a2 a4. h8
   c4 c c c
   c2 a
   fis1 g4 r g2^\p
   g2 g
   g2 g
   g2 a

   %%% 30
   h4 h h h
   g2 a
   h2. h4
   a4 e a2~
   a2 a
   r4 a a a
   a1
   a2 r4 a
   h4 a8. h16 e,4 e
   a4.( g8) fis4 fis8.[( e16])

   %%% 40
   d2 h'4 r
   r2 r4 a
   h4 a8. h16 e,4 e
   a4.( g8) fis4 fis
   h2.( cis8.[ h16]
   ais2 h4 ais
   h2. cis8.[ h16]
   ais2) h4 h
   h4( d cis) h
   ais2 h4 h

   %%% 50
   c2. c4
   h4.( a!8) g4 g
   h4 a8. h16 e,4 e
   a4.( g8) fis4 fis
   g2. a4
   a4 a, r a'
   h4 a8. h16 e,4 e
   a2 d,4 e
   fis2 h
   r4 e, a a

   %%% 60
   a2 h4 h
   a2. g4
   fis2( e)
   fis2 r4 a^\f
   a2^\markup \italic "marcato" a
   a2 d,4 c'
   h2( cis!)
   d2 r4 a
   \override TextSpanner.bound-details.left.text = "ritenuto  "
   a2(\startTextSpan g~
   g2) fis4 a\stopTextSpan \bar "||"

   %%% 70
   a2. g4
   fis1 \bar"|."

}
bass_i_words = \lyricmode {
   \lyricsstyle
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor, ful -- gor ae -- the -- re -- us.
   Qui -- que mul -- tos red -- di -- de -- runt jus -- tos
   e -- runt stel -- la -- rum si -- mi -- les,
   e -- runt stel -- la -- rum si -- mi -- les,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem, in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   %%% 50
   ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem, ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem.
   in om -- nem ae -- ter -- ni -- ta -- tem, ae -- ter -- ni -- ta -- tem.
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us.
}

bass_ii = \relative a {
   \clef bass
   \partial 4 a4^\f
   fis2 a
   d,2 d4 d
   d1
   d2 r4 e4
   fis4 fis8. fis16 gis4 gis
   a2 r
   r2 r4 g!
   fis4 d fis e8. d16
   g2 g4 g

   %%% 10
   fis d8. e16 fis4 d
   a2 r4 a
   d2 fis4 e
   d2 e
   fis2 r4 fis
   gis4 e8. fis16 gis4 e
   a2 fis
   gis4 e8. fis16 gis4 e
   a2 r4 a
   d2 d,

   %%% 20
   d1
   e2 e
   a, a'4. h8
   c4 c c c
   c2 a
   d,1
   g4 r4 g2^\p
   g2 g
   g2 g
   g2 g

   %%% 30
   g4 g e e
   e2 fis
   g2 gis
   a2 r4 g!
   fis4 e8. d16 cis4 d
   d4 a r g'
   fis4 e8. d16 cis4 d
   d4 a r a'
   h4 a8. h16 e,4 e
   a4.( g8) fis4 fis8.[( e16])

   %%% 40
   d2 h'4 a
   gis4( e) a4 fis
   g!2 g~
   g4 fis8[( e] d2)
   g2. r4
   r2 r4 fis
   g4 fis8. g16 cis,4 cis
   fis4.( e8) d4 d
   e1
   fis2 g

   %%% 50
   g1
   g,2. g'4
   h4 a8. h16 e,4 e
   a4.( g8) fis4 fis
   g4( fis) e( d)
   a1~
   a1~
   a1~
   a1
   a2 r4 g'

   %%% 60
   fis2 g4 e
   a4( g fis) g
   a,1
   d2 r4 a'^\f
   fis2^\markup \italic "marcato" a
   d,2 d4 d
   d1
   d2 r4 a'
   \override TextSpanner.bound-details.left.text = "ritenuto  "
   \slurDown h,2(\startTextSpan e
   a,2) d4 fis\stopTextSpan \bar "||"

   %%% 70
   a2 a,
   d1 \bar "|."

}
bass_ii_words = \lyricmode {
   \lyricsstyle
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor ae -- the -- re -- us,
   ut ful -- gor ae -- the -- re -- us.
   Qui -- que mul -- tos red -- di -- de -- runt jus -- tos
   e -- runt stel -- la -- rum si -- mi -- les,
   e -- runt stel -- la -- rum si -- mi -- les,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem, in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem,
   in om -- nem, in om -- nem,
   in om -- nem ae -- ter -- ni -- ta -- tem, ae -- ter -- ni -- ta -- tem,
   in om -- nem ae -- ter -- ni -- ta -- tem.
   Per -- i -- ti au -- tem ful -- ge -- bunt ut ful -- gor ae -- the -- re -- us.
}

\score {
   \new ChoirStaff <<
      \new Staff <<
         \set Staff.instrumentName = "Tenore I"
         \new Voice = "tenor_i" <<
            \global
            \tenor_i
         >>
         \lyricsto "tenor_i" \new Lyrics \tenor_i_words
      >>
      \new Staff <<
         \set Staff.instrumentName = "Tenore II"
         \new Voice = "tenor_ii" <<
            \global
            \tenor_ii
         >>
         \lyricsto "tenor_ii" \new Lyrics \tenor_ii_words
      >>
      \new Staff <<
         \set Staff.instrumentName = "Basso I"
         \new Voice = "bass_i" <<
            \global
            \bass_i
         >>
         \lyricsto "bass_i" \new Lyrics \bass_i_words
      >>
      \new Staff <<
         \set Staff.instrumentName = "Basso II"
         \new Voice = "bass_ii" <<
            \global
            \bass_ii
         >>
         \lyricsto "bass_ii" \new Lyrics \bass_ii_words
      >>
   >>

   \layout{
      indent = 1.6\cm
   }
}
\score {
   \new Staff <<
         \tenor_i
         \tenor_ii
         \bass_i
         \bass_ii
   >>
   \midi {

   }
}
