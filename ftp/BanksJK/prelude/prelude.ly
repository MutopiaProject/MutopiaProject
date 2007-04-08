



\version "2.8.0"
\header {
 
 mutopiatitle = "Prelude in G minor"
 mutopiacomposer = "BanksJK"
 mutopiainstrument = "Percussion, Bells, Xylophone"
 date = "2005/Feb"
 source = "author"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "James Banks"
 maintainerEmail = "foreclosers (at) gmail.com"
 lastupdated = "2006/Jun/25"
 title = "Prelude"
  composer = "James Banks"
 footer = "Mutopia-2006/07/23-785"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
  }

global = {
 \time 4/4
 \key g \minor
 \clef treble
}

bells = \relative {
\set Staff.instrument = "Bells"
\set Staff.midiInstrument = "rock organ"

 % measure 1
 
 r4 g4 << c2 g( >> 
     
 << g2 d' >> << g, ees') >> 
 
 << { s2    fis4. fis8 } \\
    { r4 g, g(    a)   } >>
 
 << { g'8[ d] c[ bes] bes4-tr a } \\
    { bes4    a8[ g]   g2        } >>

 % measure 5
 << { s2 c8[( d] ees4 } \\
    { r4 g, (g a } >>

 << { d8[ c] ees[ d] d bes~ bes4) } \\
    { bes4 bes a4.) g8 )} >>
 
 << { s2 a'2( } \\
    { r4 << g,4 bes d g >> g( fis } >>
    
 << { bes2 a4 c) } \\
    { ees,4 d fis2 } >>
    
  r4 g,4 << c2 g( >> 
    
  << g d' >> << g, ees')>>
    
  % measure 11
  r1
            
  r2 r4 << { d'4( } \\ 
           { s4 } >>

 << { ees4 d8[ c] bes4 d } \\
    { s1 } >>
    
 << { ees4 d8[ c] r4 g'8[ f] } \\
    { s2 g,2( } >>
    
 << { ees'4 d8[ c] bes'4 c8[ bes] } \\
    { g,1 } >>

  % measure 16
 << { a'4 bes8[ fis]) a8[( g] d[) bes] } \\
    { a4. d,8) bes'4( g,) } >>

 << { ees''2.( ees8[ c] } \\
    { r4 g8[( a] bes2 } >>
  
 << { d8 c ees d d c a bes) } \\
    { bes2 bes) } >>

 << { s1 } \\
    { g1( } >>

 << { s1 } \\
    { g1 } >>
    
 << { r4 bes8 c d4 d8 bes } \\
    { g1 } >>
    
% prependix

 << { a1 } \\
    { g1 } >>

 << { bes1 } \\
    { g1 } >>

 << { a1 } \\
    { g2 f2 } >>

 << { r4 bes8( c ees4 d8 c } \\
    { g2. c8 g } >>

 << { d'1 } \\
    { bes2 a2 } >>

 << { r4 bes8 c ees4 d8 c } \\
    { g2. c8 g } >>

 << { d'1 } \\
    { bes2 a2 } >>
    
 << { r4 bes8 c ees4 d8 c } \\
    { g2. c8 g } >>

 << { d'1 } \\
    { bes2 a2 } >>

 % measure 31  
 
 << { g1 } \\
    { r2 f2 } >>

 << { g1 } \\
    { ees2 d2 } >>

 << { g2 g4) } \\
    { c,2 s4) } >>  r4

 % measure 34

 r4 << { g''2( a4 } \\
       { bes,2.( } >>

 << { bes'2 fis4 g } \\
    { bes,2 d2 } >>

 << { g1)( } \\
    { ees1)( } >>

 << { g1 } \\
    { d2 c8 bes~ bes4 } >>

 << { g'1)( } \\
    { a,2)( f2 } >>

 << { g'1 } \\
    { f,2 ees2 } >>

 << { g'1 } \\
    { ees,2 d2 } >>

 << { g'1 } \\
    { d,2 c2 } >>

 % measure 42

 << { g''2) g( } \\
    { c,,2) bes( } >>

 << { g''1)( } \\
    { bes,4) g8 a bes4 a8 g } >>

 << { g'1 } \\
    { c,4 a8 bes c4 bes8 a } >>

 << { g'1)( } \\
    { g,2)( f8 a bes c } >>

 << { g'1 } \\
    { g,4 g8 a16 bes c8 ees f4 } >>

 % measure 47

 << { g1 } \\
    { ees2 d } >>

 << { g1 } \\
    { c,1 } >>

 << { g'1)( } \\
    { bes,4 g8 a bes4 a8 g } >>
    
 << { g'1 } \\
    { c,4 a8 bes c4 bes8 a } >>
    
 << { g'1 } \\
    { d4 ees8 d c4 bes8 a } >>
 
 << { g'1)( } \\
    { bes,2 f } >>

% measure 53

 << { g'1 } \\
    { f,2 ees } >>

 << { g'1 } \\
    { ees,4 c d2 } >>

 << { g'1) } \\
    { c,4 a8 bes c4 bes8 a } >>

 << { g'1 } \\
    { bes,2 a } >>

 << { g'1 } \\
    { c,4 a8 bes d4 c8 bes } >>

 % measure 58

 << { g'1 } \\
    { a,2 d } >>

 << { g1 } \\
    { c,4 a8 bes g bes d ees } >>

 << { g1 } \\
    { c,2 a4 bes8 f } >>

 << { g'1 } \\
    { g,1 } >>

 << { g'1 } \\
    { g,1 } >> 

 % measure 63

  r4 g,4 << c2 g( >> 
 
 << g2 d' >> << g, ees') >>
 
 << { s2    fis4. fis8 } \\
    { r4 g, g      a    } >>
 
 << { g'8[ d] c[ bes] bes4-tr a } \\
    { bes4    a8[ g]   g2        } >> 
 
 g1( 
 
 r1
 
 r1)

 r1
 
 }

xylo = \relative {

\set Staff.instrument = "Xylophone"
\set Staff.midiInstrument = "reed organ"

 << { r2 ees''4.( d8) } \\
    { s2 c2 } >>

 << { d8( c bes a bes a g a) } \\
    { g1 } >>

 r2 << {  g,4( d'4 } \\
    {  r8 fis,( ees d } >>

 << { g2 d) } \\
    { d8 ees d cis d2) } >>

% 5

 r2 << { ees8 d c fis } \\
       { c4 c } >>

 << { g'4( g8 f f4) fis } \\
    { d4( c8 d d2) } >>

 r2 \times 4/6 {d'16[ e fis g a bes]} \times 4/6 {c[ a fis d' c a]}

 \times 4/6 {bes[ g d bes d g ]} \times 4/6 {bes[ g d bes c ees]}
    \times 4/6 {a[ fis d bes d fis]} \times 4/6 {a[ bes, d a' g fis]}

% 9

 \times 4/6 { bes[ a g f ees d]} \times 4/6 { <<c[ g>> c, d ees d c] } 
    \times 4/6 { a'[ c, d ees d c]} \times 4/6 { bes'[ d, e fis e d] }

 \times 4/6 { c'[ d, ees c' bes a] } \times 4/6 { bes[ d, g a bes d] }
    \times 4/6 { g[ a, bes d g a] } \times 4/6 {bes[ d, c a' g ees] }

 \times 4/6 { d[ d, fis a d bes] } \times 4/6 {ees[ d, fis a ees' c]} 
    \times 4/6 { fis[ d, fis c' fis d] } \times 4/6 { bes'[ a g f ees d]}

 \times 4/6 { ees[ d c bes a g] } \times 4/6 {bes[ a g d a' fis]} g2

% 13

 << { s2 bes4 bes } \\
    { g1( } >>

 << { c4 bes8 a g4 g } \\
    { g1 } >>

 << { c2 d2 } \\
    { g,1)( } >>

 << { ees'2 fis } \\
    { g,1 } >>

% 17

 r4) << g8 d' g >> << c c, >> <<bes2( f' d'>>

 << bes g g, >> << g) ees' bes' >>

 << { r4 g,8 a bes4 d8 ees } \\
    { s2 g,2 } >>

 << { c4 d8 a c bes a g } \\
    { a4 fis g2 } >>

% 21

 r4 g8 a bes4 d8 ees

 d8 f,16 a c ees d c d8 ees,16 g bes d c a

 << { bes4 \times 2/3 {g8 a bes} bes4 a8 g } \\
    { cis,4 r4 cis2 } >>

 << { a'1 } \\
    { d,1 } >>

 r4 << { g8 a bes4 d8 ees } \\
       { d,8 ees g4 a8 bes } >>

 << { d4. bes8 d4 bes } \\
    { g2 g } >>

 r4 << { g8 a bes4 d8 ees } \\
       { d,8 ees g4 a8 bes } >>

 << { d4. bes8 d4 bes } \\
    { g2 g } >>


 r4 << { g8 a bes4 d8 ees } \\
       { d,8 ees g4 a8 bes } >>

 << { d4. bes8 d4 bes } \\
    { g2 g } >>

 r4 << { g8  a bes4 d8 ees8 } \\
       { d,4 ees2 } >>

 << { d'4. bes8 d4 bes } \\
    { g4. fis8 ees4 d } >>

 << { a'4. bes8 c4 bes8 a } \\
    { c,2. r4 } >>

 << { r4 d'( ees2 } \\
    { g,4 g2.( } >>

 << { d'4 c2. } \\
    { a1 } >>

 << { c2 bes } \\
    { g1 } >>

 << { bes2.) d8 ees~} \\
    { g,1 } >>

 << { ees'1( } \\
    { g,1 } >>

 << { g'1 } \\
    { g,1 } >>

 << { f'1 } \\
    { g,1 } >>

 << { ees'1 } \\
    { g,1 } >>

 << { d'2) g,( } \\ 
    { g2) d } >>

 << { ees'2 d } \\
    { g,1 } >>

 << { c1) } \\
    { g1 } >>

 << { c8 d ees2 d4 } \\
    { g,1 } >>

 << { f'8 d c d ees4 d } \\
    { g,1 } >>

 << { bes2 f' } \\
    { g,1 } >>

 << { ees'2 c4 ees } \\
    { g,1 } >>

 << { d'2 ees } \\
    { g,1)( } >>

 << { fis'2 a,2 } \\
    { g1 } >>

 << { bes2 ees } \\
    { g,1 } >>

 << { f'1 } \\
    { g,1)( } >>

 << { g'1 } \\
    { g,1 } >>

 << { a'2 bes } \\
    { g,1 } >>

 << { c2 d } \\
    { g,1 } >>

 << { ees'4 d8 ees d c bes a } \\
    { g1 } >>

 << { d'2 ees }
    { g,1 } >>

 << { c4 d8 f ees d c bes } \\
    { g1 } >>

 << { ees'2 c } \\
    { g1 } >>

 << { d'4 c8 bes a4 bes8 a } \\
    { g1 } >>

 << { g1 } \\
    { g2 c,4 ees } >>

 << { g1 } \\
    { d } >>

 << { r2 ees''4.( d8) } \\
    { s2 c2 } >>

 << { d8( c bes a bes a g a) } \\
    { g1 } >>

 r2 << {  g,4( d'4 } \\
    {  r8 fis,( ees d } >>

 << { g2 d) } \\
    { d8 ees d cis d2) } >> 

 g1(

 r1
 
 r1)

 r1


  
} 
   
\score {
 <<
 \new Staff << \global \bells >>
 \new Staff << \global \xylo >>
 >>
 \midi { \tempo 4 = 60 }
 \layout { }
 }
