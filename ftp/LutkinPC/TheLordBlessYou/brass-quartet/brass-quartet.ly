\version "2.18.2"

\header {
 title = "The Lord Bless You and Keep You"
 subtitle = \markup { \smaller "In Memory of John Paul Goodman (1943-2018)" }
 subsubtitle = \markup { \smaller "For Brass Quartet" }
 composer = "Peter C. Lutkin"
 arranger = "Ed.: J. J. Olson"
 date = "1900"
 source = "Chicago: Clayton F. Summy Company" % IMSLP525535
 style = "Hymn"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "LutkinPC"
 mutopiatitle = "The Lord Bless You and Keep You"
 mutopiadate = "1900"
 mutopiasource = "Chicago: Clayton F. Summy Company" % IMSLP525535
 mutopiainstrument = "2 trumpets, trombone and tuba"
 moreInfo = "In memory of John Paul Goodman (1943-2018), a widely beloved choir director in Colorado who always used this song as a farewell and godspeed, most poignantly whenever a fellow choir member passed away. An <a href='http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=2235'>arrangement for two guitars</a> is also available."

 comptitle = \markup { \concat { \composer ": " \title } }
 footer = "Mutopia-2018/12/11-2239"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
 myfoot = \markup{ \override #'(font-name . "DejaVu Sans,sans-serif") \column { \vspace #2 \abs-fontsize #8 \fill-line { \line { \footer } \line { \comptitle } \line { \arranger } } } }
}


\paper{
  %page-count = #6
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = \indent + 8\mm
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##f
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #2 \fromproperty #'header:copyright } }
      \fill-line { \on-the-fly #not-first-page \fromproperty #'header:myfoot }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}



% function to color notes that are near or out of range
#(define (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)
  (let ((pitch (ly:event-property (event-cause grob) 'pitch) ))
    (if pitch
      (if (ly:pitch<? max-pitch pitch) (x11-color 'red)
        (if (ly:pitch<? pitch min-pitch) (x11-color 'blue)
          (if (ly:pitch<? hi-pitch pitch) (x11-color 'orange)
            (if (ly:pitch<? pitch lo-pitch) (x11-color 'green)
) ) ) ) ) ) )

% pitch limits for brass quartet
% absolute max and min attainable
% comfortably attainable hi and lo

#(define (trumpet-Bb-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  2 3 SHARP  ) )  ; F#6
         (hi-pitch  (ly:make-pitch  1 6 FLAT   ) )  ; Bb5
         (lo-pitch  (ly:make-pitch -1 2 NATURAL) )  ; E3
         (min-pitch (ly:make-pitch -1 2 NATURAL) )) ; E3
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

#(define (trombone-Bb-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  1 1 NATURAL) )  ; D5
         (hi-pitch  (ly:make-pitch  0 3 NATURAL) )  ; F4
         (lo-pitch  (ly:make-pitch -2 6 FLAT   ) )  ; Bb2
         (min-pitch (ly:make-pitch -2 6 FLAT   ) )) ; Bb2
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

#(define (tuba-F-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  0 5 NATURAL) )  ; A4
         (hi-pitch  (ly:make-pitch  0 3 NATURAL) )  ; F4
         (lo-pitch  (ly:make-pitch -3 6 NATURAL) )  ; B1
         (min-pitch (ly:make-pitch -3 3 NATURAL) )) ; F1
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

% tempo/dynamics
acl = _\markup { \smaller \italic "accel." }
rit = _\markup { \smaller \italic "rit." }
dim = _\markup { \smaller \italic "dim." }
crc = _\markup { \smaller \italic "cresc." }
dol = ^\markup { \center-align \smaller \italic "dolce" }
dcf = _\markup { \smaller \italic "D.C." }
fin = _\markup { \smaller \italic "Fin" }
pco = _\markup { \smaller \italic "poco" }
ahh = _\markup { \smaller \italic "a" }
ehh = _\markup { \smaller \italic "e" }

global = {
  \key c \major
  \time 4/4
  \tempo 4=66
}


soprano = \transpose c d {
  \transposition bes
  \global
  \partial 4 { g'4 } | %0
  g'2 e'4 c'8 c' | %1
  d'4 f' e'4. \breathe g'8 | %2
  g'4 e'8 g' c''8. b'16 a'8 e' | %3
  g'4 fis' g' r | %4

  r8 e' f' e' a'4 r | %5
  r8 g' a' g' c'' r r g' | %6
  g'8 e' g' c'' e''8. c''16 g'8 e' | %7
  g'4 f' e' \breathe e'8 a' | %8
  a'2~ a'8 g' e' g' | %9
  c''4. c''8 c''4 a' | %10
  r4 r8 a' g'4. c'8 | %11
  a'8 g' r4 g' f' | %12
  e'2 d' | %13

  c'4 r r2 | %14
  R1 | %15
  r4 b'\( e'' d'' | %16
  c''4\) e''\( g'' f''! | %17
  e''4 d'' c'' b' | %18
  a'2.\) b'8\( a' | %19
  g'2.\) a'8\( g' | %20
  f'4 d' g' a'\) | %21
  g'1 | %22
  g'1\fermata | %23
  \bar "|."

}

alto = \transpose c d {
  \transposition bes
  \global
  \partial 4 { c'4 } | %0
  c'2 c'4 c'8 c' | %1
  c'4 b c'4. \breathe e'8 | %2
  e'4 c'8 e' e'8. e'16 e'8 e' | %3
  d'2 d'4 r | %4

  r8 cis' cis' cis' d'4 r | %5
  r8 d' d' d' c' g' g' f' | %6
  e'8 c' e'4 e'8. e'16 e'8 c' | %7
  e'4 d' c' r | %8
  r4 c'8 d' e' e' r4 | %9
  r4 f'8 g' a'4 f' | %10
  r4 r8 c'8 c'4. c'8 | %11
  c'8 c' r4 cis' d' | %12
  c'!2 b | %13

  c'4 r r2 | %14
  r4 c'^\( f' e' | %15
  d'2\) e'~^\( | %16
  e'4 fis' g'2\) | %17
  g'4\( gis' a' e'~ | %18
  e'4\) f'8^\( e' d'2~ | %19
  d'4\) e'8^\( d' cis'2\) | %20
  d'4^\( b c'2~ | %21
  c'4 d'8 c' b2\) | %22
  c'1\fermata | %23
  \bar "|."
}

tenor = \transpose c c {
  \global
  \clef "bass"
  \partial 4 { e4 } | %0
  e2 g4 e8 e | %1
  a4 g g4. \breathe c'8 | %2
  c'4 g8 g a8. gis16 a8 a | %3
  b4 a b r | %4

  r8 a a a a4 r | %5
  r8 b c' b c' g a b | %6
  c'4 c' c'8. c'16 c'8 c' | %7
  c'4 b c' r | %8
  r4 a8 b c' c' r4 | %9
  r4 c'8 bes a4 c' | %10
  r4 r8 c' bes4. bes8 | %11
  bes8 bes r4 a a | %12
  g2. f4 | %13

  e4 g\( c' b | %14
  a4\) a\( d' c' | %15
  b2\) g4\( a8 b | %16
  c'2\) b4\( c'8 d' | %17
  e'2. b4\) | %18
  c'4\( d'8 c' b2~ | %19
  b4 c'8 b a2\) | %20
  a4\( aes g fis | %21
  f!2\) f | %22
  e1\fermata | %23
  \bar "|."

}

bass = \transpose c c {
  \global
  \clef "bass"
  \partial 4 { c4 } | %0
  c2 c4 c8 c | %1
  f,4 g, c4. \breathe c8 | %2
  c4 c8 c a,8. b,16 c8 c | %3
  d2\( g8\) \breathe g\< g g\! | %4

  g2\(\> f8\)\! \breathe f\< f f\! | %5
  f2\(\> e8\)\! \breathe e d4 | %6
  c8 c' g e c8. g16 g8 g | %7
  g4 gis a r | %8
  r4 f8 f e e r4 | %9
  r4 d8 e f4 f | %10
  r4 r8 f8 e4. e8 | %11
  f8 e r4 e4 d | %12
  g,2 g, | %13

  c4 r c\( d8 e | %14
  f2\) d4\( e8 f | %15
  g2\) e4\( f8 g | %16
  a2\) g4\( a8 b | %17
  c'4 b a g | %18
  f2.\) g8\( f | %19
  e2.\) f8\( e | %20
  d4 f e es | %21
  d2\) g, | %22
  c1\fermata | %23
  \bar "|."

}

% layout control for brass quartet score
pageQuartet = {
  \partial 4 { s4 } | %0
  s1 %1
  s1 %2
  s1 %3
  \break
  s1 %4
  s1 %5
  s1 %6
  s1 %7
  \break
  s1 %8
  s1 %9
  s1 %10
  s1 %11
  \break
  s1 %12
  s1 %13
  s1 %14
  s1 %15
  \break
  s1 %16
  s1 %17
  s1 %18
  s1 %19
  \break
  s1 %20
  s1 %21
  s1 %22
  s1 %23
  \pageBreak
}

% layout control for individual parts
pageParts = {
  \partial 4 { s4 } | %0
  s1 %1
  s1 %2
  s1 %3
  s1 %4
  \break
  s1 %5
  s1 %6
  s1 %7
  s1 %8
  s1 %9
  \break
  s1 %10
  s1 %11
  s1 %12
  s1 %13
  s1 %14
  s1 %15
  s1 %16
  \break
  s1 %17
  s1 %18
  s1 %19
  s1 %20
  s1 %21
  s1 %22
  s1 %23
}

dimpoco =
#(make-music 'DecrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "dim.  poco  a  poco  e  rit.")

% common dynamics
crescendi = {
  \partial 4 { s4\p } | %0
  s4 s4 s4 s4 %1
  s4 s4 s4 s4 %2
  s4\< s8\! s8 s4 s4 %3
  s4\> s4\! s4 s4 %4
  s4 s4 s4 s4 %5
  s4 s4 s4 s8 s8\< %6
  s8 s8\! s4 s4 s4 %7
  s4\> s4 s4\! s4 %8
  s4 s4 s4 s4 %9
  s8 s8\< s4 s4\> s4\! %10
  s4 s4 s4 s8 s8\< %11
  s16 s16\> s8\! s8 s8 s4 s4 %12
  s4 s4 s4\> s4 %13
  s8 s8\! s4\p s4 s4 %14
  s4\cresc s4 s4 s4 %15
  s4 s4 s4 s4 %16
  s4 s4 s4 s4\! %17
  s4\f s4 s4 s4\dimpoco %18
  s4 s4 s4 s4 %19
  s4 s4 s4 s4 %20
  s4 s4 s4 s4 %21
  s4 s4\! s4 s4 %22
  s4\pp\> s4 s4 s4\! %23
}

% a tempo track to control midi
tempO = {
  \partial 4 { \tempo 4=75 s4 } | %0
  \tempo 4=75 s4  \tempo 4=74 s4  \tempo 4=73 s4  \tempo 4=73 s4 %1
  \tempo 4=72 s4  \tempo 4=70 s4  \tempo 4=65 s4  \tempo 4=70 s4 %2
  \tempo 4=69 s4  \tempo 4=71 s4  \tempo 4=72 s4  \tempo 4=72 s4 %3
  \tempo 4=72 s4  \tempo 4=72 s4  \tempo 4=71 s4  \tempo 4=69 s4 %4
  \tempo 4=68 s4  \tempo 4=68 s4  \tempo 4=66 s4  \tempo 4=66 s4 %5
  \tempo 4=66 s4  \tempo 4=65 s4  \tempo 4=65 s4  \tempo 4=65 s4 %6
  \tempo 4=67 s4  \tempo 4=69 s4  \tempo 4=65 s4  \tempo 4=64 s4 %7
  \tempo 4=63 s4  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=61 s4 %8
  \tempo 4=61 s4  \tempo 4=62 s4  \tempo 4=67 s4  \tempo 4=69 s4 %9
  \tempo 4=62 s4  \tempo 4=61 s4  \tempo 4=60 s4  \tempo 4=61 s4 %10
  \tempo 4=61 s4  \tempo 4=63 s4  \tempo 4=62 s4  \tempo 4=63 s4 %11
  \tempo 4=63 s4  \tempo 4=63 s4  \tempo 4=62 s4  \tempo 4=62 s4 %12
  \tempo 4=62 s4  \tempo 4=63 s4  \tempo 4=63 s4  \tempo 4=64 s4 %13
  \tempo 4=64 s4  \tempo 4=65 s4  \tempo 4=65 s4  \tempo 4=66 s4 %14
  \tempo 4=68 s4  \tempo 4=68 s4  \tempo 4=69 s4  \tempo 4=70 s4 %15
  \tempo 4=71 s4  \tempo 4=71 s4  \tempo 4=72 s4  \tempo 4=72 s4 %16
  \tempo 4=74 s4  \tempo 4=73 s4  \tempo 4=73 s4  \tempo 4=73 s4 %17
  \tempo 4=73 s4  \tempo 4=71 s4  \tempo 4=70 s4  \tempo 4=69 s4 %18
  \tempo 4=66 s4  \tempo 4=65 s4  \tempo 4=65 s4  \tempo 4=65 s4 %19
  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=63 s4 %20
  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=60 s4  \tempo 4=60 s4 %21
  \tempo 4=52 s4  \tempo 4=55 s4  \tempo 4=56 s4  \tempo 4=56 s4 %22
  \tempo 4=56 s4  \tempo 4=57 s4  \tempo 4=59 s4  \tempo 4=60 s4 %23
}


% for layout of quartet without midi
\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup{ "Trumpet I" }
    } {
      \override Staff.NoteHead.color = #trumpet-Bb-pitch-range
      <<
        \new Voice = "soprano" \with { \consists "Ambitus_engraver" } { \soprano }
        \pageQuartet
        \crescendi
      >>
    }
    \new Staff \with {
      instrumentName = \markup{ "Trumpet II" }
    } {
      \override Staff.NoteHead.color = #trumpet-Bb-pitch-range
      <<
        \new Voice = "alto" \with { \consists "Ambitus_engraver" } { \alto }
        \crescendi
      >>
    }
    \new Staff \with {
      instrumentName = \markup{ "Trombone" }
    } {
      \override Staff.NoteHead.color = #trombone-Bb-pitch-range
      <<
        \new Voice = "tenor" \with { \consists "Ambitus_engraver" } { \tenor }
        \crescendi
      >>
    }
    \new Staff \with {
      instrumentName = \markup{ "Tuba" }
    } {
      \override Staff.NoteHead.color = #tuba-F-pitch-range
      <<
        \new Voice = "bass" \with { \consists "Ambitus_engraver" } { \bass }
        \crescendi
      >>
    }
  >>
  \layout { }
}


% for tempo controlled midi of quartet
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "trumpet"
    } {
      <<
        { \soprano }
        { \tempO }
      >>
    }
    \new Staff \with {
      midiInstrument = "trumpet"
    } {
      <<
        { \alto }
      >>
    }
    \new Staff \with {
      midiInstrument = "trombone"
    } {
      <<
        { \tenor }
      >>
    }
    \new Staff \with {
      midiInstrument = "tuba"
    } {
      <<
        { \bass }
      >>
    }
  >>
  \midi { }
}


\score {
  \new Staff \with {
    instrumentName = \markup{ "Trumpet I" }
  } {
    %\override Staff.NoteHead.color = #trumpet-Bb-pitch-range
    <<
      \new Voice = "soprano" \with { \consists "Ambitus_engraver" } { \soprano }
      { \pageParts }
      { \crescendi }
    >>
  }
  \layout { }
}


\score {
  \new Staff \with {
    instrumentName = \markup{ "Trumpet II" }
  } {
    %\override Staff.NoteHead.color = #trumpet-Bb-pitch-range
    <<
      \new Voice = "alto" \with { \consists "Ambitus_engraver" } { \alto }
      { \pageParts }
      { \crescendi }
    >>
  }
  \layout { }
}


\score {
  \new Staff \with {
    instrumentName = \markup{ "Trombone" }
  } {
    %\override Staff.NoteHead.color = #trombone-Bb-pitch-range
    <<
      \new Voice = "tenor" \with { \consists "Ambitus_engraver" } { \tenor }
      { \pageParts }
      { \crescendi }
    >>
  }
  \layout { }
}


\score {
  \new Staff \with {
    instrumentName = \markup{ "Tuba" }
  } {
    %\override Staff.NoteHead.color = #tuba-F-pitch-range
    <<
      \new Voice = "bass" \with { \consists "Ambitus_engraver" } { \bass }
      { \pageParts }
      { \crescendi }
    >>
  }
  \layout { }
}
