\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Variation 4"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Variation 4"
  mutopiacomposer = "MozartWA"
  mutopiapoet = "Wolfgang Amadeus Mozart"
  mutopiainstrument = "Piano"
  date = "1778 or 1781-3"
  source = "Breitkopf & Hartel, Leipzig"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/October/23"
  version = "2.6.0"
  
  footer = "Mutopia-2005/10/30-618"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 6/8
 \repeat volta 2 { << { s8 <a'' cis'''>8( <b'' d'''>) <cis''' e'''>( <b'' d'''> <a'' cis'''>)
 s8 <gis'' b''>( <a'' cis'''>) <b'' d'''>( <a'' cis'''> <gis'' b''>)
 s8 a''8 s4 b''8 s8 <a'' cis'''>( <b'' d'''> <a'' cis'''>) <gis'' b''> s4
 s8 <a'' cis'''>8( <b'' d'''>) <cis''' e'''>( <b'' d'''> <a'' cis'''>)
 s8 <gis'' b''>( <a'' cis'''>) <b'' d'''>( <a'' cis'''> <gis'' b''>)
 s8 <cis'' a''>( <e'' b''>) <a'' cis'''> s4 s8 <a'' cis'''>( <gis'' b''>) a''8 s4 } \\
 { <a' cis''>16\p e'_\markup { \bold \italic "legato" } <a' cis''> e' <b' d''> e'
 <cis'' e''> e' <b' d''> e' <a' cis''> e'
 <gis' b'> e' <gis' b'> e' <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e'
 <e' a'> cis' <e' a'> cis' <e' a'> cis' <gis' b'> e' <gis' b'> e' <gis' b'> e'
 <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e' \slurUp dis''( e'') dis''( e'')
 <a' cis''>\f e' <a' cis''> e' <b' d''> e' <cis'' e''> e' <b' d''> e' <a' cis''> e'
 <gis' b'> e' <gis' b'> e' <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e'
 <e' a'> cis' <e' a'> cis' <gis' b'> e' <a' cis''> e' <a' cis''> e' <b' d''> e'
 <a' cis''> e' <a' cis''> e' <gis' b'> e' a'\staccato e'\staccato cis'\staccato e'\staccato a'8 } >> }
 \repeat volta 2 { e''8.\p( fis''32 e'' d'' cis'' b' a' eis''16 fis'') fis''8\staccato r
 a''16( gis'' b'' a'' gis'' fis'' dis'' e''!) e''8\staccato r
 << { \stemDown e''8.\sfp( fis''32 e'' d'' cis'' b' a' e''16\sfp d''8 e''32 d'' cis'' b' a' gis'
 \stemUp a'8 gis' a') <a' cis''>4( <gis' b'>8) } \\ { s2 s4 s4 dis'8 e'4.\sf } >>
 << { s8 <a'' cis'''>( <b'' d'''>) <cis''' e'''>( <b'' d'''> <a'' cis'''>)
 s8 <gis'' b''>( <a'' cis'''>) <b'' d'''>( <a'' cis'''> <gis'' b''>)
 s8 <cis'' a''>( <e'' b''>) <a'' cis'''> s4 } \\
 { <a' cis''>16\p e' <a' cis''> e' <b' d''> e' <cis'' e''> e' <b' d''> e' <a' cis''> e'
 <gis' b'> e' <gis' b'> e' <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e'
 <e' a'> cis' <e' a'> cis' <gis' b'> e' <a' cis''> e' <a' cis''> fis' <b' d''> fis'} >>
 << { s8 <a'' cis'''>( <gis'' b''>) b''( bis'' cis''')  } \\ { s4 s8 gis''4 a''8 } \\
 { \stemDown <a' cis''>16 e' <a' cis''> e' <gis' b'> e' <gis' b'> e' <gis' bis'> e' <a' cis''> e' } >>
 << { s8 <a'' cis'''>( <b''! d'''>) <cis''' e'''> s4 s8 <a'' cis'''>( <gis'' b''>) a'' s4 }
 \\ { <a' cis''>16\f e' <a' cis''> e' <b'! d''> e' <cis'' e''> a' <cis'' e''> a' <d'' fis''> a'
 <a' cis''> e' <a' cis''> e' <gis' b'> e' a'\staccato e'\staccato cis'\staccato e'\staccato a'8  } >> }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { <a, a>8\p s8 s2 <e, e>8 s8 s2 <a, a>8 s <a, a> <e, e> s <e, e> s2 e'8 e
 <a, a>8\f s8 s2 <e, e>8 s8 s2 <a, a>8 s8 s4 <fis, fis>8 <d, d> <e, e> s8 s4 a8 a, }
 \repeat volta 2 { a16\p( cis' e' cis' e' cis' a d' fis' d' fis' d' a d' fis' d' fis' d' a cis' e' cis' e' cis')
 <a, cis>8 <a cis'> r <b, d> <b d'> r <cis' e'>( <b d'> <a cis'>)
 << { <a cis'>4( <gis b>8) } \\ { e4. } >>
 <a, a>8\p s8 s2 <e, e>8 s8 s2 <a, a>8 s8 s4 <fis, fis>8 <d, d> <e, e>8 s8 s2
 <a, a>8\f s8 s4 <a, a>8 <d, d> <e, e>8 s8 s4 a8 a, }
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
 \repeat volta 2 { << { s8 <a'' cis'''>8( <b'' d'''>) <cis''' e'''>( <b'' d'''> <a'' cis'''>)
 s8 <gis'' b''>( <a'' cis'''>) <b'' d'''>( <a'' cis'''> <gis'' b''>)
 s8 a''8 s4 b''8 s8 <a'' cis'''>( <b'' d'''> <a'' cis'''>) <gis'' b''> s4
 s8 <a'' cis'''>8( <b'' d'''>) <cis''' e'''>( <b'' d'''> <a'' cis'''>)
 s8 <gis'' b''>( <a'' cis'''>) <b'' d'''>( <a'' cis'''> <gis'' b''>)
 s8 <cis'' a''>( <e'' b''>) <a'' cis'''> s4 s8 <a'' cis'''>( <gis'' b''>) a''8 s4 } \\
 { <a' cis''>16\p e'_\markup { \bold \italic "legato" } <a' cis''> e' <b' d''> e'
 <cis'' e''> e' <b' d''> e' <a' cis''> e'
 <gis' b'> e' <gis' b'> e' <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e'
 <e' a'> cis' <e' a'> cis' <e' a'> cis' <gis' b'> e' <gis' b'> e' <gis' b'> e'
 <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e' \slurUp dis''( e'') dis''( e'')
 <a' cis''>\f e' <a' cis''> e' <b' d''> e' <cis'' e''> e' <b' d''> e' <a' cis''> e'
 <gis' b'> e' <gis' b'> e' <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e'
 <e' a'> cis' <e' a'> cis' <gis' b'> e' <a' cis''> e' <a' cis''> e' <b' d''> e'
 <a' cis''> e' <a' cis''> e' <gis' b'> e' a'\staccato e'\staccato cis'\staccato e'\staccato a'8 } >> }
 \repeat volta 2 { e''8.\p( fis''32 e'' d'' cis'' b' a' eis''16 fis'') fis''8\staccato r
 a''16( gis'' b'' a'' gis'' fis'' dis'' e''!) e''8\staccato r
 << { \stemDown e''8.\sfp( fis''32 e'' d'' cis'' b' a' e''16\sfp d''8 e''32 d'' cis'' b' a' gis'
 \stemUp a'8 gis' a') <a' cis''>4( <gis' b'>8) } \\ { s2 s4 s4 dis'8 e'4.\sf } >>
 << { s8 <a'' cis'''>( <b'' d'''>) <cis''' e'''>( <b'' d'''> <a'' cis'''>)
 s8 <gis'' b''>( <a'' cis'''>) <b'' d'''>( <a'' cis'''> <gis'' b''>)
 s8 <cis'' a''>( <e'' b''>) <a'' cis'''> s4 } \\
 { <a' cis''>16\p e' <a' cis''> e' <b' d''> e' <cis'' e''> e' <b' d''> e' <a' cis''> e'
 <gis' b'> e' <gis' b'> e' <a' cis''> e' <b' d''> e' <a' cis''> e' <gis' b'> e'
 <e' a'> cis' <e' a'> cis' <gis' b'> e' <a' cis''> e' <a' cis''> fis' <b' d''> fis'} >>
 << { s8 <a'' cis'''>( <gis'' b''>) b''( bis'' cis''')  } \\ { s4 s8 gis''4 a''8 } \\
 { \stemDown <a' cis''>16 e' <a' cis''> e' <gis' b'> e' <gis' b'> e' <gis' bis'> e' <a' cis''> e' } >>
 << { s8 <a'' cis'''>( <b''! d'''>) <cis''' e'''> s4 s8 <a'' cis'''>( <gis'' b''>) a'' s4 }
 \\ { <a' cis''>16\f e' <a' cis''> e' <b'! d''> e' <cis'' e''> a' <cis'' e''> a' <d'' fis''> a'
 <a' cis''> e' <a' cis''> e' <gis' b'> e' a'\staccato e'\staccato cis'\staccato e'\staccato a'8  } >> }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { <a, a>8\p s8 s2 <e, e>8 s8 s2 <a, a>8 s <a, a> <e, e> s <e, e> s2 e'8 e
 <a, a>8\f s8 s2 <e, e>8 s8 s2 <a, a>8 s8 s4 <fis, fis>8 <d, d> <e, e> s8 s4 a8 a, }
 \repeat volta 2 { a16\p( cis' e' cis' e' cis' a d' fis' d' fis' d' a d' fis' d' fis' d' a cis' e' cis' e' cis')
 <a, cis>8 <a cis'> r <b, d> <b d'> r <cis' e'>( <b d'> <a cis'>)
 << { <a cis'>4( <gis b>8) } \\ { e4. } >>
 <a, a>8\p s8 s2 <e, e>8 s8 s2 <a, a>8 s8 s4 <fis, fis>8 <d, d> <e, e>8 s8 s2
 <a, a>8\f s8 s4 <a, a>8 <d, d> <e, e>8 s8 s4 a8 a, }
}
>>

 \midi { \tempo 4 = 76 }

}
