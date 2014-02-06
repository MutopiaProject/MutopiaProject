\version "2.18.0"
\include "deutsch.ly"

\header {
   title = "Zwei geistliche Chöre"
   subtitle = \markup { \center-column { "I." "Beati mortui" }}
   composer = "Felix Mendelssohn Bartholdy"
   opus = "op. 115"
   
   mutopiatitle = "Zwei geistliche Chöre - Beati mortui"
   mutopiacomposer = "Mendelssohn-BartholdyF"
   mutopiainstrument = "Voice (TTBB)"
   date = "1833"
   source = "Leipzig: Breitkopf & Härtel, 1874-82. Plate M.B. 110."
   style = "Romantic"
   copyright = "Creative Commons Attribution-ShareAlike 4.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"

 mutopiaopus = "Op. 115"
 footer = "Mutopia-2014/02/06-1936"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 4.0 International License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/4.0" http://creativecommons.org/licenses/by-sa/4.0 } } } } }
}

\paper {
   top-margin = 0.4 \cm
   right-margin = 0.6 \cm
   left-margin = 0.7 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-global-staff-size 18)

nomel = {\set melismaBusyProperties = #'()}
mel = { \set melismaBusyProperties = #'(slurMelismaBusy tieMelismaBusy beamMelismaBusy) }
ctext = { \crescTextCresc \dimTextDecresc }
cpin = { \crescHairpin \dimHairpin }
lyricsstyle = { \small }

global = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \override Score.BarNumber.font-size = #0
  \override Score.BarNumber.stencil = #(make-stencil-boxer 0.125 0.25 ly:text-interface::print)
  \override DynamicTextSpanner.style = #'none
  \ctext
}

tenor_i = \relative e' {
   \clef "G_8"
   \tempo "Andante sostenuto" 4 = 84
   \partial 4 e4^\p 
   e2 d
   f4. f8 e4 c
   c4 c8 c d4 e
   d2 g,4 g
   a2 a
   g4. g8 g4 r
   r2 r4 d'^\<
   e2 e4 e 
   e4^\f e8 e d4 e

   %%% 10
   \nomel f2( e4) d \mel
   e1
   e2 r4 a,^\p^"SOLO"
   d1\espressivo
   d2 r4 c^\pp^"TUTTI"
   h1
   a2 r
   R1
   r2 c4.^\f c8
   f4 c d4. d8

   %%% 20
   c4 c^\p c c
   b2 a
   g4 g b a8 g
   g1
   a2 a4.^\f b8
   c4 a d4. e8
   e4 e e e
   f2 e
   d4 d f e8 d
   e2 e4 c^\p
   
   %%% 30
   d4. d8 d4 d
   d2 d
   r4 e^\< e e
   f2 f
   r4 fis^\f fis fis
   g1
   g,2.^\fermata e'4^\p^"SOLO"
   e2 d 
   f4. f8 e4 c
   c4 c8 c d4 e
   
   %%% 40
   d2 g,4 e'^\p^"TUTTI"
   \cpin e2^\< g
   g4.^\> f8 f4 e\!
   d1
   e2 r
   r2 r4 d -\tweak #'X-offset #-4 ^"SOLO"
   g4 f e d
   c2( d4) e
   d2.( e4)
   e2 r
   
   %%% 50
   r2 r4 d^"TUTTI"
   g4 f e2~
   e4. e8 f4 d
   d1(^\p
   c1)
   c1^\fermata^\pp
   \bar "|."
}
tenor_i_words = \lyricmode {
   \lyricsstyle
   Be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i,  be -- a -- ti in Do -- mi -- no mo -- ri -- en -- tes
   de -- in -- ceps, be -- a -- ti, be -- a -- ti!
   Di -- cit e -- nim spi -- ri -- tus, ut re -- qui -- es -- cant a la -- bo -- ri -- bus su -- is,
   di -- cit e -- nim spi -- ri -- tus, ut re -- qui -- es -- cant
    a la -- bo -- ri -- bus su -- is
   et o -- pe -- ra il -- lo -- rum se -- quun -- tur ip -- sos, se -- quun -- tur ip -- sos.
   Be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i, be -- a -- ti, 
   be -- a -- ti mor -- tu -- i de -- in -- ceps,
   be -- a -- ti mor -- tu -- i de -- in -- ceps!
}

