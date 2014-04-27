\version "2.18.2"
\header {
  title = "Capricho Árabe"
  composer = "Francisco Tárrega"
  mutopiacomposer = "TarregaF"
  mutopiainstrument = "Guitar"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "Valencia: Antich y Tena"
  % From Boije 827
  date = "1892"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2014/04/22-1951"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = 7\mm
  bottom-margin = 6\mm
}

%% http://lsr.di.unimi.it/LSR/Item?id=616
stringNumberSpanner =
  #(define-music-function (parser location StringNumber) (string?)
    #{
      \override TextSpanner.style = #'dashed-line
      \override TextSpanner.dash-period = #2.0
      \override TextSpanner.font-size = #-5
      \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
      \override TextSpanner.bound-details.left.text = \markup { \circle \number $StringNumber }
    #})

% hide string numbers across a span of music
hideStrNo =
  #(define-music-function (parser location arg) (ly:music?)
    #{
      \omit Voice.StringNumber
      $arg
      \undo \omit Voice.StringNumber
    #})

tspanner =
  #(define-music-function (parser location arg) (string?)
    #{
      \override TextSpanner.style = #'dashed-line
      \override TextSpanner.dash-period = #2.0
      \override TextSpanner.font-size = #-2
      \override TextSpanner.bound-details.left.stencil-align-dir-y = #DOWN
      \override TextSpanner.bound-details.left.text = \markup{\italic $arg }
    #})

% Barre glyph code from snippets (modified slightly)

