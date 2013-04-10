\version "2.16.0"
\include "3-shared.ly"


IIIVlnII =  \relative c''' {
  \clef "treble"
  \key f\major
  \time 3/8
  \set Score.skipBars = ##t 

  % Triplets are in groups of 3.
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (3))
    ((1 . 16) . (6))
    ((1 . 24) . (3 3 3))
    ((1 . 32) . (12))
  )))

  %1 page 32
  \IIISharedA \IIISharedB
  %6
  bes8 a g |
  \IIISharedD
  %27 page 34
  g8 c,16 d e f | g8 c,16 d e f | g8 f e |
  %30 page 35
  f8 g16 a f8 |
  \IIISharedF
  %53 page 37
  a,4 r8 |
  %54 page 38
  a4 r8 | bes bes bes | a a a | g g g | f4 r8 | f4 r8 | e4 r8 |
  %61 page 39
  d'16 e f g a c, | b? a g8 r |
  <<\IIISharedG s4_"Colla parte">> |
  %72 page 40
  f'8 e16 d c b? | e8 d16 c b? a | d e f g a c, | 
  %75 Note: This bar is marked //. I chose to copy it from mandolin, could just as well be copied as "g8 g g" from the violin.
  b16 a g8 r |
  g16 b d f e d |
  %77 Note: Notes in bars 77-81 are marked // and have been copied from mandolin
  e g fis g fis g | g, b d f e d | e g f! g f g | g, b d f e d |
  %82 Note: First chord copied from mandolin, rest from vln 1
  <e c g>4 r8 |
  \IIISharedH
  \IIISharedI
  \IIISharedJ
  %138 page 48 Note: This bar was originally d8 d d, copied with // from vln 1
  bes8 bes bes |
  a8 a a | g g g | c4 r8 | a8 a a |
  %143 Note: Bar 143 was originally "d8 d d", copied with // from vln1
  bes8 bes bes | a a a | bes4 r8 |
  %146 page 49
  b? b b | c c c | b? b b | c4 r8 | 
  %150 Note: I have skipped the six bars of IIISharedK.
  %\IIISharedK
  %150 page 50
  d8 d d |
  \IIISharedL \IIISharedM
  %166 page 52
  bes'8 a g |
  \IIISharedO
  %172 Note: Originally the following block, taken from 170-173 of mand+vln1
% \times 2/3 {bes16 a bes} d8 gis, |
% \grace gis?8 a4. | \times 2/3 {g16 f g} bes8 e, |
  % Replaced by \IIISharedP:
  \IIISharedP
  \IIISharedQ
}

