\version "2.18.2"

\header{
  title = "Ave Maria"
  subtitle = "Méditation sur le premier Prélude de J. S. Bach"
  composer = "Charles Gounod"
  date = "1853"
  style = "Romantic"
  source = "Heugel, 1856"

  maintainer = "Yann Leprince"
  maintainerEmail = "yann (dot) leprince (at) ylep (dot) fr"
  license = "Public Domain"

  mutopiatitle = "Ave Maria: Meditation on the First Prelude in C by J. S. Bach"
  mutopiacomposer = "GounodC"
  mutopiainstrument = "Piano, Violin"

  % Filled in automatically by Mutopia
 footer = "Mutopia-2017/01/25-2167"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

%{
  Piano and violin voices are from the 1856 Heugel edition for solo violin,
  orchestra, and choir, available at
  <http://gallica.bnf.fr/ark:/12148/btv1b54000086f>

  Violin fingerings inspired by Anne-Sophie Mutter
  <https://www.youtube.com/watch?v=gz9m06HHBcE>

  Piano part based on the First Prelude in C, J. S. Bach, downloaded from
  <http://www.mutopiaproject.org/ftp/BachJS/BWV846/wtk1-prelude1/wtk1-prelude1.ly>
  (enteredby Shay Rojansky, edited by Han-Wen Nienhuys, edited by Tobias
  Erbsland, version update by Javier Ruiz-Alma 9/11/2011)
%}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante semplice" 4=66
}

upper = \new Voice \transpose c c' {
  \global
  \clef treble

  % 1
  r8   g16 c'   e' g c' e' r8   g16 c'   e' g c' e' |
  r8   a16 d'   f' a d' f' r8   a16 d'   f' a d' f' |
  r8   g16 d'   f' g d' f' r8   g16 d'   f' g d' f' |
  r8   g16 c'   e' g c' e' r8   g16 c'   e' g c' e' |
  % 5
  \repeat volta 2 {
    r8    g16 c'   e' g c' e' r8   g16 c'   e' g c' e' |
    r8    a16 d'   f' a d' f' r8   a16 d'   f' a d' f' |
    r8    g16 d'   f' g d' f' r8   g16 d'   f' g d' f' |
    r8    g16 c'   e' g c' e' r8   g16 c'   e' g c' e' |
    % 9
    r8    a16 e'   a' a e' a' r8   a16 e'   a' a e' a' |
    r8    fis16 a   d' fis a d' r8   fis16 a   d' fis a d' |
    r8    g16 d'   g' g d' g' r8   g16 d'   g' g d' g' |
    r8    e16 g   c' e g c' r8   e16 g   c' e g c' |
    % 13
    r8    e16 g   c' e g c' r8   e16 g   c' e g c' |
    r8   d16 fis   c' d fis c' r8 d16 fis   c' d fis c' |
    r8 d16 g   b d g b r8   d16 g   b d g b |
    % 16
    r8 e16 g   cis' e g cis' r8   e16 g   cis' e g cis' |
    r8 d16 a   d' d a d' r8   d16 a   d' d a d' |
    r8 d16 f   b d f b r8   d16 f   b d f b |
    r8 c16 g   c' c g c' r8   c16 g   c' c g c' |
    % 20
    r8 a,16 c   f a, c f r8   a,16 c   f a, c f |
    r8   a,16 c   f a, c f r8   a,16 c   f a, c f |
    r8 g,16 b,   f g, b, f r8   g,16 b,   f g, b, f |
    r8 g,16 c   e g, c e r8   g,16 c   e g, c e |
    % 24
    r8 bes,16 c   e bes, c e r8   bes,16 c   e bes, c e |
    r8 a,16 c   e a, c e r8   a,16 c   e a, c e |
    r8 a,16 c   ees a, c ees r8   a,16 c   ees a, c ees |
    % Measure inserted by Ch. Gounod
    r8 b,16 c   ees b, c ees r8   b,16 c   ees b, c ees |
    r8 b,16 c   d b, c d r8   b,16 c   d b, c d |
    % 29
    r8 g,16 b,   d g, b, d r8   g,16 b,   d g, b, d |
    r8 g,16 c   e g, c e r8   g,16 c   e g, c e |
    r8 g,16 c   f g, c f r8   g,16 c   f g, c f |
    r8 g,16 b,   f g, b, f r8   g,16 b,   f g, b, f |
    % 33
    r8   a,16 c   fis a, c fis r8   a,16 c   fis a, c fis |
    r8   g,16 c   g g, c g r8   g,16 c   g g, c g |
    r8   g,16 c   f g, c f r8   g,16 c   f g, c f |
    r8   g,16 b,   f g, b, f r8   g,16 b,   f g, b, f |
  }
  \alternative {
    { r8   g,16 c   e g, c e r8   g,16 c   e g, c e | }
    { r8   g,16 bes,   e g, bes, e r8   g,16 bes,   e g, bes, e | }
  }
  % 38
  \clef bass
  %r8   f,16 a,   c f c a,   c a, f, a,   f, d, f, d, |  % Original from J.S. Bach
  r8 f,16 a,   c a, c f   c a, c a,   f, a, f, d, |  % Gounod
  \clef treble
  r8   g16 b   d' f' d' b   d' b g b   d f e d |
  <e g c'>1\espressivo ~ |
  <e g c'>8 r4. r2 |
  \bar "|."
}

