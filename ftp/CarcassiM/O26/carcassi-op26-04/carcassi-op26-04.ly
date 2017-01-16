\version "2.19.49"

\header {
  title = "Six Caprices"
  source = "Mainz: B. Schott's Söhne"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 91
  composer = "Mateo Carcassi"
  opus = "Op. 26 No. 4"
  year = "ca. 1827"
  mutopiacomposer = "CarcassiM"
  mutopiatitle = "Six Caprices, No. 4"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/01/16-1839"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  line-width = 18.0\cm
  top-margin = 4\mm                              %-minimum: 8 mm
  top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #10     %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block 
}

%% Syntax: \barre #"text" { notes } - text = any number of box
barre =
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
       \once \override TextSpanner.font-size = #-2
       \once \override TextSpanner.font-shape = #'upright
       \once \override TextSpanner.staff-padding = #3
       \once \override TextSpanner.style = #'line
       \once \override TextSpanner.to-barline = ##f
       \once \override TextSpanner.bound-details =
            #`((left
                (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . -2))
               (right
                (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . 2)))
       %% uncomment this line for make full barred
       \once  \override TextSpanner.bound-details.left.text =  \markup { #str " "}
       $music
   #})


commonVar = {
  \override DynamicTextSpanner.style = #'none
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\layout {
  \context {
    \Voice
    \override StringNumber.stencil = ##f
  }
}


upperVoice = \relative c' {
  \voiceOne
  a,16\f\< a' c, a' d, a'\> dis, a' e a c,\! a' |
  a,16 a' c a e' a, \set minimumFret=5\barre #"V " { a,\p c' e d a' c, |
  a,16 c' e c c' c, a, d' f d b' d, |
  a,16 c' e c a' c, } \set minimumFret=0 a, a' c a e' a, |
  \barNumberCheck #5
  a,16\f\< a' c, a' d, a'\> dis, a' e a c,\! a' |
  a,16 a' c a e' a, \set minimumFret=5 a, c' e d a' c, |
  a,16 c' e c c' c, a, d' f d b' d, |
  a,16 c' e c a' c, \set minimumFret=0 a, a' c a e' a, |
  \barNumberCheck #9
  e,16\mf gis'\> f' gis, e' gis,\! e gis d gis b, gis' |
  a,16 a'\> f' a, e' a,\! e a c, a' a, a' |
  e,16 gis' d' gis, e gis e, a' c a e a  |
  <gis b>8 f16[ gis e gis] d gis c, gis' b, gis' |
  \barNumberCheck #13
  a,16\f a'\< c, a' d, a'\> dis, a' e a c,\! a' |
  a,16 a' c a e' a, a,\p c' e d a' c, |
  a,16 c' e c c' c, a, d' f d b' d, |
  a,16 c' e c a' c, a, a' c a e' a, |
  % repeat above 4 bars
  a,16\< a' c, a' d, a'\> dis, a' e a c,\! a' |
  a,16 a' c a e' a, a, c' e d a' c, |
  a,16 c' e c c' c, a, d' f d b' d, |
  a,16 c' e c a' c, a, a' c a e' a, |
  \barNumberCheck #21
  g,16\f g' g' g, f' g, d g b, g' g, g' | %\
  c,16 g' e' g, c, g' e g c g e g |	  %/
  g,16 g' g' g, f' g, d g b, g' g, g' |	  %\
  c,16 g' e' g, c, g' e g c g e g |	  %/
  \barNumberCheck #25
  e,16\sf gis'\> f' gis, e' gis,\! e gis d gis b, gis' |
  a,16\sf a'\> f' a, e' a,\! e a c, a' a, a' |
  e,16 gis' d' gis, e gis e, a' c a e a  |
  e,16 gis' b e b gis e4 r8 |
  \repeat unfold 2 {
    c16\mf c'\< e, c' f, c'\> fis, c' g c e,\! c' |
    c,16 g' c g e' g, c,\p bes' c bes e bes |
    c,16 a' c a f' a, c, aes' c aes f' aes, |
    c,16 g' c g e' g, c, e g e c' e, |
  }
  \barNumberCheck #37
  f16\mf g cis g d' g, d g b, g' g, g' |
  c,16 g' e' g, c, g' e g c g e g |
  f16 g cis g d' g, d g b, g' g, g' |
  c,16 g' e' g, c, g' e g c g e g | % end of page
  \barNumberCheck #41
  e16\sf bes'-3 d-4 bes cis-2 bes e, bes' d bes cis bes |
  f16-3 a-2 d-4 a e' a, f' a, f a d, a' |
  e16\sf bes' d bes cis bes e, bes' d bes cis bes |
  f16-3 a-2 d-4 a e' a, f' a, f a d, a' |
  \barNumberCheck #45
  \once\crescTextCresc
  f16\< a d\! a e' a, f' a, f a d, a' |
  f16 a d a f a f a dis a f a |

  e,16\f gis' b gis e' gis, e gis d gis b, gis' |
  a,16 a' c a e' a, e a c, a' a, a' |
  e,16 gis' b gis e' gis, e gis d gis b, gis' |
  a,16 a' c a e' a, e a c, a' a, a' |

  <gis b e>8 f16 f' e, e' d, d' c, c' b, b' |
  a,16\f a'\< c, a' d, a'\> dis, a' e a c,\! a' |

  a,16 a' c a e' a, a,\p c' e c a' c, | %*
  a,16 c' e c c' c, a, d' f d b' d, | %*
  a,16 c' e c a' c, a, a' c a e' a, | %*
  a,16\sf a'\< c, a' d, a'\> dis, a' e a c,\! a' |
  \barNumberCheck #57
  a,16 a' c a e' a, a, c' e c a' c, | %*
  a,16 c' e c c' c, a, d' f d b' d, | %*
  a,16 c' e c a' c, a, a' c a e' a, | %*
  \repeat unfold 2 {
    e,16\sf gis'\> f' gis, e' gis,\! e gis d gis b, gis' |
    a,16\sf a'\> f' a, e' a,\! e a c, a' a, a' |
  }
  d,16\mf f ces' f, d f e g cis g e g |
  f16 \once\crescTextCresc a\< d\! a e' a, f' a, d, a' e a |
  \barNumberCheck #66
  f16 a d a e' a, f' a, f a e a |
  dis,16 a' c a b a d, gis f' gis, e' gis, |
  c,16\f a' e' a, c, a' d, b' d b d, b' |
  \barNumberCheck #69
  e,16 a c a e a e, gis' b gis e, gis' |
  a,16\mf a'\< c, a' d, a'\> dis, a' e a c,\! a' |
  a,16 gis'\> f' gis, e' gis,\! a, gis' e' gis, d' gis, |
  a,16\< c' c, a' d, a'\> dis, a' e a c,\! a' |

  a,16 gis'\> f' gis, e' gis,\! a, gis'\> e' gis, d'\! gis, |
  a,16 \once\dimTextDim a'\> c a\! c a e a c, a' a, a' |
  a,16 gis' f' gis, e' gis, e gis d gis b, gis' |
  a,16\p a' f' a, e' a, e a c, a' a, a' |

  a,16 gis' f' gis, e' gis, e gis d gis b, gis' |
  a,16\f a' c, c' d, d' dis, dis' e, e'\2 c, c'\3 |
  a,16 a' c, c' e, e' a, a' c,\3 c' dis,\3 dis' |
  e4. <d, e gis>\sf |
  <a c e a>2.\ff\fermata
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  \repeat unfold 2 {
    a8 c d dis e c |
    a4. \set minimumFret=5 a4. |
    a4. a4. |
    a4. \set minimumFret=0 a4. |
  }
  e4. e'8 d b |
  a4. e'8 c a |
  e4 e'8 e,4 e'8 |
  e,8 f' e d c b |
  \repeat unfold 2 {
    a8 c d dis e c |
    \repeat unfold 3 { a4. a4. | }
  }
  \repeat unfold 2 {
    g4. d'8 b g |
    c4 c8 e4 e8 |
  }
  e,4. e'8 d b |
  a4. e'8 c a |
  e4 e'8 e,4 e'8 |
  e,4 s8 e'4 s8 |
  \repeat unfold 2 {
    c8 e f fis g e |
    \repeat unfold 3 {
      c4. c |
    }
  }
  \repeat unfold 2 {
    f4. d8 b g |
    c4 c8 e4 e8 |
  }
  \repeat unfold 2 {
    e4. e |
    f4. r8 f d |
  }
  f4. r8 f d |
  f4 f8 f4 f8 |
  \repeat unfold 2 {
    e,4. e'8 d b |
    a4. e'8 c a |
  }
  e8 f'[ e] d c b |
  a8 c d dis e c |
  \repeat unfold 3 {
    a4. a |
  }
  a8 c d dis e c |
  \repeat unfold 3 {
    a4. a |
  }
  \repeat unfold 2 {
    e4. e'8 d b |
    a4. e'8 c a |
  }
  d4 d8 e4 e8 |

  f4. s8 d e |
  \barNumberCheck #66
  f4. s8 f e |
  dis4. d |
  c4 c8 d4 d8 |

  e4 e8 e,4 e8 |
  a8 c d dis e c |
  a4. a |
  a8 c d dis e c |

  a4. a |
  a4. e'8 c a |
  a4. e'8 d b |
  a4. e'8 c a |

  a4. e'8 d b |
  a8 c d dis e c |
  a8 c e a c\3 dis\3 |
  e4.\3 e,, |
  a2._\fermata |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 4"
    } <<
      \commonVar
      \clef "treble_8"
      \key a \minor \time 6/8
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab" \with {
      restrainOpenStrings = ##t
    }
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 92
  }
}