tenor_ii = \relative c' {
   \clef "G_8"
   \partial 4 c4^\p
   c2 h
   c4. c8 c4 g
   a4 g8 g a8[( h]) c4
   c2 h4 r
   R1
   r2 r4 d^\<
   d2 d
   d4. d8 c4 h
   c4^\f c8 c d4 c
   \nomel h2( c4) \mel d
   c2( h)

   %%% 10
   c2 r4 a^\p^"SOLO"
   a1\espressivo
   gis2 r4 a^\pp^"TUTTI"
   a2( gis)
   a2 r
   R1
   r2 a4.^\f b8
   c4 a f g

   %%% 20
   a4 a^\p a a
   g2 f
   f4 f f f8 f
   f2( e)
   f2 a4.^\f b8
   c4 a d4. cis8
   cis4 cis cis cis
   d2 h!
   d4 d d c!8 h
   h2 c4 a^\p

   %%% 30
   a4. a8 a4 a
   a2 a
   r4 b^\< b b
   c2 c
   r4 d^\f d d
   e2( d4 c)
   d2.^\fermata c4^\p^"SOLO"
   c2 h
   c4 d e c
   c4 c8 c h4 c
   
   %%% 40
   c2 h4 c^\p^"TUTTI"
   \cpin c2^\< c
   c4.^\> c8 c4 c\!
   c2( h)
   c2 r4 c^"SOLO"
   f4 e d c
   h2. gis4
   a2 c4 c
   c2( h)
   c2 r4 c4^"TUTTI"
   
   %%% 50
   f4 e d c
   h2. d4
   c2 c4 c
   c2(^\p h)
   c2 a^\pp
   a2 g^\fermata
   \bar "|."
}
tenor_ii_words = \lyricmode {
   \lyricsstyle
   Be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes
   de -- in -- ceps, be -- a -- ti, be -- a -- ti!
   Di -- cit e -- nim spi -- ri -- tus, ut re -- qui -- es -- cant a la -- bo -- ri -- bus su -- is,
   di -- cit e -- nim spi -- ri -- tus, ut re -- qui -- es -- cant
   a la -- bo -- ri -- bus su -- is
   et o -- pe -- ra il -- lo -- rum se -- quun -- tur ip -- sos, se -- quun -- tur ip -- sos.
   Be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i, be -- a -- ti, be -- a -- ti mor -- tu -- i,
   be -- a -- ti de -- in -- ceps,
   be -- a -- ti mor -- tu -- i, be -- a -- ti, be -- a -- ti, be -- a -- ti!
}

bass_i = \relative g {
   \clef bass
   \partial 4 g4^\p
   g2 g
   a4. a8 g4 e
   f4 e8 e f4 g
   g2 g4 r
   r2 r4 c^\<
   c2 c
   c4. h8 h4 a
   gis2 gis4 gis
   a4^\f a8 a a4 a

   %%% 10
   \nomel a2( a4) \mel a
   a2( gis)
   a2 r4 a^\p^"SOLO"
   f1\espressivo
   e2 r4 e^\pp^"TUTTI"
   e1
   a,2 a'4.^\f b8
   c4 a4 f g
   a2 f4. g8
   a4 f b4. b8

   %%% 20
   f4 f^\p f f
   d4( e) f2
   b,4 b d c8 b
   c1
   f,2 a'4.^\f b8
   c4 a4 f4. e8
   e4 a a a
   a2 gis
   a4 a a a8 a
   gis2 a4 r

   %%% 30
   r2 r4 c^\p
   c4. c8 c4 c
   c2^\< c
   r4 c^\f c c
   c2 c
   c2( h4 a)
   h2.^\fermata g4^\p^"SOLO"
   g2 g
   a4 h c g
   a4 g8 g g4 g

   %%% 40
   g2 g4 g^\p^"TUTTI"
   \cpin g2^\< b
   b4.^\> a8 a4 a\!
   a2.( f4)
   e4 g^"SOLO" c h!
   a4 g f2~
   f4 a gis h
   a4. a8 a4 a
   a2( g!)
   g4 g^"TUTTI" c h

   %%% 50
   a4 g f2~
   f4 a gis gis
   a4. a8 a4 a
   g!1^\p
   g2 f^\pp 
   f2 e^\fermata
   \bar "|."
}
bass_i_words = \lyricmode {
   \lyricsstyle
   Be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i, be -- a -- ti in Do -- mi -- no mo -- ri -- en -- tes
   de -- in -- ceps, be -- a -- ti, be -- a -- ti!
   Di -- cit e -- nim spi -- ri -- tus, di -- cit e -- nim spi -- ri -- tus, ut re -- qui -- es -- cant a la -- bo -- ri -- bus su -- is,
   di -- cit e -- nim spi -- ri -- tus, ut re -- qui -- es -- cant
   a la -- bo -- ri -- bus su -- is et o -- pe -- ra il -- lo -- rum se -- quun -- tur ip -- sos, ip -- sos.
   Be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i, be -- a -- ti, be -- a -- ti mor -- tu -- i,
   be -- a -- ti mor -- tu -- i de -- in -- ceps,
   be -- a -- ti mor -- tu -- i, be -- a -- ti mor -- tu -- i de -- in -- ceps, be -- a -- ti!
}

