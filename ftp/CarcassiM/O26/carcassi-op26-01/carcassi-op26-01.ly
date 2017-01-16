\version "2.19.49"

\header {
  title = "Six Caprices"
  source = "Mainz: B. Schott's Söhne"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 91
  composer = "Mateo Carcassi"
  opus = "Op. 26, No. 1"
  year = "ca. 1827"
  mutopiacomposer = "CarcassiM"
  mutopiatitle = "Six Caprices, No. 1"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/01/16-1836"
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

commonVar = {
  \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \override Score.KeySignature.break-align-anchor-alignment = #LEFT
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\layout {
  \context {
    \Voice
    \override StringNumber.stencil = ##f
  }
}


dynamicMarkup = {
  \mark "Moderato"
  s2.\mf s2.*3 s2 s16 s\> s s\!
  s2.
  s2.\f s2.
  s2.\mf s2.*3 s2 s16 s\> s s\!
  s2 s4\sf
  s2.*2
  s2.\ff
  s2. s2.\p
  s2.*5 s2.\f
  s2.*3 s2.\mf
  s2. s2.
  s2.* 5 s2 s16 s\> s s\!
  s2 s4\sf
  s2\sf s4
  s4.\mf s4.
  s2. s2.\f
  \dimTextDim
  s2. s8 s8\> s8\! s4.
  \dimHairpin
  s2. s8 s8\p s2
  s2. s2.\p
  s2.\ff
}

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
       \once \override TextSpanner.font-size = #-2
       \once \override TextSpanner.font-shape = #'upright
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
       \once  \override TextSpanner.bound-details.left.text =  \markup { "B" #str " "}
       $music
   #})



%% Upper Voice Parts
%% -----------------
upperVoiceA = \relative c {
  \voiceOne
  c16 g' c e e, g c e c, g' c e |
  c,16 g' d' f b,, g' d' f d, g d' f |
  g,,16 g' d' f b,, g' d' e g,, g' d' f |
  c,16 g' d' e e, g c e c, g' c e |
  c,16 g' c g' e, g c g' e, bes' c g' |
}

upperVoiceB = \relative c {
  f16 a c g' f, a c f f, a c e |
  \set minimumFret=3
  \bbarre #"III" { fis,16 c' d c a' c, d c d, c' d a' |
  g,16 b d g g,,8 } f'16 g e g d g |
  \set minimumFret=0
}

upperVoiceC = \relative c {
  f16 a c g' f, a c d fis, c'\3 ees a |
  g,16 c e! c g' c, e c g, f' g b |
  c,16 e g c c,4 b'\rest |
  e,,16 gis' e' gis, fis, a' e' a, gis, b' e b |
  a,16 c' e c b, b' e b c, a' e' a, |
  d,16 gis e' gis, f' gis, e' gis, d gis e' gis, |
  c,16 a' e' a, f' a, e' a, c, a' e' a, |
  e,16 gis' e' gis, fis, a' e' a, gis, b' e b |
  a,16 c' e c b, b' e b c, a' e' a, |
  c,16 fis d' fis, e' fis, d' fis, c fis d' fis, |
  b,16 g' d' g, e' g, d' g, b, g' d' g, |
  \repeat unfold 2 {
    g,16 g' f' g, a, g' f' g, b, g' f' g, |
    c,16 g' e' g, d g d' g, e g c g |
  }
  a16 c f c g' c, f c a c f c |
  g16 c e c f c e c g c e c |

  \barNumberCheck #31
  \set minimumFret=3
  \bbarre #"III" { fis,16 c' d c a' c, d c d, c' d a' |
  g,16 b d g g,,8 } f'16 g e g d g |
  \set minimumFret=0
  c,16 g' c e e, g c e c, g' c e |
  c,16 g' d' f b,, g' d' f d, g d' f |
  g,,16 g' d' f b,, g' d' f g,, g' d' f |
  c,16 g' d' e e, g c e c, g' c e |
  c,16 g' c g' e, g c g' e, bes' c g' |

  f,16 a c g' f, a c f fis, c'\3 ees a |
  g,16 c e! c g' c, e c g, f' g b |
  c,16 g' c g e' g, e g d g c, g' |
  b,16 g' d' g, f' g, g, g' a, g' b, g' |
  c,16 g' c g e' g, c g a, a' c e |
  f,,16 f' a f d' f, a f g, d' g b |
  \repeat unfold 2 {
    c,16 g' e g g' g, e g e' g, e g |
    c16 g e g e, g' e g g, g' e g |
  }
  <e g c>2. |
  <e g c>4 <g c e> <e g c g'> |
  <e' g c>2. |
  <e, g c e>2. |
  <c e g c>2.\fermata
  \bar "||"
}

%% Lower Voice Parts
%% -----------------
lowerVoiceA = \relative c {
  \voiceTwo
  c4 e c |
  c4 b d |
  g,4 b g |
  c4 e c |
  c4 e e |
}

lowerVoiceB = \relative c {
  f4 f f |
  \set minimumFret=3
  fis2 d4 |
  g4 g,8 f'[ e d] |
  \set minimumFret=0
}

lowerVoiceC = \relative c {
  f4 f fis |
  g2 g,4 |
  c4 c s |
  e,4 fis gis |
  a4 b c |
  d2 d4 |
  c2 c4 |
  e,4 fis gis |
  a4 b c |
  c2 c4 |
  b2 b4 |
  \repeat unfold 2 {
    g4 a b |
    c4 d e |
  }
  a2 a4 |
  g2 g4 |
  \set minimumFret=3
  fis2 d4 |
  g4 g,8 f'[ e d] |
  \set minimumFret=0

  c4 e c |
  c4 b d |
  g,4 b g |
  c4 e c |
  c4 e e |

  f4 f fis |
  g2 g,4 |
  c4. e8 d c |
  b4. g8 a b |
  c2 a4 |
  f2 g4 |
  \barNumberCheck #44
  << {\stemDown s8 e'8 s2 } \\ {c2.} >>|
  c'4 e,, g |
  c2. |
  c'4 e,, g |
  c2. |
  c4 c c |
  c2._\6 |
  c2. |
  e,2. |
}

upperVoice = {
  \upperVoiceA
  \barNumberCheck #6
  \upperVoiceB
  \barNumberCheck #9
  \upperVoiceA
  \barNumberCheck #14
  \upperVoiceC
}
lowerVoice = {
  \lowerVoiceA
  \lowerVoiceB
  \lowerVoiceA
  \lowerVoiceC
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 1"
    } <<
      \commonVar
      \clef "treble_8"
      \key c \major
      \time 3/4
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \new Dynamics { \dynamicMarkup }
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
    \tempo 4 = 100
  }
}