lower = \new Voice {
  \global
  \clef treble

  << {
    % 1
    c'16 e'16 ~ e'4. c'16 e'16 ~ e'4. |
    c'16 d'16 ~ d'4. c'16 d'16 ~ d'4. |
    b16 d'16 ~ d'4. b16 d'16 ~ d'4. |
    c'16 e'16 ~ e'4. c'16 e'16 ~ e'4. |
  } \\ {
    c'2 c' |
    c' c' |
    b b |
    c' c' |
  } >> |
  \repeat volta 2 {
  % 5
    << {
      c'16 e'16 ~ e'4. c'16 e'16 ~ e'4. |
      c'16 d'16 ~ d'4. c'16 d'16 ~ d'4. |
      b16 d'16 ~ d'4. b16 d'16 ~ d'4. |
      c'16 e'16 ~ e'4. c'16 e'16 ~ e'4. |
    } \\ {
      c'2 c' |
      c' c' |
      b b |
      c' c' |
    } >> |
    % 9
    << {
      c'16 e'16 ~ e'4. c'16 e'16 ~ e'4. |
      c'16 d'16 ~ d'4. c'16 d'16 ~ d'4. |
      \clef bass
      b16 d'16 ~ d'4. b16 d'16 ~ d'4. |
      b16 c'16 ~ c'4. b16 c'16 ~ c'4. |
    } \\ {
      c'2 c' |
      c' c' |
      b b |
      b b |
    } >> |
    % 13
    << {
      a16 c'16 ~ c'4. a16 c'16 ~ c'4. |
      d16 a16 ~ a4. d16 a16 ~ a4. |
      g16 b16 ~ b4. g16 b16 ~ b4. |
    } \\ {
    a2 a |
    d d |
    g g |
    } >> |
    % 16
    << {
      g16 bes16 ~ bes4. g16 bes16 ~ bes4. |
      f16 a16 ~ a4. f16 a16 ~ a4. |
      f16 aes16 ~ aes4. f16 aes16 ~ aes4. |
      e16 g16 ~ g4. e16 g16 ~ g4. |
    } \\ {
      g2 g |
      f f |
      f f |
      e e |
    } >> |
    % 20
    << {
      e16 f16 ~ f4. e16 f16 ~ f4. |
      d16 f16 ~ f4. d16 f16 ~ f4. |
      g,16 d16 ~ d4. g,16 d16 ~ d4. |
      c16 e16 ~ e4. c16 e16 ~ e4. |
    } \\ {
      e2 e |
      d d |
      g, g, |
      c c |
    } >> |
    % 24
    << {
      c16 g16 ~ g4. c16 g16 ~ g4. |
      f,16 f16 ~ f4. f,16 f16 ~ f4. |
      fis,16 c16 ~ c4. fis,16 c16 ~ c4. |
      % Measure inserted by Ch. Gounod
      g,16 ees16 ~ ees4. g,16 ees16 ~ ees4. |
      aes,16 f16 ~ f4. aes,16 f16 ~ f4. |
    } \\ {
      c2 c |
      f, f, |
      fis, fis, |
      g, g, |
      aes, aes, |
    } >> |
    % 29
    << {
      g,16 f16 ~ f4. g,16 f16 ~ f4. |
      g,16 e16 ~ e4. g,16 e16 ~ e4. |
      g,16 d16 ~ d4. g,16 d16 ~ d4. |
      g,16 d16 ~ d4. g,16 d16 ~ d4. |
    } \\ {
      g,2 g, |
      g, g, |
      g, g, |
      g, g, |
    } >> |
    % 33
    << {
      g,16 ees16 ~ ees4. g,16 ees16 ~ ees4. |
      g,16 e!16 ~ e4. g,16 e16 ~ e4. |
      g,16 d16 ~ d4. g,16 d16 ~ d4. |
      g,16 d16 ~ d4. g,16 d16 ~ d4. |
    } \\ {
      g,2 g, |
      g, g, |
      g, g, |
      g, g, |
    } >> |
  }
  \alternative {
    { % 1.
      << { c,16 c16 ~ c4. c16 e16 ~ e4. | } \\ { c,2 c } >> |
    }
    { % 2.
      << { c,16 c16 ~ c4. c,16 c16 ~ c4. | } \\ { c,2 c, } >> |
    }
  }
  % 38
  << {
    c,16 c16 ~ c4. ~ c2 |
    c,16 b,16 ~ b,4. ~ b,2 |
  } \\ {
    c,1 |
    c, |
  } >> |

  <c, g, c>1\espressivo ~ |
  <c, g, c>8 r4. r2 |
  \bar "|."
}

