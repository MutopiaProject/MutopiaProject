\version "2.16.0"
\include "2-shared.ly"

IIVlnI =  \relative c'' {
  \clef "treble"
  \key bes\major

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default

  \IISharedA \IISharedB
  r4 |
  %11 page 19
  f8_ \markup{\italic "do:"} f f f g g g g |
  %12 page 20
  g f f d c c c es | d d d d c c c es | d d d4 d8 f f f |
  %15 page 21
  f4 f8 f f4 e?8 g | g4 f r2 |
  %17 page 22
  r2 g2 | f g | f4 r a8 a g g | a4 r a8 a g g |
  %21 page 23
   f16[ f]  f[ f]
  \IISharedC \IISharedD
  %29 page 25
  %Note: The r4 looks like a r8
  f,4 r4 c'8 c c c |
  %30 Note: The bars get out of sync here. Bars 30-31 were originally:
  %d d d d d c c a' | g g g bes, a4 r |
  %and are now 3 bars:
  d d d d d c c a' | g g g bes, a c c a' | g g g bes, a4 r |
  %33 page 26
  f'8 f f f g g g g | g f es d c c c es | d d d d c c c c |
  %36 page 27
  d d d4 as' r | as r g r | as r as r | 
  %39 page 28
  g r bes r |
  %40 This bar was originally "bes r bes16 g e c bes g e c", does not make much sense
  bes r a r |
  %41 page 28.5
  bes4 r bes r |
  %42 I have omitted bar 42, "bes4 r bes r".
  \IISharedE
  %46 page 30
  bes16 bes bes bes r d, f bes
  \IISharedF \IISharedG
}

