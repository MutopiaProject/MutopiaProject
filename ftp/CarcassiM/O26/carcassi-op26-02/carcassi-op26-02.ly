\version "2.16.1"

\header {
  title = "Caprice No. 2"
  source = "Mainz: B. Schott's Söhne"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 91
  composer = "Mateo Carcassi"
  opus = "Op. 26 No. 2"
  year = "ca. 1827"
  mutopiacomposer = "CarcassiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
 footer = "Mutopia-2012/12/28-0"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  line-width = 18.0\cm
  markup-system-spacing #'padding = #2
%{ uncomment for note entry
  ragged-bottom = ##t
  ragged-last = ##t
%}
}

commonVar = {
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \override TextSpanner #'staff-padding = #6
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\layout {
  \context {
    % Explicit string numbers are used to get the tablature correct
    % but just clutter traditional music notation.
    \Voice
    \override StringNumber #'stencil = ##f
  }
}

dynamicMarkup = {
  \mark "Vivace"
  s4.\f | s4.*5 |
  s4.*2 | s4.\f | s4.*3 | s4.\p |
  s4.*3 | s4.\f | s4.*3 |
  s4.\p | s4.*3 | s4.\f | s4.*2 |
  s4. | s4.\p | s4.*3 | s4.\f | s4. |
  s4.\p | s4. | s4.\f | s4. | s4.\p | s4. |
  s4.\ff | s4.*6 |
  s4. | s4.\f | s4.*3 | s4.\p | s4. |
  s4.*6 | s4.\p |
  s4.*2 | s4.\pp | s4.*4 |
  s4. *3 | s4.\pp | s4.*2 |
  s4.* 6 |
  s4.*3 | s4.\ff | s4.*3 | s4.
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
       \once \override TextSpanner #'font-size = #-2
       \once \override TextSpanner #'font-shape = #'upright
       \once \override TextSpanner #'staff-padding = #3
       \once \override TextSpanner #'style = #'line
       \once \override TextSpanner #'to-barline = ##f
       \once \override TextSpanner #'bound-details =
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
       \once  \override TextSpanner #'bound-details #'left #'text =  \markup { "B" #str " "}
       $music
   #})


%% Upper Voice Parts
%% -----------------
upperVoiceA = {
  \repeat unfold 2 {
    d16 d' e, d' fis, d' |
    g,16 d' a d b d |
  }
  \set minimumFret = #3
  \bbarre #"III" { fis,16 c' d c a' c, |
  g16 b d b g' b, } |
  \set minimumFret = #0
  a,16 a' cis a g' a, |
  d,16[ a' d fis] d,8 |
  \repeat unfold 2 {
    e16 e' fis, e' gis, e' |
    a,16 e' b e c e |
  }
  \set minimumFret = #3
  \bbarre #"III" { c,16 c' e c a' c, |
  d,16 b' d b g' b, } |
  \set minimumFret = #0
}

upperVoiceB = {
  d,16 a' c a fis' a, |
  g,16[ g' b g'] g,,8 |
  b16 b' cis, b' dis, b' |
  e,16 b' fis b g b |
  a16 b fis b b b |
  g16 b fis b e, b' |

  e,,16 a' c a e' a, |
  e,16 g' b g e' g, |
  e,16 a' dis a fis' a, |
  e,16 g' e' g, g'8 |
  b,,16 b' cis, b' dis, b' |
  e,16 b' fis b g b |

  a16 b fis b b b |
  g16 b fis b e, b' |
  a,16 a' cis a e' a, |
  a,16 a' d a fis' a, |
  a,16 a' cis a g' a, |
  d,16[ a' d fis] d,8 |
  e16 e' dis, e' d, e' |
  c,16 e' b, e' a,, e'' |

  \set minimumFret = #5
  \bbarre #"V" {gis,16 d' b' d, e d |
  a16 c a' c, e c } |
  \set minimumFret = #0
  d,16 d' cis, d' c, d' |
  b,16 d' a, d' g,, d'' |
  \set minimumFret = #5
  \bbarre "III" { fis,16 c' a' c, d c |
  g16 b g' b, d b } |
  \set minimumFret = #0

  g16 g fis g f g |
  e16 g d g c, g' |
  e16 e' dis, e' d, e' |
  c,16 e' b, e' a,, e'' |
  d,16 d' cis, d' c, d' |
  b,16 d' a, d' g,, d'' |
  a,16 a' cis a g' a, |

  d,16[ a' d fis] d,8 |
}

upperVoiceC = {
  \repeat unfold 2 {
    d,16 a' c a fis' a, |
    \set minimumFret = #3
    \bbarre #"III" { g16 b g' b, d b |
    g16 b e b d b |
    fis16 c' a' c, d c |
    fis,16 c' e c d c } |
    \set minimumFret = #0
    g16 b g' b, f b |
    e,16 c' d, d' c, e' |
    % In the source the penultimate g was entered as fis in the first
    % repeated section and g in the second. An annotation to correct
    % this had been penned in the source and I believe the annotation
    % to be correct.
    d,16 g b g g' g, |
  }
}

upperVoiceD = {
  d16 a' c a fis' a, |
  \repeat unfold 2 {
    g16 b g' g, d g' |
    a,16 c fis c d, fis' |
  }
  \repeat unfold 2 {
    g,,16 <b' g'> d, <b' g'> b, <b' g'> |
  }
  g,4. |
  <b' g'>4. |
  q4.^\fermata |
}


%% Lower Voice Parts
%% -----------------
lowerVoiceA = {
  \repeat unfold 2 {
    d8 e fis |
    g8 a b |
  }
  fis4. |
  g4. |
  a,4. |
  d4 d8 |
  \repeat unfold 2 {
    e8 fis gis |
    a8 b c |
  }
  c,4. |
  d4. |
}

lowerVoiceB = \relative c {
  d4. |
  g,4 g8 |
  b8 cis dis |
  e8 fis g |
  a8 fis b |
  g8 fis e |
  \repeat unfold 4 { e,4. | }
  b'8 cis dis |
  e8 fis g |
  a8 fis b |
  g8 fis e |
  \repeat unfold 3 { a,4. | }
  d4 d8 |
  e8 dis d |
  c8 b a |
  gis'4. |
  a4. |
  d,8 cis c |
  b8 a g |
  fis'4. |
  g4. |
  g8 fis f |
  e8 d c |
  e8 dis d |
  c8 b a |
  d8 cis c |
  b8 a g |
  a4. |
  d4 d8 |
}

lowerVoiceC = {
  \repeat unfold 2 {
    d4. |
    g4. |
    g4. |
    fis4. |
    fis4. |
    g4 f8 |
    e8 d c |
    d4. |
  }
}
lowerVoiceD = {
  d4. |
  \repeat unfold 2 {
    g4 d8 |
    a'4 d,8 |
  }
  \repeat unfold 2 { g,8 d' b | }
  g4. |
  <g b d g>4. |
  q4. |
}

upperVoice = \relative c {
  \voiceOne
  \upperVoiceA
  \barNumberCheck #15
  \upperVoiceB
  \barNumberCheck #49
  \upperVoiceA
  \barNumberCheck #63
  \upperVoiceC
  \barNumberCheck #79
  \upperVoiceD
  \bar "||"
}
lowerVoice = \relative c {
  \voiceTwo
  \lowerVoiceA
  \barNumberCheck #15
  \lowerVoiceB
  \barNumberCheck #49
  \lowerVoiceA
  \barNumberCheck #63
  \lowerVoiceC
  \barNumberCheck #79
  \lowerVoiceD
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \commonVar
      \clef "treble_8"
      \key g \major \time 3/8
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