pianoDynamics = {
  % Fix collision of dynamics that appear just after a bar.
  \override DynamicText.self-alignment-X = #LEFT

  \set crescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'none
  \set crescendoText = \markup { \italic "cresc." }
  R1\p | R1*3 |
  \repeat volta 2 {
    % 5
    R1\pp | R1*3 |
    % 9
    R1\cresc | R1\pp | R1\cresc | R1\pp |
    % 13
    R1\cresc | s2 s2\dim | R1\pp | R1\cresc | R1\pp | R1\cresc | R1\pp |
    % 20
    R1\cresc | R1\cresc | s2\f s2\dim | R1\pp |
    % 24
    \override DynamicTextSpanner.style = #'dashed-line
    \set crescendoText = \markup { \italic "cres" }
    R1\< |
    \set crescendoText = \markup { \italic "cen" }
    R1\< |
    \set crescendoText = \markup { \italic "do" }
    R1\< |
    \set crescendoText = \markup { \italic "molto" }
    \override DynamicTextSpanner.style = #'none
    R1\< |
    s2\f s2\dim |
    % 29
    R1\pp |
    \override DynamicTextSpanner.style = #'dashed-line
    \set crescendoText = \markup { \italic "cresc." }
    R1\< |
    \set crescendoText = \markup { \italic "mol" }
    R1\< |
    \set crescendoText = \markup { \italic "to" }
    \override DynamicTextSpanner.style = #'none
    R1\< |
    % 33
    R1\f |
    R1\ff |
    R1*2 |
  }
  \alternative{
    { s2 s2\dim | }
    { R1\dim | }
  }
  % 38
  R1\p |
  R1\pp
}


% Here \center-align worsens the centering instead of improving it, why?
II = \markup \teeny "II"
I = \markup \teeny "I"

sulA = \markup \small "sul A"

