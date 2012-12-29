\version "2.16.0"
\include "3-shared.ly"

IIIVlnI =  \relative c'' {
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
  \IIISharedA \IIISharedB \IIISharedC \IIISharedD \IIISharedE \IIISharedF
  %53 page 37
  c4 r8 |
  %54 page 38
  c4 r8 | d8 d d | c c c | bes bes bes | a4 r8 | f4 r8 | e4 r8 |
  %61 page 39
  f4 fis8 | g b, g |
  \IIISharedG |
  %72 page 40
  c4 f8 | g4 r8 | a8 a a | g g g | f f f |
  %77 page 40 Note: Bars 77-78 have been added.
  e8 e e | f f f |
  %79
  e e e | f g g, | c4 r8 |
  %82 Note: I have skipped two bars here: "e8 e e | f g g,"
  \IIISharedH
  \IIISharedI
  \IIISharedJ
  %138 page 48
  d8 d d | c8 c c | bes bes bes | a4 r8 | c8 c c | d d d | c c c | d4 r8 |
  %146 page 49
  d d d | e e e | d d d | e4 r8 |
  %150 Note: I have skipped the six bars of IIISharedK.
  %\IIISharedK
  %150 page 50
  d8 d d |
  \IIISharedL \IIISharedM \IIISharedN \IIISharedO \IIISharedP \IIISharedQ
}