bass_ii = \relative c {
   \clef bass
   \partial 4 c4^\p
   c2 g
   f4. f8 c'4 e
   f4 e8 e d4 c
   g'2 g,4 g'^\<
   g2 f
   f4. e8 e4 d
   g2.( f4)
   e2. e4
   a4^\f g8 f f4 e

   %%% 10
   \nomel d2( e4) \mel f
   e1
   a,2 r4 a^\p^"SOLO"
   d1\espressivo
   e2 r4 a,^\pp^"TUTTI"
   <e e'>1
   a2 a'4.^\f b8
   c4 a4 f g
   a2 f4. g8
   a4 f <b, b'>4. <b b'>8

   %%% 20
   f'4 f^\p f f,
   g2 a
   b4 b d c8 b
   c1
   f,2 a'4.^\f b8
   c4 a4 d,4. a8
   a1
   d2 e
   f2( d4) e8 f
   e2 a,4 a'^\p

   %%% 30
   f4. f8 f4 f f2 f
   r4 g^\< g g
   a2 a
   r4 d,^\f d d
   g1
   g,2.^\fermata c4^\p^"SOLO"
   c1~
   c2 c4 e
   f4 e8 e d4 c
   g'2 g,4 c^\p^"TUTTI"

   %%% 40
   \cpin c2^\< c2
   f4.^\> f8 f4 f,\!
   g1
   c2 c~^"SOLO"
   c2 d~
   d2 e4 e
   a4( g) f e
   f2( g)
   c,2 c~^"TUTTI"
   c2 d~

   %%% 50
   d2 e
   a4. a8 f4 f
   g1(^\p
   c,1)
   c1^\fermata^\pp
   \bar "|."
}
bass_ii_words = \lyricmode {
   \lyricsstyle
   Be -- a -- ti mor -- tu -- i in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i, be -- a -- ti in Do -- mi -- no mo -- ri -- en -- tes
   de -- in -- ceps, be -- a -- ti, be -- a -- ti!
   Di -- cit e -- nim spi -- ri -- tus, di -- cit e -- nim spi -- ri -- tus, ut re -- qui -- es -- cant a la -- bo -- ri -- bus su -- is,
   di -- cit e -- nim spi -- ri -- tus, a la -- bo -- ri -- bus su -- is et o -- pe -- ra il -- lo -- rum
   se -- quun -- tur ip -- sos, se -- quun -- tur ip -- sos.
   Be -- a -- ti in Do -- mi -- no mo -- ri -- en -- tes,
   be -- a -- ti mor -- tu -- i, be -- a -- ti, be -- a -- ti, be -- a -- ti de -- in -- ceps,
   be -- a -- ti mor -- tu -- i de -- in -- ceps!
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
      \tempo 2 = 74
   }
}
