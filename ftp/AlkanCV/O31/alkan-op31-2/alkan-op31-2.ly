%----------------%
%
%  Dateiname: alkan-op31-2.ly
%  Titel: Charles-Valentin Alkan: Prélude op.31,2
%  Notensatz: Karsten Hens mit LilyPond
%    http://www.karsten-hens.de 
%  Quelle: Schlesinger, Berlin, 1887 [Nachdruck Brandus, 1847],
%  Editorischer Bericht: Franz. Originaltitel wieder eingesetzt,
%    Überflüssige Akzidentien behutsam entfernt.
%    Kommentar zu T. 41: F statt Pause! Druckfehler in der Vorlage?
%  Bearbeitungshistorie:
%    2010/02/08: Ersterstellung
% 
%----------------%

  \header {
    %LilyPond headers
    composer = "Charles-Valentin Alkan"
    title = "Prélude Nr. 2"
    subtitle = ""
    subsubtitle = "pour piano ou orgue"
    piece = "Lento assai"
    opus  = "op. 31,2"
    date = "1846"
    lastupdated = "2010/02/08" 
    
    % Mutopia headers:
    mutopiatitle = "Prélude Nr. 2"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "Piano, Orgue"
    source = "Schlesinger, Berlin, 1887 [Nachdruck Brandus, 1847]"
    style = "Romantic"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Karsten Hens"
    maintainerEmail = "karsten.hens@gmail.com"
    maintainerWeb = "http://www.karsten-hens.de"
    moreInfo = ""

 footer = "Mutopia-2010/02/08-1742"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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
  \parallelMusic #'(voiceA voiceB voiceC voiceD) {
    \override MultiMeasureRest #'staff-position = #0
%1 A-Teil  
    \relative c {
      R2.
    } |
    \override MultiMeasureRest #'staff-position = #0
    \relative c {
      s2 s4
    } |
    \override MultiMeasureRest #'staff-position = #0
    \relative c {
      \manualTextPadding #1.0 c8^\markup{\italic{\bold {p} e cantabile}} 
      e g \grace{ bes16 [ c16 ]} bes8 [ as g ]
    } |
    \override MultiMeasureRest #'staff-position = #0
    \relative c' {
       s2 s4
    } |
%2  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as'8 [ g f ~ ] f4.^\markup{\italic{ten.}} 
    } |
    \relative c {
       s8 s8 s8 \pp <f, as c>8_\staccato r8 r8
    } |
%3
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      f8 as c \grace{ es16 [ f16 ]} es8 [ des c ]
    } |
    \relative c {
       s2 s4
    } |
%4  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      des'8 [ c bes ~ ] bes4.^\markup{\italic{ten.}} 
    } |
    \relative c {
       s8 s8 s8 <bes des f>8_\staccato d8 \rest d8 \rest
    } |
%5
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      bes'8 [ c des ~ ] des4. 
    } |
    \relative c {
       s8 s8 s8 <c e g>8_\staccato d8\rest d8\rest
    } |
%6
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as'8 [ bes c ~ ] c4. 
    } |
    \relative c {
       s8 s8 s8 <c f as>8_\staccato d8 \rest d8 \rest
    } |
%7
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      f8 [ g as ~ ] as4. 
    } |
    \relative c {
       s8 s8 s8 <b d f>8_\staccato d8 \rest d8 \rest
    } |
%8
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      e8 [ f g ~ ] g4. 
    } |
    \relative c {
       s8 s8 s8 <e, g c>8_\staccato r8 r8
    } |
%9  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      c8 e g 
      \once \override Stem #'stroke-style = #"grace" 
      \grace{ g8 } bes8 [ as g ]
    } |
    \relative c {
       s2 s4
    } |
%10  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as'8 [ g f ~ ] f4. 
    } |
    \relative c {
       s8 s8 s8 <f, as c>8_\staccato r8 r8
    } |
%11
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      f8^\markup{\italic{poco cres.}} as c 
      \once \override Stem #'stroke-style = #"grace" 
      \grace{ c8 } es8 [ des c ]
    } |
    \relative c {
       s2 s4
    } |
%12  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      des'8 [ c bes ~ ] bes4. 
    } |
    \relative c {
       s8 s8 s8 <bes des f>8_\staccato d8 \rest d8 \rest
    } |
%13  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      bes'8 [ c des ~ ] des4. 
    } |
    \relative c {
       s8 s8 s8 <des ges bes>8_\staccato d8 \rest d8 \rest
    } |
