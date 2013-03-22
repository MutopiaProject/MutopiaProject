\version "2.16.1"

\header {
  title = "Choral \"O Haupt voll Blut und Wunden\""
  subtitle = "Matthäus Passion"
  composer = "J.S. Bach (1685-1750)"
  piece = "CHORAL. CORO I.II"

  mutopiatitle = "Matthäus Passion, Choral 'O Haupt voll Blut und Wunde'"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Voice (SATB) and Piano"
  style = "Baroque"
  date = "1729"
  source = "Edition Peters"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "dwb"
  maintainerEmail = "dwbrand@worldonline.nl"

 footer = "Mutopia-2013/03/22-107"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


global = {
  \time 4/4
  \partial 4
}

Key =  \key d \minor

soprano =  \relative c'' {
  \voiceOne
  a4 |
  d c bes a |
  g2 a4\fermata e' |
  f f  e8[ d] e4 |
  d2.\fermata  a4 |
  \barNumberCheck #5
  d c bes a |
  g2 a4\fermata  e' |
  f f  e8[ d] e4 |
  d2.\fermata  f4 |
   e8[ d] c4 d e |
   \barNumberCheck #10
  f2 f4\fermata  c |
  d c  bes8[ a] bes4 |
  a2.\fermata f'!4 |
   e8[ f] g4 f e |
  d2 e4\fermata  a, |
  \barNumberCheck #15
  bes a g c |
  a2.\fermata  \bar "|."
}


alto =  \relative c' {
  \voiceTwo
  f4 |
   f8[ g] a4  d,8[ e] f4 |
  f(  e) f a |
  a a a  a8[ g] |
  f2.  f4 |
  \barNumberCheck #5
   f8[ g] a4  d,8[ e] f4 |
  f(  e) f  a |
  a a a  a8[ g] |
  f2.  a4 |
  g  g8[ f] f4 bes |
  \barNumberCheck #10
  bes(  a8[  g)] a4  a |
   a8[ g] a4  g8[ fis] g4 |
  fis2.  g4 |
  g c c c |
  c(  b) c   f,8[ e] |
  \barNumberCheck #15
   d8[ e] f4 f e |
  f2.  \bar "|."
}


tenore =  \relative c' {
  \voiceOne
  d4 |
   d8[ e] f4 g c, |
  d(  c) c e |
  e d d cis |
  a2.  d4 |
  \barNumberCheck #5
   d8[ e] f4 g c, |
  d(  c) c  e |
  e d d cis |
  a2.   d8[ c!] |
  bes4 c c  bes8[ c] |
  \barNumberCheck #10
  d4(  c8[  bes)] c4  f8[ es] |
  d4 d d d |
  d2.  d4 |
   c8[ d] e4 f g |
  a(  g) g c, |
  \barNumberCheck #15
  bes c  c8[( bes16  a)]  g8[ c] |
  c2.  \bar "|."
}


basso =  \relative c {
  \voiceTwo
   d'8[ c] |
  bes4 a g f |
  bes,(  c) f\fermata cis |
   d8[ e]  f[ g] a4 a, |
  d2.\fermata   d'8[ c] |
  \barNumberCheck #5
  bes4 a g f |
  bes,(  c) f\fermata  cis |
   d8[ e]  f[ g] a4 a,4 |
  d2.\fermata  d4 |
  g a  bes8[ a] g4 |
  \barNumberCheck #10
  f2 f4\fermata f |
  bes fis g g, |
  d'2.\fermata  b4 |
  c  c'8[ b] a4 g |
  f(  g) c,\fermata  f |
  \barNumberCheck #15
  g  a8[ bes] c4 c, |
  f2.\fermata \bar "|."
}

textOne = \lyricmode {
  O  Haupt voll Blut und Wun -- den, voll Schmerz und vol -- ler Hohn!
  O  Haupt, zu Spott ge- bund -- den mit ei -- ner Dor -- nen -- kron!
  O  Haupt, sonst schön ge -- zie -- ret mit höch -- ster Ehr' und Zier,
  jetzt a -- ber hoch schimp -- fi -- ret: ge -- grüs -- set seist du mir!
}

textTwo = \lyricmode {
  Du ed -- les An -- ge -- Sich -- te, vor dem sonst schrickt und scheut
  das gros -- se Welt -- ge -- rich -- te, wie bist du so be -- speit!
  Wie bist du so er -- blei -- chet, wer hat dein Au -- gen -- licht,
  dem sonst kein Licht niet glei -- chet, so schänd -- lich zu -- ge -- richt't?
}


\score {
  <<
    \global
    \override Score.BarNumber   #'padding = #3
    \context StaffGroup = "coro" <<
      \context Staff = "women" <<
        \set Staff.midiInstrument = #"choir aahs"
        \set Staff.instrumentName = \markup{
	  \smaller \column{"SOPRANO." \line{"ALTO."}}}
        \set Staff.shortInstrumentName = #'""
        \Key
        \context Voice = "one" \soprano
        \context Voice = "two" \alto
      >>

      \context Staff = "men" <<
	\clef bass
	\set Staff.midiInstrument = #"choir aahs"
	\set Staff.instrumentName = \markup{
	  \smaller \column{"TENORE." \line{"BASSO."}}}
	\set Staff.autoBeaming = ##f
	\unset Staff.melismaBusyProperties
	\set Staff.shortInstrumentName = #'""
	\Key
	\context Voice = "tenore" \tenore
	\context Voice = "basso" \basso
      >>
      \new Lyrics \lyricsto "basso" {
	\set stanza = #"1." \textOne
      }
      \new Lyrics \lyricsto "basso" {
	\set stanza = #"2." \textTwo
      }
    >>
  >>
  \layout { }
  \midi {}
}
