%----------------%
%
%  Dateiname: alkan-op31-1.ly
%  Titel: Charles-Valentin Alkan: Prélude op.31,1
%  Notensatz: Karsten Hens mit LilyPond
%    http://www.karsten-hens.de 
%  Quelle: Schlesinger, Berlin, 1887 [Nachdruck Brandus, 1847],
%    in Kopien von http://alkan.assos.free.fr 
%  Editorischer Bericht: Franz. Originaltitel wieder eingesetzt,
%    T. 6: Gis fraglich (Olli Mustonen spielt G)
%  Bearbeitungshistorie:
%    12.12.2009: Fingersätze hinzu, tagline weg
%    14.12.2009: Fingersätze bearb.
% 
%----------------%

  \header {
    %LilyPond headers
    composer = "Charles-Valentin Alkan"
    title = "Prélude"
    subtitle = "Nr. 1"
    piece = "Lentement"
    opus  = "op. 31,1"
    date = "1846"
    instrument = "pour piano ou orgue"
    lastupdated = "2009/12/14" 
    
    % Mutopia headers:
    mutopiatitle = "Prélude"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "Piano, Orgue"
    source = "Schlesinger, Berlin, 1887 [Nachdruck Brandus, 1847]"
    style = "Romantic"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Karsten Hens"
    maintainerEmail = "karsten.hens@gmail.com"
    maintainerWeb = "http://www.karsten-hens.de"
    moreInfo = "Fingering by Karsten Hens; Comments: Bar 6: \"g#\" ist dubious. Olli Mustonen plays \"g\""

 footer = "Mutopia-2009/12/15-1731"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
   }  


\version "2.12.2"

% Makros
manualBeam =
#(define-music-function (parser location beg end)
  (number? number?)
  #{
  \once \override Beam #'positions = #(cons $beg $end)
  #})

manualTextPadding =
#(define-music-function (parser location pad)
  (number?)
  #{
  \once \override TextScript #'padding = #$pad
  #})

manualDynamicPadding =
#(define-music-function (parser location pad)
  (number?)
  #{
  \once \override DynamicLineSpanner #'padding = #$pad
  #})

    

music = {
  \parallelMusic #'(voiceA voiceB voiceC) {
%Takt 1  
    \relative c'' { 
      <g g'>4 \times 2/3 {<g g'>8 <g g'><g g'>} <g[ g'>8. <g] g'>16 <g g'>4 
    } |
    \override TupletNumber #'transparent = ##t
    \relative c'' { 
      g4 \times 2/3 { a8-2 b-2 c-2} d8. [ e16] d4
    } |
    \relative c' { 
    \manualTextPadding #1.0 <g c e>4^\markup{\italic{p e sempre molto sostenuto}}_\markup{\italic{2 Ped.}} \times 2/3 {<g c e>8 <g c e>8 <g c e>8} <g b f'>8. <g b f'>16 <g b f'>4
    } |

%Takt 2
    \override TupletNumber #'transparent = ##t
    \set fingeringOrientations = #'(up)
    \relative c'' {
      <g g'>4 \times 2/3 { <g g'>8 <g g'><g g'>} <g[ g'>8. <g] g'>16 <g g'>4
    } |
    \override TupletNumber #'transparent = ##t
    \relative c'' {
      c4 \times 2/3 { \manualBeam #-2.9 #-2.4 e8 g^\markup{\column{\raise #-1.2 \finger 5 \finger 5}} a^\markup{\column{\raise #-1.2 \finger 4 \finger 5}}} \manualBeam #-2.4 #-2.6 g8.[ f16] d4
    } |
    \override TupletNumber #'transparent = ##t
    \relative c' {
      <g c e>4 \times 2/3 { <g c e>8 <g c e> <g c e>} <g b f'>8. <g b f'>16 <g b f'>4
    } |

%Takt 3
    \relative c'' { 
      <g g'>4 \times 2/3 {<g g'>8 <g g'><g g'>} <g[ g'>8. <g] g'>16 <g g'>4 
    } |
    \relative c'' { 
      g4 \times 2/3 { a8 b c} d8.[ e16] d4
    } |
    \relative c' { 
      <g c e>4 \times 2/3 {<g c e>8 <g c e>8 <g c e>8} <g b f'>8. <g b f'>16 <g b f'>4
    } |