%14  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as'8 [ c des ~ ] des4. 
    } |
    \relative c {
       s8 s8 s8 <des f as>8_\staccato d8 \rest d8 \rest
    } |
%15  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      beses'8^\markup{\italic{poco dim.}} [ c des ( ] des4. )
    } |
    \relative c {
       s8 s8 s8 <des ges bes>8_\staccato d8 \rest d8 \rest
    } |
%16  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as'8 [ c des ~ ]  des4. ( 
    } |
    \relative c {
       s8 s8 s8 <des f as>8_\staccato d8 \rest d8 \rest
    } |
%17
    \relative c'' {
      s8 s8 s8  \grace { \slurDown g16 ([ as ]) } \slurUp bes8 \staccato ( as\staccato g\staccato ) 
    } |
    \relative c' {
      s8 s8 s8 c8 \staccato r8 r8
    } |
    \relative c {
      \change Staff = rechteHand \manualTextPadding #5.0 
      c'8_\markup{\italic{\bold{p} e ben legato}} ) e g  s8 s8 s8 
    } |
    \relative c {
       d4 \rest d8 \rest <e, c' g'>8_\staccato d'8 \rest d8 \rest
    } |
%18
    \relative c'' {
      as8 g f des c bes
    } |
    \relative c' {
      c8 \staccato r8 r8 g \staccato r8 r8 
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
       <f, c' f>8_\staccato c'8 \rest c8 \rest <bes f'>8_\staccato c8 \rest c8 \rest
    } |
%19  
    \relative c' {
      as8 [ bes c ~ ] c4.^\markup{\italic{ten.}} ~ 
    } |
    \relative c {
      s8 s8 s8 <f as>8_\staccato r8 r8 
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
       d4 \rest d8 \rest <c, c'>8_\staccato  d'8 \rest  d8 \rest
    } |
%20  
    \relative c' {
      c2. 
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      s2 s4  
    } |
    \relative c {
      d2.\rest 
    } |
%21  
    \relative c' {
      as8 [ bes c ~ ] c4.^\markup{\italic{ten.}} ~ 
    } |
    \relative c {
      s8 s8 s8 <e bes'>8_\staccato r8 r8 
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
       d4 \rest d8 \rest <c, f c'>8_\staccato d'8 \rest d8 \rest
    } |
%22  
    \relative c' {
      \slurDown c2.  ( 
    } |
    \relative c {
      s2 s4 \bar "||" \time 2/4 \key f \major
    } |
    \relative c {
      s2 s4  
    } |
    \relative c {
      d2.\rest \bar "||" \time 2/2 \key f \major
    } |
%23 B-Teil
    \relative c' {
      d4^\markup{\bold{L'istesso Tempo}} \staccato )  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4_\markup{\italic{molto dolce e leggiero}} <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c {
      \stemUp f,4 \staccato <f c'> \staccato <f c'> \staccato f, \staccato  
    } |
%24
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <g bes>4 \staccato <a c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%25
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%26
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <f, b>4 \staccato <g c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp g4 \staccato <g' d'> \staccato c \staccato c, \staccato  
    } |
%27
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 <g bes!>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%28
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <g bes>4 \staccato <a c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%29
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%30
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <f, b>4 \staccato <g c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp g4 \staccato <g' d'> \staccato c \staccato c, \staccato \bar "||"
    } |
%31
    \relative c'' {
      a4 \staccato  bes \staccato c4. \accent bes8  
    } |
    \relative c' {
      r4_\markup{\italic{poco cres.}} <d fis>4 \staccato <d fis>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp c4 \staccato <c' a'> \staccato <c a'> \staccato c, \staccato  
    } |
%32
    \relative c'' {
      c8 \staccato d \staccato c \staccato bes \staccato c \staccato bes \staccato a \staccato bes \staccato 
    } |
    \relative c' {
      r4 <d fis>4 \staccato <d g>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp c4 \staccato <c' a'> \staccato <c bes'> \staccato c, \staccato 
    } |
%33
    \relative c'' {
      g4 \staccato  a \staccato bes4. \accent a8  
    } |
    \relative c' {
      r4 <c e>4 \staccato <c e>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp c4 \staccato <c' g'> \staccato <c g'> \staccato c, \staccato  
    } |
%34
    \relative c'' {
      bes8 \staccato c \staccato bes \staccato a \staccato bes \staccato a \staccato g \staccato a \staccato 
    } |
    \relative c' {
      r4 <c e>4 \staccato <c f>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp c4 \staccato <c' g'> \staccato <c a'> \staccato c, \staccato 
    } |