%% Syntax: \bbarre #"text" { notes } - text = any number of box
bbarre =
#(define-music-function (barre location str music) (string? ly:music?)
   (let ((elts (extract-named-music music '(NoteEvent EventChord))))
     (if (pair? elts)
         (let ((first-element (first elts))
               (last-element (last elts)))
           (set! (ly:music-property first-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction -1)
                       (ly:music-property first-element 'articulations)))
           (set! (ly:music-property last-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction 1)
                       (ly:music-property last-element 'articulations))))))
   #{
       \textSpannerUp
       \once \override TextSpanner #'font-size = #-2
       \once \override TextSpanner #'font-shape = #'upright
       \once \override TextSpanner #'staff-padding = #3
       \once \override TextSpanner #'style = #'line
       \once \override TextSpanner #'to-barline = ##f
       \once \override TextSpanner #'bound-details =
            #`((left
                (text . ,#{ \markup{\concat{ #str " " }} #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . -4))
	       (right
		(text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
		(Y . 0)
		(padding . 0.25)
		(attach-dir . 2)))
       $music
   #})


\layout {
%{
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
  }
%}
  \context {
    \Staff
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
  \context {
    \Dynamics
    \override DynamicTextSpanner #'style = #'none
  }
}

global = {
  \time 3/4
  \key d \minor
}

myfingering = {
  \set fingeringOrientations = #'(left)
  \set stringNumberOrientations = #'(right)
}

upperVoice = \relative c' {
  \voiceOne
  \dynamicUp
  \myfingering
  \repeat unfold 2 {
    \harmonicsOn \hideStrNo { <a\4>2.-\markup{\italic {\fontsize #-2 {\halign #-0.5 "harm. 7"}}} }\harmonicsOff |
    \slurDown
    <g''-4>16( <e-1>) <d-2>( <cis-1>) <e-4>( <d-2>) <bes-2>( <a-1>) <c-4>( <bes-2>) \hideStrNo{ <g-1\2> <e-1\2> } |
    \slurNeutral
    \hideStrNo{ <e\2>2->\bbarre #"III" { d8. <e\2>16 } } |
    <cis a>2 r4 |
    \break
  }
  <a,\0>4. <cis-3>8 <e-1> <g-4\4> |

  \set minimumFret = #4
  \stringNumberSpanner "4"
  \textSpannerDown
  \hideStrNo{ <bes-4\4>8\startTextSpan <a-3>\glissando \slashedGrace <e'-4\4> <e\4>4. <d-2\4>8\stopTextSpan } |
  \set minimumFret = #0
  \hideStrNo{ \tuplet 3/2 { <cis-1\4>16\startTextSpan <d-2\4> <e-4\4> <d-2\4> <cis-1\4> <bes\4> }
              \tuplet 3/2 { <a\4> <c\4> <bes\4> <a\4> <g\4> <f\4> }
              <e\4>32 <d\4>\stopTextSpan cis bes a g f
            } \afterGrace <e-1>32\glissando <bes'-2\6>8 |
  <bes-2\6>2 <a\6>4 |

  \bar "||" \time 4/4

  \repeat unfold 2 {
    r8 <d' a f> r <d a> r <cis a> r <cis a g\4> |
  }
  \bar "||"
  \slashedGrace f8\glissando a4 a->~ a8 <g\2>16 a( \grace { bes32 c } bes16) a bes c |
  a4 a~-> a8 \hideStrNo{ <g\2>16 a( \grace{bes32 c} bes16) a bes c } |
  \acciaccatura c8 c4 c r8\bbarre #"VII" { <gis\2>16 <a\2> b <cis-3> <d-4> <e-3> } |
  \bbarre #"X" { <f-4>8 f16( e) d4 r16 } <cis-2>( <e-4>) cis
    \set minimumFret = #7
    <bes-4\2> <g-1>
    <e-2\3> <cis-4\4> |
    \set minimumFret = 0

  \bbarre #"VII" { <a'-3>4 <a-4>-> r8 <g\2-4>16( } <f-2\2>) <e-1\2>( <f\2>) <g\2>( <e\2>) |
  \set minimumFret = #5
  \slashedGrace <d-2>8\< <eis\2>4 <fis-4\2>\! \bbarre #"V" { d,16_\markup{\halign #-1.5 \italic "poco cresc."} a' c fis a c } ees16.\fermata d32 |
  \set minimumFret = #0

  \tspanner "acel: "
  \textSpannerDown
  \acciaccatura {c16 d} c8 <bes g> a[ <g e>8] <bes-2>16( <a-1>)\startTextSpan <d-2>( <cis-1>) e( <d-2>) <f-2>( <e-1>) |
  <g-4>16( <e-1>) <d-2>( <cis-1>) <e-4>( <d-2>) <bes-2>(\stopTextSpan <a-1>) <c-4>( <bes-2>) <g-4\2> <e> <d-2>^\markup{\italic "ten."} <bes-1> <cis-2> <a-1> |

  r8^\markup{\italic "a tempo."} <d f,> r q r <ees g,\4> r <cis a e> |
  r8 <d f,> r q r <ees g,> r <cis a e> |
  \bar "||"
  \slashedGrace f8 a4 a~ a8 g16 a \acciaccatura{ bes32 c } bes16 a bes c |

  a4 a~ a8 g16 a \acciaccatura{ bes32 c } bes16 a bes c |
  \acciaccatura c8 a4 a r8 \bbarre #"VII" { <gis\2>16 <a\2> b cis d } e |

  \set minimumFret = #8
  \bbarre #"X" { f8 f16( e) d4 b16\rest <cis-2>16( } <e-4>)cis <bes-4\2> g <e-2\3> <cis\4> |
  \set minimumFret = #5
  \bbarre "VII" { <a'-3\2>4 \hideStrNo {<a-4\2>} r8 <g-4>16( } <f-2\2>) <e-1\2>16[( f) <g\2>( e)] |
  \set minimumFret = #5

  \slashedGrace d8 <eis\2>4 <fis\2> \bbarre #"V" { d,16 a' c fis a } c ees16.\fermata d32 |
  \set minimumFret = #0
  
  \acciaccatura {c16 d} d8 <bes g> \bbarre #"III" { a[ <g e>8] } bes16(
    \tspanner "acel: "
    \textSpannerDown
    a)\startTextSpan d( cis) e( d) f( e)\stopTextSpan |

  g16( e) d( cis) e( d) bes( a) c( bes) <g\2> <e-0> d^\markup{\italic "ten."} bes cis a |
  r8 <d f,> r q r <ees g,> r <cis a e> |
  r8\< <d f,>r q r <d bes> r <e bes g>\! |
  \bar "||"

  \set minimumFret=#5
  \bbarre #"III" { c4 c( c16) d e f \acciaccatura{e32 f} e16-> c d e |
  \set minimumFret=#3
  \acciaccatura{d16 e} d8 <c a>4 q8 } r \bbarre #"V" { g'16 a \acciaccatura{bes16 c} bes8 a16 g |
  \set minimumFret=#5
  \slashedGrace a8 c4 f,-> f8 d16 e \acciaccatura{f16 g} f8-> e16 d } |
  \set minimumFret=#0

  \bbarre #"III" { \acciaccatura {g16 a} g4 <c,\2>-> } c,16 <bes'\3> d e d( c) bes c, |
  c'4 c c16 d e f \acciaccatura {e32 f} e16 c d e |
  \bbarre #"III" { \acciaccatura {d16 e} d8 <c a>4-> q8 } r16 \bbarre #"V" { \set minimumFret=#5 bes c( d) e f g bes } |
  \set minimumFret=#0

  \bbarre #"V" { \acciaccatura{bes32 c bes} a4~ a r16 } d16( bes) <g\2> e d bes( g) |
  a,16 e' a cis e a cis e r bes( g) <e-3\2>\glissando <d-3\2> bes( g) <e-1> |

  \tspanner "molto cresc: "
  \textSpannerDown
  a,16 e' a cis e a a a a a,, ais b\startTextSpan c\< cis d dis |
  e16 f fis g gis a bes b c cis d dis \set minimumFret=#5
    \tuplet 5/4 { <e\2>16[ f fis g gis\!\stopTextSpan ] } |
  \set minimumFret=#0

  \key d \major
  \bbarre #"VII" { a4 a~ a16 b cis d \acciaccatura{ cis32 d } cis16 a b cis |
  \acciaccatura{ b16 cis } b8 a4. r8 } \set minimumFret=5 e16 fis \acciaccatura{ g16 \hideStrNo{<a\2>} } g8 fis16 e |
  \set minimumFret=#0
  \bbarre #"VII" { \slashedGrace{ \hideStrNo{ <fis\2>8 }} \set minimumFret=#7 <a\2>4 d, r8 }
    \bbarre #"II" { \set minimumFret=#2 b16 cis \acciaccatura{ d16 e } d8 cis16 b } |

  \bbarre #"II" { \slashedGrace{ \hideStrNo{ <cis\2>8 }} <e\2>4 a, r8 gis'16\glissando } a cis( b) <g\2> <e-0> |
  \bbarre #"VII" { \slashedGrace{ \hideStrNo{ <fis\2>8 }} <a\2>4 a4~ a16 b cis d \acciaccatura{ cis32 d } cis16 a b cis } |
  \bbarre #"VII" { \acciaccatura{ b16 cis } b8 <a d,>4. dis,,16( } <fis\5>) \hideStrNo{ <a\4>( } <bis\4>) <dis\3> <fis\2> <a\2> <bis\2> |

  \bbarre #"VII" { cis4 cis r16 } <fis-4> <e-3> <d-1> <b-3\2> <gis-1\2> <e-2> <d-2\2> |
  \tuplet 6/4 { <d-2>16( <cis-1>) <cis-1>\glissando \hideStrNo{ <b'-4\2> <b-4\2>( <a-2\2>) } }
    \tuplet 6/4 { \hideStrNo{ <a-2\2>\glissando <g-2\2> <g-2\2>( <fis-1\2>) <fis-1\2>( <e-3\2>) } }
    \tuplet 6/4 { \hideStrNo{ <e-3\3>( <d-1\3>) <d-1\3>( <cis-4\3>) } \hideStrNo{ <cis-4\4>( <b-3\4>) } }
    \tuplet 6/4 { \hideStrNo{ <b-3\4>( <bes-2\4>) <bes-2\4>(_\markup{\italic{"rit."}} <a-1\4>) <a-1\4>( } <a'-4\2>) } |

  \bbarre #"VII" { a4 a~ a16 b cis d \acciaccatura{ cis32 d } cis16 a b cis } |
  \acciaccatura{ b16 cis } \bbarre #"VII" { b8 a4. r8 } \set minimumFret=5 e16 fis \acciaccatura{ g16 \hideStrNo{<a\2>} } g8 fis16 e |
  \set minimumFret=#0
  \bbarre #"VII" { \slashedGrace{ \hideStrNo{ <fis\2>8 }} \set minimumFret=#7 <a\2>4 d, r8 }
    \set minimumFret=#2 \bbarre #"II" { b16 cis \acciaccatura{ d16 e } d8 cis16 b } |

  \bbarre #"II" { \slashedGrace{ \hideStrNo{ <cis\2>8 }} <e\2>4 a, r8 } gis'16\glissando a cis( b) <g\2> <e-0> |
  \bbarre #"VII" { \slashedGrace{ \hideStrNo{ <fis\2>8 }} <a\2>4 \hideStrNo{ <a\2>4~ } a16 b cis d \acciaccatura{ cis32 d } cis16 a b cis } |
  \acciaccatura{ b16 cis } \hideStrNo{ b8 <a d,\3>4. d,,16( <fis\5>) <a\4> <d\3> <fis\2> <a\2> } e'16.\fermata d32 |

  \acciaccatura{ d16 e } d8 <e, b>4 q8 r16 b16 cis d\glissando <a'\2>8.\fermata <g\2 b,\4>16 |
  \tuplet 3/2 { <g b,\4>8( a\2 g\2) } <fis\2 a,\4>2 <e\2 cis\3 g\4>4 |
  \bar "||"
  \key d\minor
  d4 r8 <d fis,>8 r <e b g> r \hideStrNo { <cis\3 g> } |

  r8 <d f,> r q r <ees g,> r <cis a e> |
  \bar "||"
  \set minimumFret=#5
  \acciaccatura{ \hideStrNo{ <f\1>8 } } a4 a~ a8 g16 a \acciaccatura{ bes32 c } bes16 a bes c |
  a4 a~ a8 g16 a \acciaccatura{ bes32 c } bes16 a bes c |
  \set minimumFret=#0

  \acciaccatura c8 c4 c r8 <gis\2>16 <a\2> b cis d e |
  \bbarre #"X" { <f-4>8 f16( e) d4 r16 } <cis-2>( <e-4>) cis
    \set minimumFret=#7
    <bes\2> g
    <e\3> <cis\4> |

  \set minimumFret=#5
  \bbarre #"VII" { <a'-3\2>4 \hideStrNo{ <a-4\2> } r8 } <g-4>16( <f-2\2>) <e-1\2>( f) <g\2>( e) |
  \set minimumFret=#0
  \acciaccatura{ d8 } <eis\2>4 <fis\2> \set minimumFret=#5 \bbarre #"V" { d,16 a' c fis a c } ees16.\fermata d32 |
  \set minimumFret=#0

  \acciaccatura {c16 d} d8 <bes g> \bbarre #"III" { a[ <g e>8] } bes16( a) d(_\markup{\italic "acel."} cis) e( d) f( e) |
  g16( e) d( cis) e( d) bes( a) c( bes) <g\2>( <e-0>) d^\markup{\italic "ten."} bes cis a |

  r8 <d f,> r q r <f g,> r <cis a e> |
  r8 <d f,> r q r <f g,> r <cis a e>\fermata |
  \harmonicsOn \hideStrNo{ <d\4 a\5>2-\markup{\italic {\fontsize #-2 {\halign #-0.5 "harm. 12"}}} } \harmonicsOff <d' a f>2\fermata
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \myfingering
  \repeat unfold 2 {
    \harmonicsOn \hideStrNo{ <e\5 a,\6>2. } \harmonicsOff |
    s2. |
    s2 <bes' g>4 |
    <e, a,>2 r4 |
  }
  s2.*4 |

  \repeat unfold 4 { d,4 \set minimumFret=#7 f' e a, \set minimumFret=#0 | }
  d,4 <f'\5> <e\5> <a,-0> |
  d,4 a' <e'-1\5> a, |

  d,4 <f'\5> <e-3\5> <a,\0> |
  d,2 \hideStrNo{ <d'\5>4 } s |

  g4 bes a,2 |
  a2.. a8 |

  d,4 bes' ees, a |
  d,4-\tweak X-offset #-2 \p bes' ees, a |
  d,4 <f'-4\5> <e-3\5> a, |

  \repeat unfold 2 {
    d,4 \set minimumFret = #5 f' e a, \set minimumFret = #0 |
  }

  d,4 \set minimumFret=#5 a' <e'-1\5> a, \set minimumFret=#0 |
  d,4 \set minimumFret=#5 f' <e-3\5> <a,\0> \set minimumFret=#0 |

  d,2 \hideStrNo{ <d'\5>4 } s |
  g4 bes a,2 |

  a2.. a8 |
  d,4 bes' ees, a |
  d,4 bes' \once\override TextScript.X-offset = #1 g_\markup{\italic "rit."} c |

  \set minimumFret=#3
  f,4-\markup{\italic "a tempo."} c' g' a, |
  f4 c' g' c |
  a,2 d4 g, |
  \set minimumFret=#0

  c4 a\rest c4.. c16 |
  f,4 c' g' c, |
  f,4 c' g \hideStrNo{ <g'\4> } |

  a,4 \harmonicsOn <a'\4>_\markup{\italic{\fontsize #-2 {\center-align "harm. 7"}}} \harmonicsOff a,2 |
  a2 a |

  a4 r s2 |
  s1 |

  d,4 \hideStrNo{ <fis'\5> } \set minimumFret=#5 e a | \set minimumFret=#0
  d,,4 \hideStrNo{ <fis'\5> } <e\5> a, |
  d,4 \hideStrNo{ <fis'\5> } e, e' |

  a,4 cis a2 |
  d,4 \hideStrNo{ <fis'\5> } e a |
  d,4 \hideStrNo{ <fis\5>4 } s2 |

  \set minimumFret=#7
  e4 a \harmonicsOn \hideStrNo <e\5>2-\markup{\italic {\fontsize #-2 {\halign #-0.5 "harm. 7"}}} \harmonicsOff |
  \set minimumFret=#0
  a,1 |

  d,4 \hideStrNo{ <fis'\5> } \set minimumFret=#5 e a | \set minimumFret=#0
  d,,4 \hideStrNo{ <fis'\5> } <e\5> a, |
  d,4 \hideStrNo{ <fis'\5> } e, e' |

  a,4 cis a2 |
  d,4 \hideStrNo{ <fis'\5> <e\5> <a\4> } |
  d,,4 \hideStrNo{ <fis'\5> } s2 |

  g4 g, e r |
  \set minimumFret=#5
  cis'2_\markup{\italic{\halign #-1.5 "molto rit." }} cis |
  \set minimumFret=#0
  d,4 b' g a |

  d,4 bes' ges a |
  d,4 <f'-4\5> <e-3\5> a, |
  \hideStrNo{ d,4 <f'\5> <e\5> <a,\6> } |

  d,4 <f'\5> <e\5> a, |
  d,4 a' <e'-1\5> a, |

  d,4 <f'\5> <e\5> a, |
  d,2 \hideStrNo { <d'\5>4. } r8 |

  g4 bes a,2 |
  a2. a8\rest a8 |

  d,4 bes' ees, a |
  d,4 bes' ees,_\markup{\halign #-1.5 \italic "rit."} a |
  \harmonicsOn \hideStrNo{ <d\6>2 } \harmonicsOff d'2_\fermata
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \myfingering
  s2.*12 |
  s1*2 |
  c8\rest <f\2 a,\4> c\rest \hideStrNo{ <f\2 a,\4> } s2 |

  \set minimumFret = #6
  \repeat unfold 2 { c8\rest <f\2 a,\4> c\rest q s2 | }
  \set minimumFret = #10
  c8\rest <a' f> c,\rest q s2 |
  \set minimumFret = #7

  c8\rest <a-1\4> c\rest <d a> s2 |
  g,8\rest \set minimumFret = #5 <d' a\4>8 g,\rest <c\3 a\4> s2 |
  \set minimumFret = #0

  s1*2 |

  s1*2 |
  c8\rest <a\4 f'\2> c8\rest <a\4 f'\2> s2 |

  \repeat unfold 2 {
    c8\rest \set minimumFret = #5 <a f'> c8\rest <a f'> s2 \set minimumFret = #0 |
  }

  c8\rest \set minimumFret=#10 <a' f> c,8\rest <a' f> s2 \set minimumFret=#0 |
  c,8\rest \set minimumFret=#5 <a-1\4> c8\rest <d a> s2 \set minimumFret=#0 |

  g,8\rest <d'\3 a\4> g,8\rest <c\3 a\4> s2 |
  s1 |

  s1*3 |

  s8 <a' f>  s q s2 |
  s1 |
  a,8\rest \set minimumFret=#5 <c\3 a\4> a\rest q s2 \set minimumFret=#0 |

  a8\rest <c\3> g\rest <bes\3 e,>8 s2 |
  s8 <a' f>8 s q s2 |
  s1 |

  \set minimumFret=#5
  a,8\rest <e' cis>8 e8\rest <e cis> s2 |
  s1 |

  s1*2 |

  c8\rest <d a>_\markup{\italic "a tempo."}  c\rest q s2 |
  c8\rest d c\rest <d a> s2 |
  a8\rest a a\rest a s2 |

  e8\rest e e\rest e s2 |
  b'8\rest a d\rest <d a> s2 |
  s4 d8\rest <d a> s2 |

  \set minimumFret=#9
  e8\rest e e8\rest e s2 |
  \set minimumFret=#0
  s1 |

  c8\rest <d a>_\markup{\italic "a tempo."} c\rest q s2 |
  c8\rest d c\rest <d a> s2 |
  a8\rest a a\rest a s2 |

  e8\rest e e\rest e s2 |
  b'8\rest \hideStrNo{ <a\4> d\rest <d\3 a\4> } s2 |
  b4\rest b8\rest \hideStrNo{ <d\3 a\4>8 } s2 |

  s1*2 |
  e,8\rest <a fis> s2. |

  s1 |
  a8\rest <f'\2 a,\4> d\rest \hideStrNo{ <f\2 a,\4> } s2 |
  \hideStrNo{ d8\rest <f\2 a,\4> d\rest <f\2 a,\4> } s2 |

  \set minimumFret = #6
  c8\rest \hideStrNo{ <f\2 a,\4> } c\rest q s2 |
  c8\rest \hideStrNo{ <a' f> c,\rest <a' f> } s2 |
  \set minimumFret = #0

  c,8\rest <a-1\4> c\rest <d a> s2 |
  g,8\rest <d' a> g,\rest <c\3 a\4> s2 |

  s1*2 |
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \global
      \clef "treble_8"
      \set Staff.instrumentName = \markup\bold{\circle {6} "= D "}
      \set fingeringOrientations = #'(left)
      \set stringNumberOrientations = #'(right)
      \tempo "Andantino."
      \new Voice = "upperVoice" \upperVoice
      \new Voice = "lowerVoice" \lowerVoice
      \new Voice = "middleVoice" \middleVoice
    >>
%{
    \new TabStaff = "Guitar tabs" \with {
      stringTunings = #guitar-drop-d-tuning
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
%      \set TabStaff.restrainOpenStrings = ##t
      \new TabVoice = "upperVoice" \upperVoice
      \new TabVoice = "lowerVoice" \lowerVoice
      \new TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {}
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    }
    <<
      \global
      \clef "treble_8"
      \new Voice = "upperVoice" \upperVoice
      \new Voice = "lowerVoice" \lowerVoice
      \new Voice = "middleVoice" \middleVoice
    >>
  >>
  \midi {
    \tempo 4 = 90
  }
}