%Takt 4
    \relative c'' {
      <g g'>4 \times 2/3 { <g g'>8 <g g'><g g'>} <g[ g'>8. <g] g'>16 <g g'>4
    } |
    \relative c'' {
      e4 \times 2/3 { \manualBeam #-2.9 #-2.2 d8-3 a-2 b-2} c8.-2[ a16-2] c4-2
    } |
    \set fingeringOrientations = #'(down)
    \relative c' {
      <g c e>4 \times 2/3 { <g b f'>8 <g  c-2 f> <g d' f>} <c e>8. <c e>16 <c e>4
    } \bar ":|:" |

%Takt 5 
    \set fingeringOrientations = #'(up left)
    \relative c' { 
      \manualDynamicPadding #'1.7 <e e'>4\f \times 2/3 {<f f'-4>8 <f g'><f f'>} <e[ e'>8. <e] b'>16 <e e'>4 
    } |
    s1
    |
    \relative c { 
      <e gis b>4 \times 2/3 {<e a c>8 <e a c>8 <e a c>8} <e gis b>8. <e gis b>16 <e gis b>4
    } |

%Takt 6
    \set fingeringOrientations = #'(up left)
    \relative c' { 
    \manualDynamicPadding #'1.7 <e e'>4\f \times 2/3 {<fis fis'-4>8 <fis gis'>^\markup{\raise #-3.5 \small{\natural} \raise #-4.5 "?"} <fis fis'>} <e[ e'>8. <e] b'>16 <e e'>4_\markup{\italic{ten.}} 
    } |
    s1
    |
    \relative c { 
      <e gis b>4 \times 2/3 {<e a c>8 <e a c>8 <e a c>8} <e gis b>8. <e gis b>16 <e gis b>4_\markup{\italic{ten.}}
    } |

%Takt 7
    \relative c' { 
      \manualDynamicPadding #'2.4 <e e'>4\p \times 2/3 {<e e'>8 <e e'> <e e'>} <e[ e'>8. <e] e'>16 <e e'>4 
    } |
    \relative c' { 
      e4 \times 2/3 { fis8-2 gis-2 a-2} b8.[ c16] b4
    } |
    \relative c' { 
      <a c >4 \times 2/3 {<a c>8 <a c>8 <a c>8} <gis d'>8. <gis d'>16 <gis d'>4
    } |

%Takt 8
    \relative c' { 
      <e e'>4 \times 2/3 {<e e'>8 <e e'> <e e'>} <e[ e'>8. <e] e'>16 <e e'>4 
    } |
    \relative c'' { 
      c4 \times 2/3 { \manualBeam #-3.3 #-3.1 a8 c f^\markup{\column{\raise #-1.2 \finger 4 \finger 5}}} \manualBeam #-3.1 #-3.3 e8.[ d16] b4
    } |
    \relative c' { 
      <a c >4 \times 2/3 {<a c>8 <a c>8 <a c>8} <gis d'>8. <gis d'>16 <gis d'>4
    } |

%Takt 9
    \relative c' { 
      \manualDynamicPadding #'1.7 <e e'>4\< \times 2/3 {<e e'>8 <e e'> <e e'>} <fis![ fis'>8. <fis] fis'>16 <fis fis'>4 
    } |
    \relative c' { 
      e4 \times 2/3 { fis8 gis a} b8.[ c!16] c4
    } |
    \relative c { 
      <cis a' cis>4 \times 2/3 {<cis a' cis>8 <cis a' cis>8 <cis a' cis>8} <d a' d>8. <d a' d>16 <dis a' dis>4
    } |

%Takt 10
    \relative c'' {
      <g g'>4\!\p \times 2/3 { <g g'>8 <g g'><g g'>} <g[ g'>8. <g] g'>16 <g g'>4
    } |
    \relative c'' {
      e4 \times 2/3 { \manualBeam #-3.0 #-2.8 d8 a b} c8.[ a16] c4
    } |
    \relative c' {
      <g c e>4 \times 2/3 { <g b f'>8 <g c f> <g d' f>} <c e>8. <c e>16 <c e>4
    } \bar ":|" |


%music
  } 
}

%Druck und Layout




\score {
  \context PianoStaff <<
%  \set PianoStaff.instrumentName = "Piano"
    \music
    \new Staff {
      \clef treble
      \key c \major
      \time 4/4
      <<
	\voiceA \\
	\voiceB
      >>
    }
    \new Staff {
      \clef bass
      \voiceC
    }
  >>

  \layout {}
  \midi{
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Piano_pedal_performer"
    }
  }
}

\paper {
%  printallheaders = ##t
%  between-system-padding = #12
%  between-system-space = #10
%  ragged-last-bottom = ##f
%  ragged-bottom = ##f
  system-count = #4
}