%35
    \relative c' {
      <d f>4 \staccato <e g> \staccato <f as>4. \accent <e g>8  
    } |
    \relative c' {
      s2 s2
    } |
    \relative c {
      s2 s2  
    } |
    \relative c {
      <b, b'>4 \staccato <b' as'> \staccato <b as'> \staccato <b, b'> \staccato 
    } |
%36
    \relative c' {
      <f as>8 \staccato <g bes!> \staccato <f as> \staccato <e g> \staccato <f as> \staccato <e g> \staccato <d f> \staccato <e g> \staccato  
    } |
    \relative c' {
      s2 s2
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      <b b'>4 \staccato <b' as'> \staccato <b as'> \staccato <c, c'> \staccato 
    } |
%37
    \relative c' {
      <d f>4 \staccato <e g> \staccato <f as>4. \accent <e g>8  
    } |
    \relative c' {
      s2 s2
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      <b b'>4 \staccato <b' as'> \staccato <b as'> \staccato <b, b'> \staccato 
    } |
%38
    \relative c' {
      <f as>8 \staccato <g bes!> \staccato <f as> \staccato <e g> \staccato <f as> \staccato <e g> \staccato <d f> \staccato <e g> \staccato  
    } |
    \relative c' {
      s2 s2
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      <b b'>4 \staccato <b' as'> \staccato <b as'> \staccato <c, c'> \staccato \bar "||"
    } |
%39 (Wh. 23 - 30)
    \relative c' {
      d4 \staccato   e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 \p  <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%40
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <g bes>4 \staccato <a c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%41
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato 
       d'4 \rest^\markup{? \tiny {(vgl. TT.29/45)}}
    } |
%42
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <f, b>4 \staccato <g c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp g4 \staccato <g' d'> \staccato c \staccato c, \staccato  
    } |
%43
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 <g bes!>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%44
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <g bes>4 \staccato <a c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%45
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%46
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato f \staccato e \staccato d \staccato c \staccato 
      \bar "||" \time 6/8 \key f \minor
    } |
    \relative c' {
      r4 <f, b>4 \staccato <g c>4 \staccato r4 \bar "||" \time 6/8 \key f \minor
    } |
    \relative c {
      s2 s2  \bar "||" \time 6/8 \key f \minor
    } |
    \relative c, {
      \stemUp g4 \staccato <g' d'> \staccato c \staccato c, \staccato 
      \bar "||" \time 6/8 \key f \minor
    } |
%47 A'-Teil
    \relative c {
      R2. 
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      \change Staff = linkeHand \manualTextPadding #1.0 
      c8^\markup{\italic{\bold{p} e piacèvole}} e g \grace{ bes16 [ c16 ]} bes8 [ as g ]
    } |
    \relative c' {
       s2 s4
    } |
%48  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as'8 [ g f ~ ] f4. 
    } |
    \relative c {
       s8 s8 s8 \stemDown <f, as c>8 r8 r8
    } |
%49
    \relative c {
      s2 s4
    } |
    \relative c' {
      \stemUp f8 as! c \grace{ es16 [ f16 ]} es8 [ des c ]
    } |
    \relative c {
      R2.
    } |
    \relative c' {
       s2 s4
    } |
%50  
    \relative c'' {
      des8 [ c bes ~ ] bes4. 
    } |
    \relative c' {
       s8 s8 s8 \stemDown <bes des f>8 r8 r8
    } |
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
%51  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c' {
      bes8 [ c des ~ ] des4. 
    } |
    \relative c {
       s8 s8 s8 \stemDown <c e g>8 d8 \rest d8 \rest
    } |
%52  
    \relative c'' {
      as8 [ bes c ~ ] c4. 
    } |
    \relative c' {
       s8 s8 s8 \stemDown <c f as>8 r8 r8
    } |
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
%53  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      f8 [ g as ~ ] as4. 
    } |
    \relative c {
       s8 s8 s8 \stemDown <b d f>8 r8 r8
    } |
%54  
    \relative c' {
      e8 [ f g ~ ] g4. 
    } |
    \relative c' {
       s8 s8 s8 \stemDown <g c e!>8 r8 r8
    } |
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
%55
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      c8 e g \grace{ g16 [ c16 ]} bes8 [ as g ]
    } |
    \relative c' {
       s2 s4
    } |
%56  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as'8 [ g f ~ ] f4. 
    } |
    \relative c {
       s8 s8 s8 \stemDown <f, as c>8 r8 r8
    } |