piuF = #(make-dynamic-script
         (markup #:normal-text #:italic "più" #:dynamic "f"))
tutta_forza = \tweak DynamicText.self-alignment-X #LEFT #(make-dynamic-script
               (markup #:normal-text #:italic "tutta forza"))


violin = \new Voice \relative c''
{
  \global
  \clef treble

  \language "italiano"

  \set crescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'none
  \set crescendoText = \markup { \italic "cresc." }
  % 1
  R1*4 |
  \repeat volta 2 {
  % 5
  mi1\(\p^"avec le sentiment contemplatif"_\sulA |
  fa1 |
  sol2. re4 |
  mi2.\) r4 |
  % 9
  la2-4\cresc~la8 la,(-1 si do |
  re4..\pp-1^\II mi16 re4) r4 |
  sol2\cresc-4~sol8 sol,(-1 la si |
  do4..\pp-1^\II re16 do4) r4 |
  % 13
  do'2-3^\II\cresc~do8 do,(-1^\II re-1 mi |
  fad4. mi8 re4)\dim la(-2 |
  si2)\p~si8 r8 re4-1( |
  % 16
  mi2)\cresc~mi8 mi(-1 fa sol |
  la2-4)(\pp la,4-1) r4 |
  re2-4\cresc~re8 re(-1-\II mi fa |
  sol2-4)(\pp sol,4-1) r4 |
  % 20
  do2-4\cresc~do8 do(-1-\II re mi |
  fa2-1^\II)\cresc~fa8 fa( sol la |
  si4.\f la8 sol4)\dim re(-1 |
  mi2)\p~mi4 r8. mi16-1 |
  % 24
  \override DynamicTextSpanner.style = #'dashed-line
  \set crescendoText = \markup { \italic "cres" }
  sol2->(\< mi4) r8. mi16 |
  \set crescendoText = \markup { \italic "cen" }
  la2->(\< la,4-1) r8. la'16^\I |
  \set crescendoText = \markup { \italic "do" }
  la2->(\< do,4) r8. la'16-1 |
  \override DynamicTextSpanner.style = #'none
  \set crescendoText = \markup { \italic "molto" }
  do2->(\< mib,4) r8. do'16 |
  do2->(\f re,4-1) r8.\dim re16-1 |
  % 29
  re2-3\p~re8 re( do si |
  \override DynamicTextSpanner.style = #'dashed-line
  \set crescendoText = \markup { \italic "cresc." }
  sol'4.-4\< mi8-3 do4-1) r4 |
  \override DynamicTextSpanner.style = #'none
  \set crescendoText = \markup { \italic "molto" }
  fa2-3\<~fa8 fa( mi re |
  re'4.\f si8 sol2-1) |
  % 33
  la2-1\piuF ~
    % Space out these notes a little more so that "tutta forza" fits
    \newSpacingSection
    \override Score.SpacingSpanner.spacing-increment = #2
    la8\tutta_forza la( si-2 do-2 |
    \newSpacingSection
    \revert Score.SpacingSpanner.spacing-increment
  mi2)\ff~mi8( do-2 sol-4 mi-2 |
  re2)~re8 la'(_\markup { \italic "molto" } si la) |
  la->(_\markup { \italic "maestoso" } sol-> fa-> re-> si-> sol-> fa-> re->) |
  }
  \alternative {
    { do2->~do8 r4. | }
    { do1->\dim ~ | }
  }
  % 38
  <<
    \tag #'part \new CueVoice \relative do {
      % Use hidden rests instead of invisible rests (s16) so that they take up
      % space (otherwise the cue is too close to the violin's note).
      \hideNotes r16 r \unHideNotes
      \once \override Staff.OttavaBracket.font-size = #-3 \ottava #-1
      fa16^"piano" la do la do fa do la do la fa la fa re |
    }
    do1\p |
  >> \ottava #0
  sol1\pp ~ |
  sol1\espressivo ~ |
  sol4 r4 r2 |
  \bar "|."
}

\book{
  \score {
    <<
      \new Staff = "violin" \with {
        instrumentName = #"Violon"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        \override StaffSymbol.thickness = #(magstep -2)
      } <<
        \removeWithTag #'part
        \violin
      >>
      \new PianoStaff = "piano" \with {
        connectArpeggios = ##t
        instrumentName = #"Piano"
      } <<
        \new Staff = "up" \upper
        \new Dynamics = "pianoDynamics" \pianoDynamics
        \new Staff = "down" \lower
      >>
    >>
    \layout {
      \context {
        \Score
        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
      }
    }
  }
} % book (piano)

\book {
  \bookOutputSuffix "Violin"
  \score {
    \new Staff = "violin" \with {
      instrumentName = #"Violon"
    } << \violin >>
    \layout {
      \context {
        \Score
        skipBars = ##t
      }
    }
  }
} % book (violin)

% TODO fix dynamics warnings
\score {
  \unfoldRepeats
  <<
    \new Staff = "violin" \with {
      midiInstrument = #"violin"
    } <<
      \removeWithTag #'part
      \violin
    >>
    \new PianoStaff = "piano" \with {
      midiInstrument = #"acoustic grand"
    } <<
      \new Staff = "up" \upper
      \new Dynamics = "pianoDynamics" \pianoDynamics
      \new Staff = "down" \lower
    >>
  >>
  \midi { }
}
