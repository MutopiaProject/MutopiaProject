\version "2.6.0"

\header {
  title = "Praeludium 15 - BWV 860"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Praeludium 15 - BWV 860"
  mutopiacomposer = "BachJS"
  mutopiapoet = "Johann Sebastian Bach"
  mutopiainstrument = "Piano"
  date = "18th Century"
  source = "Augener, ed. C. Czerny (1791-1857)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  maintainerEmail = "chopin@zak.forthnet.gr"
  lastupdated = "2005/August/20"
  
  footer = "Mutopia-2005/10/02-604"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key g \major
 \time 4/4
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \override TupletBracket #'transparent = ##t
 \times 2/3 { g'16[ b' d''] g''[ d'' b'] d''[ b' g'] b'[ g' d'] e'[ g' c''] e''[ c'' g'] c''[ g' e'] g'[ e' c']
 a16[ c' fis'] a'[ fis' c'] fis'[ c' a] c'[ a fis] g[ b d'] g'[ d' b] d'[ b g] b[ g d]
 a[ cis' e'] a'[ e' cis'] e'[ cis' a] cis'[ a e] } d'8 r r d'
 \times 2/3 { d'16[ cis' d'] e'[ cis' d'] fis'[ cis' d'] g'[ cis' d'] a'[ cis' d'] b'[ cis' d'] a'[ cis' d'] g'[ dis' e'] }
 fis'8[ g'] a'[ b'] a'[ g'] fis'[ a']
 \times 2/3 { gis'16[ b' d''] f''[ d'' b'] d''[ b' gis'] b'[ gis' f'] d'[ f' gis'] b'[ gis' f'] gis'[ f' d'] f'[ d' b] }
 c'8[ e''] c''[ a'] e'[ e''] c''[ a']
 \times 2/3 { dis''16[ fis'' a''] c'''[ a'' fis''] a''[ fis'' dis''] fis''[ dis'' c''] a'[ c'' dis''] fis''[ dis'' c''] dis''[ c'' a'] c''[ a' fis'] }
 g'8[ a'] b'[ c''] b'[ a'] g'[ b']
 \times 2/3 { a'16[ gis' a'] b'[ gis' a'] cis''[ gis' a'] d''[ gis' a'] e''[ gis' a'] fis''[ gis' a'] g''![ e'' cis''] a'[ cis'' e''] }
 fis''8 r \times 2/3 { a''16[ fis'' d''] c''![ d'' fis''] } a''8 g'' \times 2/3 { g''16[ e'' cis''] a'[ cis'' e''] }
 g''8 fis'' \times 2/3 { fis''16[ d'' b'] g'[ b' d''] } fis''8 e'' \times 2/3 { e''16[ cis'' a'] g'[ a' cis''] }
 e''8 d'' r d'' \times 2/3 { d''16[ c'' b'] b'[ a' g'] g'[ b' d''] f''[ e'' d''] d''[ e'' f''] }
 e''8 r e'' \times 2/3 { e''16[ d'' cis''] cis''[ b' a'] a'[ cis'' e''] g''[ fis'' e'']
 e''16[ fis'' g''] } fis''8 r a'' \times 2/3 { a''16[ g'' fis''] fis''[ e'' d''] d''[ fis'' a''] c'''[ b'' a'']
 a''16[ b'' c'''] } b''8 ~ \times 2/3 { b''16[ a'' g''] f''[ e'' d''] c''[ e'' g''] a''[ fis'' d''] b'[ d'' fis''] g''[ e'' c'']
 a'16[ c'' e''] fis''[ d'' b'] g'[ b' d''] e''[ c'' a'] fis'[ a' c''] d''[ b' g'] e'[ g' b'] c''[ a' fis']
 d'16[ fis' a'] b'[ g' e'] c'[ e' g'] a'[ fis' d'] b[ d' fis'] g'[ e' b] a[ e' g'] fis'[ d' c'] } <b d' g'>1^\fermata
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key g \major
 \time 4/4
 g8 g, r g g g, r g g g, r g g g, r g g g, r g
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \override TupletBracket #'transparent = ##t
 \times 2/3 { fis16[ a cis'] d'[ a fis] a[ fis d] fis[ d b,] } e8 e, r e cis[ a,] b,[ cis]
 \times 2/3 { d16[ cis' d'] e[ cis' d'] fis[ cis' d'] g[ cis' d'] fis[ cis' d'] e[ cis' d'] d[ cis' d'] fis[ cis' d'] }
 b,8 b r a gis gis, r gis
 \times 2/3 { a16[ c' e'] a'[ e' c'] e'[ c' a] c'[ a e] c[ e a] c'[ a e] a[ e c] e[ c a,] } fis,8 fis r e dis dis, r dis
 \times 2/3 { e16[ dis' e'] fis[ dis' e'] g[ dis' e'] a[ dis' e'] g[ dis' e'] fis[ dis' e'] e[ dis' e'] g[ dis' e'] }
 cis8[ d] e[ fis] cis[ b,] a,[ cis]
 \times 2/3 { d16[ fis a] d'[ a fis] } d8 d' \times 2/3 { d16[ g b] d'[ b g] } d8 d'
 \times 2/3 { d16[ a cis'] d'[ a fis] } d8 d' \times 2/3 { d16[ e g] b[ g e] } d8 d'
 \times 2/3 { d16[ fis a] d'[ a fis] a[ fis d] fis[ d c!] b,[ d fis] g[ d b,] d[ b, g,] b,[ g, f,]
 e,16[ g, b,] c[ e g] c'[ g e] g[ e d] cis[ e g] a[ e cis] e[ cis a,] cis[ a, g,] }
 \times 2/3 { fis,[ a, cis] d[ fis a] d'[ a fis] a[ fis d] fis[ d a,] d[ a, fis,] } d,8 d
 g,8 ~ \times 2/3 { g,16[ b, d] g[ a b] b[ c' d'] } e'8 \times 2/3 { c'16[ a fis] } d'8 \times 2/3 { b16[ g e] }
 c'8 \times 2/3 { a16[ fis d] } b8 \times 2/3 { g16[ e c] } a8 \times 2/3 { fis16[ d b,] } g8 \times 2/3 { e16[ c a,] }
 fis8 \times 2/3 { d16[ b, g,] e[ c a,] fis[ d b,] } g8[ e] c[ d] g,1_\fermata
 \bar "|."
}
>>

 \layout {
   \context {
   \Staff minimumVerticalExtent = #'( -6 . 6 )
   }
 }

 \midi { \tempo 8 = 132 }

}