%57
    \relative c {
      s2 s4
    } |
    \relative c' {
      \stemUp f8 as c \grace{ es16 [ f16 ]} es8 [ des c ]
    } |
    \relative c {
      R2.
    } |
    \relative c' {
      s2 s4
    } |
%58  
    \relative c'' {
      des8 [ c bes ~ ] bes4. 
    } |
    \relative c' {
       s8 s8 s8 \stemDown <bes des f>8 r8 r8
    } |
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
%59  
    \relative c'' {
      bes8 [ c des ~ ] des4. 
    } |
    \relative c' {
       s8 s8 s8 \stemDown <des ges bes>8 r8 r8
    } |
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
%60  
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c' {
      as8 [ c des ~ ] des4. 
    } |
    \relative c {
       s8 s8 s8 \stemDown <des f as>8 r8 r8
    } |
%61  
    \relative c'' {
      des8 [ e f ~ ] f4. 
    } |
    \relative c' {
      \manualTextPadding #3.0  s8_\markup{\italic{cres.}} s8 s8 \stemDown <f bes des>8 r8 r8
    } |
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
%62  
    \relative c {
      R2. \bar "||" \time 2/4 \key f \major
    } |
    \relative c {
      s2 s4 \bar "||" \time 2/4 \key f \major
    } |
    \relative c' {
      c8 [ e f ~ ] f4.^\markup{\italic{ten.}} ( \bar "||" \time 2/2 \key f \major
    } |
    \relative c {
       s8 s8 s8 \stemDown <f a c>8 r8 r8 \bar "||" \time 2/2 \key f \major
    } |
%63 B''-Teil
    \relative c'' {
      a4 \staccato  bes \staccato c4. \accent bes8  
    } |
    \relative c' {
      r4_\markup{\italic{\bold{p} e semi_scherzando}} <d fis>4 \staccato <d fis>4 \staccato r4
    } |
    \relative c {
      \stemUp c,4 \staccato ) <c' a'> \staccato <c a'> \staccato c, \staccato  
    } |
    \relative c {
      s2 s2  
    } |
%64
    \relative c'' {
      c8 \staccato d \staccato es \staccato f! \staccato es \staccato d \staccato c \staccato bes \staccato 
    } |
    \relative c' {
      r4 <fis c'>4 \staccato <g bes>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp c4 \staccato <c' a'> \staccato <c bes'> \staccato c, \staccato 
    } |
%65
    \relative c'' {
      g4 \staccato  a \staccato bes4. \accent a8  
    } |
    \relative c' {
      r4 <c e>4 \staccato <c e>4 \staccato r4
    } |
    \relative c {
      \stemUp c,4 \staccato <c' g'> \staccato <c g'> \staccato c, \staccato  
    } |
    \relative c {
      s2 s2  
    } |
%66
    \relative c'' {
      bes8 \staccato c \staccato des \staccato es \staccato des \staccato c \staccato bes \staccato a \staccato 
    } |
    \relative c' {
      r4 <e! bes'>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c, {
      \stemUp c4 \staccato <c' g'> \staccato <c a'> \staccato c, \staccato 
    } |
%67
    \relative c' {
      <d f>4 \staccato <e g> \staccato <f as>4. \accent b8 \rest
    } |
    \relative c {
      s2 s2  
    } |
    \relative c {
     \manualTextPadding #4.0 <b b,>4^\markup{\italic{rall.}} <b as'> \staccato <b as'>4 \staccato d4 \rest
    } |
    \relative c {
      s2 s2  
    } |
%68
    \relative c {
      R1^\fermataMarkup \bar "||"  \time 6/8 \key f \minor  
    } |
     \relative c {
      s2 s2  
    } |
   \relative c {
      R1^\fermataMarkup \bar "||"  \time 6/8 \key f \minor
    } |
    \relative c {
      s2 s2  
    } |
%69
    \relative c {
      R2. 
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      \change Staff = linkeHand \manualTextPadding #1.0 
      c8 \p e g 
      \slurDown \grace{ g16  ( [ as16 ]} 
      \slurUp bes8 \staccato ) (  [ as \staccato g \staccato ] )
    } |
    \relative c' {
       s2 s4
    } |
%70
    \relative c {
      R2. 
    } |
    \relative c {
      s2 s4
    } |
    \relative c' {
      as8 g f des c bes
    } |
    \relative c' {
       s2 s4
    } |
