\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Tema"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Tema"
  mutopiacomposer = "MozartWA"
  mutopiapoet = "Wolfgang Amadeus Mozart"
  mutopiainstrument = "Piano"
  date = "1778 or 1781-3"
  source = "Breitkopf & Härtel, Leipzig"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/October/23"
  version = "2.6.0"
  
  footer = "Mutopia-2005/10/29-614"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 6/8
 \repeat volta 2 { cis''8.^\markup { \large "Andante grazioso" }\p^\markup { \huge "TEMA" }( d''16) cis''8 e''4 e''8
 b'8.( cis''16) b'8 d''4 d''8 a'4 a'8 b'4 b'8
 cis''4 << { e''16( d'') cis''4( b'8) } \\ { b'8 a'4( gis'8) } >>
 cis''8.( d''16) cis''8 e''4 e''8 b'8.( cis''16) b'8 d''4 d''8
 a'4 b'8 cis''4 <fis' b' d''>8\sf <e' a' cis''>4\p <d' e' gis' b'>8 <cis' e' a'>4 r8 }
 \repeat volta 2 { e''8.( fis''16) e''8 fis''4 fis''8
 \grace { fis''16[ gis''] } a''8.( gis''16) fis''8 fis''8( e'') e''\staccato
 e''8\sf( cis'') a'\staccato e''8\sf( d'') b'\staccato e''8\sf( cis'') a'\staccato
 << { cis''4( b'8) } \\ { a'4( gis'8) } >>
 cis''8.\p( d''16) cis''8 e''4 e''8 b'8.( cis''16) b'8 d''4 d''8
 a'4 b'8 cis''4 <fis' b' d''>8\sf <e' a' cis''>4\p <e' gis' b'>8
 << { <gis' b'>4( <a' cis''>8) } \\ { e'4. } >>
 << { <a' cis''>4 <gis' d''>8 <a' e''>4
 \stemDown fis''16( gis''32 a'' \stemUp a'4) cis''16( b') a'4 r8 } \\
 { e'4\f e'8 e'4 s8 s4 gis'8 a'4 s8 } >> }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { << { e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 s2
 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 s8 s4 e,8 a,4 r8 } \\
 { a8.\p( b16) a8 cis'4 cis'8 gis8.( a16) gis8 b4 b8 fis4 fis8 gis4 gis8 a4 d8 e4.
 a8.( b16) a8 cis'4 cis'8 gis8.( a16) gis8 b4 b8 fis4 gis8 a4 d8\sf e4\p s2 } >> }
 \repeat volta 2 { a8( cis' e' a d' fis' a d' fis' a cis' e')
 <a cis'>4\sf r8 <gis d'>4\sf r8 <a cis'>4\sf <fis dis'>8 <e e'>4.
 << { e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 s8 s4 e,8 a,4. } \\
 { a8.\p( b16) a8 cis'4 cis'8 gis8.( a16) gis8 b4 b8 fis4 gis8 a4 d8\sf e4\p s2 } >>
 <a, a>4\f <b, b>8 <cis cis'>4 <d d'>8 <e cis'>4 <e d'>8 <a cis'>4 r8 }
}
>>

 \layout { }

}

\score {

 \unfoldRepeats

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 6/8
 \repeat volta 2 { cis''8.^\markup { \large "Andante grazioso" }\p^\markup { \huge "TEMA" }( d''16) cis''8 e''4 e''8
 b'8.( cis''16) b'8 d''4 d''8 a'4 a'8 b'4 b'8
 cis''4 << { e''16( d'') cis''4( b'8) } \\ { b'8 a'4( gis'8) } >>
 cis''8.( d''16) cis''8 e''4 e''8 b'8.( cis''16) b'8 d''4 d''8
 a'4 b'8 cis''4 <fis' b' d''>8\sf <e' a' cis''>4\p <d' e' gis' b'>8 <cis' e' a'>4 r8 }
 \repeat volta 2 { e''8.( fis''16) e''8 fis''4 fis''8
 \grace { fis''16[ gis''] } a''8.( gis''16) fis''8 fis''8( e'') e''\staccato
 e''8\sf( cis'') a'\staccato e''8\sf( d'') b'\staccato e''8\sf( cis'') a'\staccato
 << { cis''4( b'8) } \\ { a'4( gis'8) } >>
 cis''8.\p( d''16) cis''8 e''4 e''8 b'8.( cis''16) b'8 d''4 d''8
 a'4 b'8 cis''4 <fis' b' d''>8\sf <e' a' cis''>4\p <e' gis' b'>8
 << { <gis' b'>4( <a' cis''>8) } \\ { e'4. } >>
 << { <a' cis''>4 <gis' d''>8 <a' e''>4
 \once \override Voice.Slur #'attachment = #'(head . stem)
 \stemDown fis''16( gis''32 a'' \stemUp a'4) cis''16( b') a'4 r8 } \\
 { e'4\f e'8 e'4 s8 s4 gis'8 a'4 s8 } >> }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { << { e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 s2
 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 s8 s4 e,8 a,4 r8 } \\
 { a8.\p( b16) a8 cis'4 cis'8 gis8.( a16) gis8 b4 b8 fis4 fis8 gis4 gis8 a4 d8 e4.
 a8.( b16) a8 cis'4 cis'8 gis8.( a16) gis8 b4 b8 fis4 gis8 a4 d8\sf e4\p s2 } >> }
 \repeat volta 2 { a8( cis' e' a d' fis' a d' fis' a cis' e')
 <a cis'>4\sf r8 <gis d'>4\sf r8 <a cis'>4\sf <fis dis'>8 <e e'>4.
 << { e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 e'8 e'4 s8 s4 e,8 a,4. } \\
 { a8.\p( b16) a8 cis'4 cis'8 gis8.( a16) gis8 b4 b8 fis4 gis8 a4 d8\sf e4\p s2 } >>
 <a, a>4\f <b, b>8 <cis cis'>4 <d d'>8 <e cis'>4 <e d'>8 <a cis'>4 r8 }
}
>>

 \midi { \tempo 8 = 112 }

}
