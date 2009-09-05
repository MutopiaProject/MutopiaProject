\version "2.10.33"

\header {
  title = "Fantaisie-Impromptu"
  composer = "Frédéric Chopin"
  opus = "Op. 66"
  copyright = "Public Domain"
  source = "Herrmann Scholtz (1845-1918)"
  style = "Classical"
  maintainer = "Guy D. Lederfein"
  maintainerEmail = "glederfein@gmail.com"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2009/09/05-1693"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%% NOTES %%%
% I have divided the piece (exculding intro of 4 bars) into 4 sections :
%
% A : bars 5-40
% B : bars 41-82
% A : bars 83-118
% C : bars 119-138
%%%%%%%%%%%%%


%%% RIGHT HAND %%%

%% Part A %%

partAright = \relative c'' {
  %bar 5&83
  gis16\p( a gis fisis gis cis e dis cis dis cis bis cis e gis) |
  r16 gis,( a gis fisis gis cis e dis cis dis cis bis cis e gis) |
  r16 a,(\< cis dis fis a cis dis\! 
  #(set-octavation 1) \once \override Staff.OttavaBracket #'padding = #2.0
  b'\> a gis fis e dis fis cis)\! #(set-octavation 0) |
  bis( dis a gis fis a e dis) fis( cis bis dis a gis b a~) |
  %bar 9&87
  a16\p gis( a gis fisis gis cis e dis cis dis cis bis cis e gis) |
  \setTextCresc r\< gis,( ais gis fisis gis cis e dis cis dis cis bis cis e gis\!) |
  \setHairpinCresc dis(\< e dis cisis dis b' ais gis fisis\!) e'(\> dis cis b ais gis fisis\!) |
  \setTextDim ais(\> gis b cisis,) e( dis gis ais,) cis( b dis fisis,) ais( gis fisis gis\!) |
  \break
  
  %bar 13&91
  gis16->\f( gis' bis, cis) fis,->( fis' bis, cis) eis,->( eis' bis cis) fis,->( fis' bis, cis) |
  cis,->( cis' fis, a) dis,->( dis' fis, a) e->( e' gis, b) gis->( gis' b, e) |
  gis,->( gis' bis, cis) fis,->( fis' bis, cis) eis,->( eis' bis cis) fis,->( fis' bis, cis) |
  eis,->( eis' b dis) fis,->( fis' b, dis) a->( a' b, e) gis,->( gis' b, e) |
  %bar 17&95
  gis,16(\p gis'-> bis, cis) fis,( fis'-> bis, cis) eis,( eis'-> bis cis) fis,( fis'-> bis, cis) |
  \once \override DynamicLineSpanner #'staff-padding = #4
  \setTextCresc cis,\<( cis'-> fis, a) dis,( dis'-> fis, a) e( e'-> gis, b) gis( gis'-> b, e) |
  gis,( gis'-> bis, cis) fis,( fis'-> bis, cis) dis\!( dis'-> fis, a) cis,( cis'-> fis, a) |
  %bar 20&98
  cis,\>( cis'-> dis, fis) bis,( bis'-> dis, fis\!) \setTextDim 
  bis,\>( bis'-> dis, fis) bis,( bis'-> dis, fis) |
  c( c'-> dis, fis) b,( b'-> dis, fis) b,( b'-> dis, fis) ais,( ais'-> dis, fis) |
  ais,( ais'-> dis, fis) \repeat unfold 3 {a,( a'-> dis, fis)} |
  c\!( c' dis, fis) b,( b' dis, fis) b,( b' dis, fis) ais,( ais' dis, fis) |
  ais,( ais' dis, fis) 
  \once \override DynamicLineSpanner #'staff-padding = #4
  a,_\markup{\italic "rit."}\>( a' dis, fis) a,( a' dis, fis) gis,( gis' dis fis\!) |
  \break

  %bar 25&103
  \once \override TextScript #'staff-padding = #2.5
  r16^\markup{\italic "a tempo"} gis,\p( a gis fisis gis cis e dis cis dis cis bis cis e gis) |
  r16 gis,( a gis fisis gis cis e dis cis dis cis bis cis e gis) |
  r16 a,(\< cis dis fis a cis dis\!
  #(set-octavation 1) \once \override Staff.OttavaBracket #'padding = #2.0
  b'\> a gis fis e dis fis cis)\! #(set-octavation 0) |
  bis( dis a gis fis a e dis) fis( cis bis dis a gis b a~) |
  %bar 29&107
  a gis( a gis fisis gis cis e dis cis dis cis bis cis e gis) |
  e( dis e dis cisis dis fis a) fis( eis fis eis disis eis gis cis) |
  r cis,( d cis bis cis fis a fis eis fis eis disis eis gis cis) |
  gis( fis gis fis eis fis a cis) a( gis a gis fisis gis bis dis) |
  gis,( a gis fisis gis) e'->( dis d cis c b ais a gis g fis) |
  e( fis e dis e) e'->( dis d cis c b ais a gis g fis |
  %bar 35&113
  gis\f) r gis'->( g fis eis e dis d cis c b ais a gis g |
  fis\< eis e dis d cis c b ais a gis g fis e dis cis\! |
  %avoid collision by increasing space between staves
  \overrideProperty
  #"Score.NonMusicalPaperColumn"
  #'line-break-system-details
  #'((fixed-alignment-extra-space . 3))
  \break
  %bar 37&115
  gis8)-|\sf r 
  #(set-octavation 1) \once \override Staff.OttavaBracket #'padding = #2.0
  a'''16->(\ff gis e' e,) fis->( e cis' cis,) dis->( cis gis' gis,) #(set-octavation 0) |
  a( gis e' e,) fis( e cis' cis,) dis( cis gis' gis,) a( gis e' e,) |
  fis( e cis' cis,) dis( cis gis' gis,) dis'( cis gis' gis,) dis'( cis a' a,) |
  dis( cis gis' gis,) dis'( cis fisis fisis,) dis'( cis gis' gis,) dis'( bis gis' gis,) |
}

%% Part B %%

partBright = \relative c'' {
  %Largo
  \tempo 4 = 60
  \key des \major
  \break
  %bar 41
  r1^\markup{\huge \bold "Largo"}_\markup{\large \italic "pesante"} |
  \set decrescendoText = "poco dim."
  \set decrescendoSpanner = #'dashed-line
  r1\> |
  \tempo 4 = 90
  aes2\!^\markup{\huge \bold \pad-markup #2.0 "Moderato cantabile"}_\markup{\large \italic "sotto voce"}( bes8\trill aes\< des ees |
  f2) aes\!->( |
  ges4 f ees f8.-> des16 |
  aes2) bes~->( |
  bes ces8\trill bes\< ees f) |
  ges4\!( f ees f) |
  des2( \grace{c32[ des ees des]} f4.\> ees8\! |
  ees1->) |
  %bar 51
  aes,2^\markup{\italic "a tempo"}( bes8\trill aes\< des ees |
  f2) aes\!->( |
  ges4 f ees \grace{f16[ ees des ees]} f8.->\> des16\! |
  aes2) bes~->( |
  bes ces8\trill bes\< ees f) |
  ges4\!( f ees f |
  des4.) g,32( aes bes aes f'4.\> ees8\!) |
  ees2->( des4) r8 aes'8( |
  %bar 59
  aes,2)\sf bes8.(\trill a16\< bes8. c16 |
  aes8)\! r8 c'4~(\sf 
  \once \override DynamicLineSpanner #'staff-padding = #2
  \times 4/7 {c8\> bes aes fes des bes8.)\! aes'16(} |
  ees,2)-> \acciaccatura{c'8} bes8.(\> a16 bes8. ees16 |
  aes,4)\! r4 bes4(\pp 
  \once \override DynamicLineSpanner #'staff-padding = #3
  \times 2/3 {des8\> c bes\!)} |
  %bar 63
  aes2( bes8\trill aes\< des ees |
  f2) aes\!->( |
  ges4 f ees \grace{f16[ ees des ees]} f8.->\> des16\! |
  aes2) bes~->(\rfz |
  bes ces8\trill bes\< ees f) |
  ges4\!( f ees f |
  des4.) g,32( aes bes aes f'4.\> ees8\!) |
  ees2->( des4) r8 aes'8( |
  %bar 71
  aes,2)\sf bes8.(\trill a16\< bes8. c16 |
  aes8)\f r8 c'4~(\sf 
  \once \override DynamicLineSpanner #'staff-padding = #2
  \times 4/7 {c8\> bes aes fes des bes8.)\! aes'16(} |
  ees,2)-> \acciaccatura{c'8} bes8.(\> a16 bes8. ees16 |
  aes,4)\! r4 bes4(\pp 
  \once \override DynamicLineSpanner #'staff-padding = #3
  \times 2/3 {des8\> c bes\!)} |
  %bar 75
  aes2( bes8\trill aes\< des ees |
  f2) aes\!->( |
  ges4 f ees \grace{f16[ ees des ees]} f8.->\> des16\! |
  aes2) bes~->(\rfz |
  bes ces8\trill bes\< ees f) |
  ges4\!( f ees f |
  des4.) g,32( aes bes aes f'4.\> ees8\!) |
  \once \override TextSpanner #'edge-text = #'("riten." . "")
  ees1\p\startTextSpan |
}

%% Part C %%

partCright = \relative c' {
  %bar 119
  \repeat unfold 2 {
    dis16( cis gis' gis,) a'(\ff gis e'-> e,) a( gis e'-> e,) a( gis dis'-> dis,) |
    a'( gis dis'-> dis,) a'( gis cis-> cis,) e(\p dis gis-> gis,) e'( dis gis-> gis,) |
  }
  %bar 123
  dis'( cis gis'-> gis,) a'(\ff gis e'-> e,) fis( e cis'-> cis,) a'( gis e'-> e,) |
  dis( cis gis'-> gis,) a'( gis e'-> e,) fis( e cis'-> cis,) a'( gis e'-> e,) |
  \setTextDim fis(\> e cis' cis,) a'( gis cis cis,) fis( e cis' cis,) a'( gis cis cis,) |
  fis( e cis' cis,) a'( gis cis cis,) fis( e cis' cis,) a'( gis cis cis,) |
  dis( cis gis' gis,) dis'( cis gis' gis,) dis'(\p cis gis' gis,) dis'( cis gis' gis,) |
  dis'( cis gis' gis,) dis'( cis gis' gis,) dis'( cis gis' gis,) dis'( cis gis' gis,) |
  %bar 129
  dis'(\pp^\markup{\italic "poco a poco più tranquillo"} cis gis' gis,) dis'( cis gis' gis,) dis'( cis gis' gis,) dis'( cis gis' gis,) |
  \repeat unfold 5 { dis'( cis gis' gis,) dis'( cis gis' gis,) dis'( cis gis' gis,) dis'( cis gis' gis,) | }
  dis'( cis gis' eis,) dis'( cis gis' eis,) dis'( cis gis' eis,) dis'( cis gis' eis,) |
  \tempo 4 = 120
  \once \override TextSpanner #'edge-text = #'("riten." . "")
  eis'(\startTextSpan dis gis gis,) eis'( dis gis gis,) eis'( dis gis gis,) eis'( dis gis gis,) |
  <fis gis bis dis>1~(\stopTextSpan\ppp\arpeggio |
  <eis gis cis>1)\arpeggio |
}

%% Total %%

upper = \relative c'' {
  \clef treble
  \key cis \minor
  \time 4/4
  \override Score.MetronomeMark #'transparent = ##t
  \tempo 2 = 84
  r1 |
  r1 |
  r1 |
  r1 |
  %bar 5
  r16 \partAright
  %bar 41
  \partBright
  \key cis \minor
  \tempo 2 = 84
  %bar 83
  r16^\markup{\huge \bold \pad-markup #2.5 "Presto"}\stopTextSpan
  \partAright
  %bar 119
  \partCright
}


%%% LEFT HAND %%%

%% reoccurring phrases & shortcuts %%

fixTuplets = {
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'transparent = ##t
}

%pedal shortcuts
pd = \sustainDown
pu = \sustainUp

multipleOne = \relative c' {
  <<
    \relative c'{
      s2. \change Staff=upper aes'4-> \change Staff=lower |
      ges4-> f-> ees-> des-> |
    }
    \\
    \relative c'{
      \fixTuplets
      \times 4/6 {des,8[(\pd aes' des f des aes)]\pu des,[(\pd aes' f' \change Staff=upper aes \change Staff=lower f aes,)]\pu} |
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 {ges'(\pd ees aes,)\pu f'(\pd des aes)\pu ees'(\pd c aes)\pu des(\pd aes f)\pu} |
    }
  >>
  \times 4/6 {
    aes,8(\pd ees' aes c aes ees)\pu ges,(\pd ges' bes des bes ges)\pu |
    bes,(\pd f' bes d bes f)\pu bes,(\pd bes' d aes' d, bes)\pu |
    ees,[(\pd ges' bes,)]\pu f(\pd f' a,)\pu ges[(\pd ees' bes)]\pu aes(\pd ges' c,)\pu |
  }
}

multipleTwo = \relative c' {
  aes,(\pd ees' aes c aes ees)\pu aes,(\pd ees' g des' g, ees)\pu |
  aes,(\pd ees' aes c aes ees)\pu des(\pd aes' des fes des aes)\pu |
  ees,(\pd ees' aes c aes ees)\pu ees,(\pd ees' g des' g, ees)\pu |
  aes,(\pd ees' aes c aes ees)\pu ges,(\pd ges' bes des bes ges)\pu |
}


%% part A %%

partAleft = \relative c {
  \times 4/6 {
    %bar 5&83
    cis(\pd gis' cis e cis gis) e( gis cis e cis gis)\pu |
    cis,(\pd gis' cis e cis gis) e( gis cis e cis gis)\pu |
    dis(\pd a' cis fis cis a) fis( cis' dis a' dis, cis)\pu |
    gis,(\pd dis' fis bis fis dis gis, dis' fis bis fis dis)\pu |
    %bar 9&87
    cis(\pd gis' cis e cis gis) e( gis cis e cis gis)\pu |
    cis,(\pd gis' ais e' ais, gis)\pu e(\pd gis ais cis ais gis)\pu |
    dis(\pd gis b dis b gis)\pu dis(\pd ais' cis fisis cis ais)\pu |
    gis,(\pd dis' gis b gis dis)\pu gis,(\pd dis' gis b gis dis)\pu |
    %bar 13&91
    \repeat unfold 3 {
      a(\pd cis fis a fis cis)\pu a(\pd cis fis a fis cis)\pu |
      b(\pd fis' a b a fis)\pu \stemDown e,(\pd b' e gis e b)\pu |
    }
    %bar 19&97
    a(\pd cis fis a fis cis)\pu a(\pd dis fis a fis dis)\pu |
    gis,(\pd dis' fis bis fis dis) gis,( dis' fis bis fis dis)\pu |
    a->(\pd dis fis b fis dis)\pu ais->(\pd dis fis ais fis dis)\pu |
    bis->(\pd dis fis a fis dis) bis( dis fis a fis dis)\pu |
    a->(\pd dis fis b fis dis)\pu ais->(\pd dis fis ais fis dis)\pu |
    b->(\pd dis fis a fis dis)\pu bis->(\pd dis fis gis fis dis)\pu |

    %bar 25&103 
    cis(\pd gis' cis e cis gis) e( gis cis e cis gis)\pu |
    cis,(\pd gis' cis e cis gis) e( gis cis e cis gis)\pu |
    dis(\pd a' cis fis cis a) fis( cis' dis a' dis, cis)\pu |
    gis,(\pd dis' fis bis fis dis gis, dis' fis bis fis dis)\pu |
    %bar 29&107
    cis(\pd gis' cis e cis gis) e( gis cis e cis gis)\pu |
    fis(\pd cis' dis a' dis, cis)\pu \clef treble gis(\pd cis eis b' eis, cis)\pu |
    a(\pd cis fis a fis cis)\pu gis(\pd cis eis b' eis, cis)\pu |
    a(\pd cis fis a fis cis)\pu \clef bass bis,(\pd fis' gis dis' gis, fis)\pu |
    cis(\pd gis' cis e cis gis)\pu dis(\pd gis bis fis' bis, gis)\pu |
    cis,(\pd gis' cis e cis gis)\pu fis(\pd cis' dis a' dis, cis)\pu |
  }
  %bar 35&113
  <gis cis e gis>8 r8 r4 <fisis cis' e a>4\pd r4\pu |
  r1 |
  %bar 37&115
  <gis,, gis'>8-|\pd r \clef treble <e''' e'>4 <cis cis'> <gis gis'> |
  \clef bass <e e'> <cis cis'> <gis gis'> <e e'> |
  <cis cis'> <gis gis'> <gis gis'>\pd <a a'>\pd |
  <gis gis'>\pd <fisis fisis'>\pd <gis gis'>2\pd |
}


%% part B %%

partBleft = \relative c, { 
  %Largo
  \key des \major
  \times 4/6 {
    %bar 41
    des8(\<\pd aes' des f aes des\! f\> des aes f des aes)\! |
    des,( aes' des f aes des f des aes f des aes~)\pu |
    <des, aes'>\pd aes''[( c ees c aes)] des,( aes' c ges' c, aes)\pu |
  }
  \multipleOne
  \times 4/6 {
    %bar 49
    des,(\pd aes' des f des aes)\pu ees(\pd g des' ees des g,)\pu |
  }
  <<
    \relative c'{
      s2 s4^\markup{\large \italic "riten."} bes4-> |
    }
    \\
    \relative c'{
      \fixTuplets
      \times 4/6 {aes,8[(\pd ees' aes c aes ees)]\pu aes,[(\pd ees' ges bes ges ees)]\pu} |
    }
  >>
  %bar 51
  \times 4/6 {aes,(\pd ees' aes c aes ees)\pu aes,(\pd aes' c ges' c, aes)\pu} |
  \multipleOne
  \times 4/6 {
    des,(\pd aes' des f des aes)\pu des,(\pd aes' c ges' c, aes)\pu |
    des,(\pd aes' c ges' c, aes)\pu des,(\pd aes' des f des aes)\pu |
    %bar 59
    \multipleTwo
    %bar 63
    aes,(\pd aes' c ees c aes)\pu ees(\pd aes c ges' c, aes)\pu |
  }
  \multipleOne
  \times 4/6 {
    des,(\pd aes' des f des aes)\pu des,(\pd aes' c ges' c, aes)\pu |
    des,(\pd aes' c ges' c, aes)\pu des,(\pd aes' des f des aes)\pu |
    %bar 71
    \multipleTwo
    %bar 75
    aes,(\pd ees' aes c aes ees)\pu aes,(\pd aes' c ges' c, aes)\pu |
  }
  \multipleOne
  \times 4/6 {
    des,(\pd aes' des f des aes)\pu des,(\pd aes' c ges' c, aes)\pu |
    des,(\pd aes' c ges' c, aes)\pu des,(\pd aes' c ges' c, aes)\pu |
  }
}


%% part C %%

partCleft = \relative c {
  %bar 119
  \repeat unfold 4 { cis,8(\pd e' cis gis)\pu cis,(\pd fis' bis, gis)\pu | }
  %bar 123
  \repeat unfold 2 { cis,(\pd e' cis gis)\pu cis,(\pd gis'' cis, gis)\pu | }
  \repeat unfold 2 { cis,(\pd e' cis gis)\pu cis,(\pd e' cis gis)\pu | }
  cis,4\pd r4 r2\pu |
  r1|
  %avoid collision by increasing space between staves
  \overrideProperty
  #"Score.NonMusicalPaperColumn"
  #'line-break-system-details
  #'((fixed-alignment-extra-space . 3))
  \break
  %bar 129
  <cis gis'>1(\pd^\markup{\italic  "il canto un poco marcato"} |
  ais'4\pu gis cis\< dis |
  eis1)\! |
  gis1->(\pd |
  fis2\pu eis |
  dis2 eis4 cis |
  gis1)\pd |
  <gis, gis'>1\pd |
  <cis gis'>1\arpeggio\pd |
  <cis gis'>1\arpeggio\pd |
}


%% Total %%

lower = \relative c {
  \clef bass
  \key cis \minor
  \time 4/4

  %create automatic beams every 1/2 note
  #(revert-auto-beam-setting '(end 1 12 4 4) 1 4)
  #(revert-auto-beam-setting '(end 1 12 4 4) 3 4)
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
 
  \dynamicUp
  <gis gis'>1~\sf\pd |
  <gis gis'>\pu |
  \times 4/6 {
    <cis, cis'>8\f\pd gis''([ cis e cis gis] 
    \once \override DynamicLineSpanner #'staff-padding = #3
    cis,\> gis' cis e cis gis |
    cis, gis' cis e cis gis cis, gis' cis e cis gis\!)\pu |
    %remove all tumplet numbers and brackets from now on
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'transparent = ##t
  }
  %bar 5
  \partAleft
  %bar 41
  \partBleft
  \key cis \minor
  \time 4/4
  %bar 83
  \partAleft
  %bar 119
  \partCleft
}


%%% SCORE %%%

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi {
    \context {
      \Score
      midiMinimumVolume = #0.4
    }
  }
  \layout{}
}