%71
    \relative c {
      R2.  
      \bar "||" \time 2/2
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as8 bes \tieDown c ~ c4. ~ 
      \bar "||" \time 2/2
    } |
    \relative c' {
       s2 s4
    } |
%72
    \relative c' {
      <g bes d>4 \p \staccato <g bes e> \staccato <f a f'>4. \accent bes'8\rest
      \bar "||" \time 6/8
    } |
    \relative c {
      s1
    } |
    \relative c {
      c1^\markup{\italic{ten.}}
      \bar "||" \time 6/8
    } |
    \relative c' {
       s1
    } |
%73
    \relative c {
      R2.  \bar "||" \time 2/2
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as!8 bes \tieDown c ~ c4. ~ \bar "||" \time 2/2
    } |
    \relative c' {
       s2 s4
    } |
%74
    \relative c' {
      <g bes d>4 \staccato <g bes e> \staccato <f a f'>4. \accent bes'8\rest
      \bar "||" \time 6/8
    } |
    \relative c {
      s1
    } |
    \relative c {
      c1^\markup{\italic{ten.}}
      \bar "||" \time 6/8
    } |
    \relative c' {
       s1
    } |
%75
    \relative c {
      R2.
    } |
    \relative c {
      s2 s4
    } |
    \relative c {
      as!8^\markup{\italic{dim.}} bes \tieDown c ~ c4. ~ 
    } |
    \relative c' {
       s2 s4
    } |
%76
    \relative c' {
      R2.^\fermataMarkup
      \bar "||" \time 2/2 \key f \major
    } |
    \relative c {
      s2.
    } |
    \relative c {
       \slurDown c2. (
      \bar "||" \time 2/2 \key f \major
    } |
    \relative c' {
       s2.
    } |
%77
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4 \pp <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c {
      \stemUp f,,4 \staccato ) <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
    \relative c {
      s2 s2  
    } |
%78
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato 
      f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <g bes>4 \staccato <a c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
%79
    \relative c' {
      d4 \staccato  e \staccato f4. \accent e8  
    } |
    \relative c' {
      r4  <g bes>4 \staccato <f a>4 \staccato r4
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f, \staccato  
    } |
    \relative c {
      s2 s2  
    } |
%80
    \relative c' {
      d8 \staccato e \staccato f \staccato g \staccato 
      f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      r4 <g bes>4 \staccato <a c>4 \staccato r4
    } |
    \relative c {
      s2 s2  
    } |
    \relative c,, {
      \stemUp f4 \staccato <f' c'> \staccato <f c'> \staccato f\rest  
    } |
%81
    \relative c' {
      f8 \staccato e \staccato d \staccato c \staccato 
      f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      s2 s2
    } |
    \relative c {
      s2 s2  
    } |
    \relative c {
      R1
    } |
%82
    \relative c' {
      f8 \staccato e \staccato d \staccato c \staccato 
      f \staccato e \staccato d \staccato c \staccato 
    } |
    \relative c' {
      s2 s2
    } |
    \relative c {
      s2 s2  
    } |
    \relative c {
      R1
    } |
%83
    \relative c'' {
      c1^\markup{\italic{ten.}} ~ 
    } |
    \relative c' {
      s2 s2
    } |
    \relative c {
      s2 s2  
    } |
    \relative c {
      R1
    } |
%84
    \relative c'' {
      c1 ~
    } |
    \relative c' {
      <c a'>8 \staccato \ppp f8 \rest f4 \rest f2 \rest
    } |
    \relative c {
      s2 s2  
    } |
    \relative c {
      \stemDown <f a>8 \staccato d8 \rest d4 \rest d2 \rest
    } |
%85
    \relative c'' {
      c1\fermata
    } \bar "||" |
    \relative c' {
      <a f'>8 \staccato f'8 \rest f4 \rest f2 \rest \fermata
    } \bar "||" |
    \relative c {
      s2 s2  
    } \bar "||" |
    \relative c, {
      \stemDown <f f'>8 \staccato d'8 \rest d4 \rest d2 \rest \fermata
    } \bar "||" |
  }    
}

\score {
  \context PianoStaff <<
    \music
    \new Staff = "rechteHand" {
      \clef treble
      \key f \minor
      \time 6/8
      <<
	\voiceA \\
	\voiceB
      >>
    }
    \new Staff = "linkeHand" {
      \clef bass
      \key f \minor
      \time 6/8
      <<
      \voiceC \\
      \voiceD
      >>
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
%  system-count = #6
}

