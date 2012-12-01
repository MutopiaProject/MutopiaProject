% Updated to Lilypond 2.4.2 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org> (31/Jan/2005)
% Corrected Opus Number by Nick Payne, updated to v2.14.2 by Javier Ruiz-Alma

\version "2.14.2"

\header {
    title =       "Etude 9"
    opus =        "Op. 60, No. 9"
    composer =    "Matteo Carcassi (1792-1853)"
    piece =       "Allegretto grazioso"
    
    mutopiatitle = "Etude 9"
    mutopiacomposer = "CarcassiM"
    mutopiaopus = "O 60"
    mutopiainstrument = "Guitar"
    date = "19th C."
    source = "Not known"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Jeff Covey"
    maintainerEmail = "jeff.covey@pobox.com"
    maintainerWeb = "http://pobox.com/~jeff.covey/"
    lastupdated = "2012/Feb/16"
    
 footer = "Mutopia-2012/12/01-306"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
 }


% {{{ global stuff

globalA =  {
  \clef violin \time 4/4 \key a \major \skip 1*8 \bar "|."
}
globalB =  {
  \skip 1*8 \bar "||" \key c \major
}
globalC =  {
  \bar "||" \key a \major \skip 1*8
}
midiStuff = \context Staff = "guitar" {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                    % octave lower than written.
}

% }}}
% {{{ melody

melodyA =  \relative c'' {
  \stemUp
   bis16[( cis) bis( cis)]  fis8[ e]  dis16[( e) dis16( e)]  b'8[ a]
   gis[ d'16( cis)]  b[( a) gis( fis)]  e8[ gis16( fis)]  e[( d) cis( b)]
   bis16[( cis) bis( cis)]  fis8[ e]  cisis16[( dis) cisis16( dis)]  gis8[ fis]
   e[ fis16 gis]  a[( b) cis dis] e4 r
  %5
   bis,16[( cis) bis( cis)]  fis8[ e]  dis16[( e) dis16( e)]  b'8[ a]
   eis16[( fis) eis( fis)]  cis'8[ b]  ais16[( b) ais( b)]  e8[ d]
   cis8[ d16( cis)]  b[( a) gis( fis)]  e8[ gis16( fis)]  e[( d) cis( b)]
   a[ b cis( d)]  e[ fis gis a] a,4 r
}
melodyB =  \relative c {
  \stemUp
   e8[ fis16( gis)]  a[ b( cis) dis]  e8[ gis]  cis16[( b) cis( b)]
  <b a>8[ b16 cis]  dis[( e) fis gis] a4 r
   b,,8[ cis16 dis]  e[( fis) gis( a)]  b8[ dis]  gis16[( fis) gis( fis)]
   e8[ fis16 gis]  a[( b) cis dis] e4 r
  %13
   fisis,16[( gis) fisis( gis)]  a8[ gis]  gis[ bis] dis4
   fisis,16[( gis) fisis( gis)]  a8[ gis]  gis[ cis] e4
   fis,8[ a] cis4  dis,8[ fis] b4
   e,8[ fis16 gis]  a[( b) cis dis]  e8[ e, e e]
  %21
   e16[( f) e( f)]  a8[ g]  e[ c g e]
   e16[( f) e( f)]  a8[ g]  f[ d b g]
   c[ g']  fis16[( g) fis( g)]  d8[ g]  fis16[( g) fis( g)]
   e8[ g]  fis16[( g) fis( g)]  b[( c) b( c)]  dis[( e) dis( e)]
  <e d>8[ gis]  fisis16[( gis) fisis( gis)] <e d>8[ b']  ais16[( b) ais( b)]
  <c, e>8[ a']  gis16[( a) gis( a)] <c, e>8[ c']  b16[( c) b( c)]
  <dis a>8[ <dis a>]  fis,,[ <dis'' a>] <dis a>[ c, b a]
  %24
  <e' gis,>[ e]  f16[( e) f( e)]  e8[ e']  e,,,[ <d''' b>]
  <c a>[ e,]  f16[( e) f( e)]  e8[ c']  e,,,[ <a'' dis, c >]
  <gis e b>[ e]  f16[( e) f( e)]  fis[( e) fis( e)]  gis[( e) gis( e)]
   b'[( e,) e e]  d'[( e,) e e]  fis[( e) d( b)]  gis[ e( d) b]
}

% }}}
% {{{ bass

bassA =  \relative c' {
  \stemDown
  a2 a e e a fis' e,2. \skip 4*1
  a2 a d d e, e a a4 \skip 4*1
}
bassB =  \relative c {
  \stemDown
  \skip 4*3
  < e' gis >4 fis8 \skip 8*1 \skip 4*3
  r2 r4 < a b>4 < gis b >8 \skip 8*1 \skip 4*3
  %13
  r2 <bis dis>8 r8 r4 r2 <cis e>8 r8 r4
  <a, cis'>8 r8 r4 <b a'>8 r8 r4 <e gis>8
  \skip 8*1 \skip 4*3
  %21
  \skip 1*2
  e,4 r g r c \skip 4*3 e,2 e a a fis'4 fis  fis8[ c d dis]
  e,2. e4 e2. e4 e1 \skip 1*1
}

% }}}
        
aSectionMusic = <<
        \globalA
        \context Voice = melodyVoiceA { \melodyA }
        \context Voice = bassVoiceA { \bassA}
>>
aSectionFingerings = <<
%       \context Voice = melody_voice_a { \fingerings_melody_a }
%       \context Voice = bass_voice_a { \fingerings_bass_a }
      >>

bSectionMusic = <<
        \globalB
        \context Voice = melodyVoiceB { \melodyB }
        \context Voice = bassVoiceB { \bassB }
>>
bSectionFingerings = <<
%       \context Voice = melody_voice_b { \fingerings_melody_b }
%       \context Voice = bass_voice_b { \fingerings_bass_b }
>>

cSectionMusic = <<
        \globalC
        \context Voice = melodyVoiceA { \melodyA }
        \context Voice = bassVoiceA { \bassA }
>>

%% dvi output =  with fingerings
%\score {
%    \context Staff = "guitar" <<
%    { 
%      \aSectionMusic
%      \bSectionMusic
%      \cSectionMusic
%    }
%    { 
%      \aSectionFingerings
%      \bSectionFingerings 
%    }
%  >>
%  \layout {
%  }
%}

% dvi output without fingerings
 \score {
     \context Staff = "guitar"      { 
       \aSectionMusic
       \repeat volta 2 {
         \bSectionMusic
         \cSectionMusic
       }
     }
   \layout {
   }
}
 
%{
here i make a separate \score command so that the midi output =  follows
the actual course of the music, with the second section repeated.
%}
\score {
  { 
    \midiStuff
    \aSectionMusic
    \bSectionMusic
    \cSectionMusic
    \bSectionMusic
    \cSectionMusic
  }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }


}
