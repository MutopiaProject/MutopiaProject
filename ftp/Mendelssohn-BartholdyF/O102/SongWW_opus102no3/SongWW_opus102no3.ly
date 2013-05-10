\version "2.6.0"

\header {
  title = "Lied Ohne Worte - Opus 102 No. 3"
  composer = "Felix Mendelssohn"
  mutopiatitle = "Lied Ohne Worte - Opus 102 No. 3"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiapoet = "Felix Mendelssohn"
  mutopiainstrument = "Piano"
  date = "1845"
  source = "Breitkopf & Härtel, Leipzig"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/August/14"
  version = "2.6.0"
  
  piece = " "
  footer = "Mutopia-2005/08/14-589"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key c \major
 \time 6/8
 g'8\staccato^\markup { \large "Presto" }\p a'\staccato g'\staccato g'\staccato a'\staccato g'\staccato
 g'8\staccato a'\staccato g'\staccato g'\staccato a'\staccato g'\staccato
 g'8 a' b' c'' d'' e'' f'' a' d'' <g' c''>4( b'8)
 <d' f' g'>8 a' g' <e' g'> a' g' <f' g'>  a' g' g' a' g' c'' b' a' g' c'' e'' <g' g''> d'' e'' c'' r e''(
 \repeat volta 2 { e'8) r e''( f') r e''( a') r e''( gis') r e''( e') fis'\staccato gis'\staccato a' b' c''
 \appoggiatura d''32( c''8) b' a' gis' b' e''( e') r e''( f') r e''( a') r e''( gis') r e''(
 a'8) b'\staccato c''\staccato \appoggiatura d''32 c''8 b' a' \appoggiatura a'32 g'8 fis' e' dis' fis' b'
 b8 r b' \setTextCresc c'\< r b' e' r b' dis' r b' e' r b' g' r b' <g' ais'> r b' fis' r b'\!
 b''8\f r b' <c'' b''> r b' <e'' b''> r b' <dis'' b''> r b'
 e''8 fis'' g'' \appoggiatura a''32 g''8 fis'' e'' <b' dis''>\f c'' b' b' c'' b'
 <e' ais'>2.\sf <dis' b'>8 c'' b' b' c'' b' <e' ais'>2. <dis' b'>8 c'' b' \setTextDim b'\> c'' b'
 ais'8 b' ais' ais' b' ais' a'! b' a' a' b' a' gis' a' gis' gis' a' gis'\!
 g'!8\p a' g' g' a' g' g' a' g' g' a' g' g' a' b' c'' d'' e'' f'' a' d'' <g' c''>4( b'8)
 <d' f' g'>8 a' g' <e' g'> a' g' <f' g'> a' g' g' a' g' c'' b' a' g' c'' e'' }
 \alternative { { <g' g''>8 d'' e'' c'' r e'' } { <g' g''>8 d'' e'' c'' e'' a' } }
 c''8 b' a' g' c'' e'' <g' g''> d'' e'' c'' e'' a'
 << { c''8 r r r4 r8 c'' r r b' r r bes' r r a' r r bes' r r a' r r a'8 r r gis' r r g'! r r fis' r r } \\
 { a'8\sf b' a' a' b' a' a'_\markup { \large \italic dimin. } b' a' g' a' g' g' a' g' f' g' f' g' a' g' f' g' f'
 fis'8 g' fis' e' f'! e' e' f' e' d' e' d' } >> <d' f'!>8 r r <c' e'> r r
 << { <c' e'>8 r r <b d'> r r c' r r r4 r8 <c' e'> r r <b d'> r r <c' g'> r r r4 r8 } \\
 { g8 a g g a g g a g c' e' g' g a g g a g g a g c' e' g' } >>
 \clef bass <e c'>8 r r r4 c'8 <a c' f'> r r <fis c' dis'> r r <g c' e'> r r <e g bes cis'> r r <f g d'> r r <d f g b!> r r
 <e g c'>8 d' c' c' d' c' <a c'> d' c' \setTextDim <fis c'>_\markup { \large \italic dimin. } d' c'
 << { c'8 d' c' c' d' c' } \\ { g8 r r e r r } >> <f c'>8 d' c' <a c'> d' c' <e g> r r << { <f a>8 r r } \\ { c8 d c } >>
 <e g>8\pp r r c\staccato d\staccato c\staccato
 r4 r8 \clef treble c''\staccato d''\staccato c''\staccato <e'' g'' c'''>8 r r r4 r8^\fermata
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key c \major
 \time 6/8
 <c' e'>4\p r8 <b d'>4 r8 <a c'>4 r8 <g b>4 r8
 <f g d'>8 <f g d'> <f g d'> <e g c'> <e g c'> <e g c'> <d f a d'> <d f a d'> <d f a d'> << { e'4( d'8) } \\ { g4 r8 } >>
 <b, g>4 r8 <c g>4 r8 <d g b>4 r8 <e g c'>4 r8
 <fis c' d'>8 <fis c' d'> <fis c' d'> <g c' e'> <g c' e'> <g c' e'> <g b f'!> <g b f'> <g b f'> <c' e'> r r
 \repeat volta 2 { <e gis b>8 <e gis b> r <e a c'> <e a c'> r <e c' e'> <e c' e'> r <e b d'> <e b d'> r
 <a c'>4 r8 <g! a c'>4 r8 <f a dis'>4 r8 <e b e'>4 r8
 <e gis b>8 <e gis b> r <e a c'> <e a c'> r <e c' e'> <e c' e'> r <e b d'> <e b d'> r
 <a c' e'>4 r8 <c e a>4 r8 <c e ais>4 r8 <b, fis b>4 r8
 <b, dis fis>8 <b, dis fis> r <b, e g> <b, e g> r <b, g b> <b, g b> r <b, fis a> <b, fis a> r
 <b, g b>8 <b, g b> r <b, e b> <b, e b> r <b, e b> <b, e b> r <b, dis b> <b, dis b> r
 <b, dis b>8 <b, dis b> r <b, e b> <b, e b> r <b, g b> <b, g b> r <b, fis b> <b, fis b> r
 <b, g b>4. <bis, c e ais>4. <b, fis b>4 r8 r4 r8
 c8 d c c d c b,4 r8 r4 r8 c,8 d, c, c, d, c, b,,4 r8
<b dis'>4 r8 <cis' e'>4 r8 <b, b>4 r8 <dis' fis'>4 r8 <b, b>4 r8 e'4 r8 <b, b>4 r8
<c' e'>4 r8 <b d'>4 r8 <a c'>4 r8 <g b>4 r8
 <f g d'> <f g d'> <f g d'> <e g c'> <e g c'> <e g c'> <d f a d'> <d f a d'> <d f a d'> <g e'>4( d'8)
 <b, g>4 r8 <c g>4 r8 <d g b>4 r8 <e g c'>4 r8 <fis c' d'>8 <fis c' d'> <fis c' d'> <g c' e'> <g c' e'> <g c' e'> }
 \alternative { { <g b f'!>8 <g b f'> <g b f'> <c' e'> r r } { <g b f'!>8 <g b f'> <g b f'> <a c' e'> r r } }
 <fis c' d'>8 r r <g c' e'> r r <g b f'!> r r <a c' e'> r r
 <fis d'>8 r r <fis d'> r r <fis d'> r r <g d'> r r <e c'> r r <f! c'> r r <e c'> r r <f c'> r r
 <dis b>8 r r <e b> r r <cis a> r r <d! a> r r
 << { g8 a g g a g } \\ { b,8 r r c r r } >> g,8 r r <f, f> r r <e, e> r r r4 r8 g, r r <f, f> r r <e, e> r r r4 r8
 c,8 d, c, c, d, c, c, d, c, c, d, c, c, d, c, c, d, c, c, d, c, c, d, c,
 c,8 r r r4 c,8 f, r r dis, r r e, r r c, r r a,, r r f,, r r c, d, c, r4 r8
 c,\staccato d,\staccato c,\staccato r4 r8 c'\staccato d'\staccato c'\staccato r4 r8 <c, c>8 r r r4 r8^\fermata
 \bar "|."
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
 \key c \major
 \time 6/8
 g'8\staccato^\markup { \large "Presto" }\p a'\staccato g'\staccato g'\staccato a'\staccato g'\staccato
 g'8\staccato a'\staccato g'\staccato g'\staccato a'\staccato g'\staccato
 g'8 a' b' c'' d'' e'' f'' a' d'' <g' c''>4( b'8)
 <d' f' g'>8 a' g' <e' g'> a' g' <f' g'>  a' g' g' a' g' c'' b' a' g' c'' e'' <g' g''> d'' e'' c'' r e''(
 \repeat volta 2 { e'8) r e''( f') r e''( a') r e''( gis') r e''( e') fis'\staccato gis'\staccato a' b' c''
 \appoggiatura d''32( c''8) b' a' gis' b' e''( e') r e''( f') r e''( a') r e''( gis') r e''(
 a'8) b'\staccato c''\staccato \appoggiatura d''32 c''8 b' a' \appoggiatura a'32 g'8 fis' e' dis' fis' b'
 b8 r b' \setTextCresc c'\< r b' e' r b' dis' r b' e' r b' g' r b' <g' ais'> r b' fis' r b'\!
 b''8\f r b' <c'' b''> r b' <e'' b''> r b' <dis'' b''> r b'
 e''8 fis'' g'' \appoggiatura a''32 g''8 fis'' e'' <b' dis''>\f c'' b' b' c'' b'
 <e' ais'>2.\sf <dis' b'>8 c'' b' b' c'' b' <e' ais'>2. <dis' b'>8 c'' b' \setTextDim b'\> c'' b'
 ais'8 b' ais' ais' b' ais' a'! b' a' a' b' a' gis' a' gis' gis' a' gis'\!
 g'!8\p a' g' g' a' g' g' a' g' g' a' g' g' a' b' c'' d'' e'' f'' a' d'' <g' c''>4( b'8)
 <d' f' g'>8 a' g' <e' g'> a' g' <f' g'> a' g' g' a' g' c'' b' a' g' c'' e'' }
 \alternative { { <g' g''>8 d'' e'' c'' r e'' } { <g' g''>8 d'' e'' c'' e'' a' } }
 c''8 b' a' g' c'' e'' <g' g''> d'' e'' c'' e'' a'
 << { c''8 r r r4 r8 c'' r r b' r r bes' r r a' r r bes' r r a' r r a'8 r r gis' r r g'! r r fis' r r } \\
 { a'8\sf b' a' a' b' a' a'_\markup { \large \italic dimin. } b' a' g' a' g' g' a' g' f' g' f' g' a' g' f' g' f'
 fis'8 g' fis' e' f'! e' e' f' e' d' e' d' } >> <d' f'!>8 r r <c' e'> r r
 << { <c' e'>8 r r <b d'> r r c' r r r4 r8 <c' e'> r r <b d'> r r <c' g'> r r r4 r8 } \\
 { g8 a g g a g g a g c' e' g' g a g g a g g a g c' e' g' } >>
 \clef bass <e c'>8 r r r4 c'8 <a c' f'> r r <fis c' dis'> r r <g c' e'> r r <e g bes cis'> r r <f g d'> r r <d f g b!> r r
 <e g c'>8 d' c' c' d' c' <a c'> d' c' \setTextDim <fis c'>_\markup { \large \italic dimin. } d' c'
 << { c'8 d' c' c' d' c' } \\ { g8 r r e r r } >> <f c'>8 d' c' <a c'> d' c' <e g> r r << { <f a>8 r r } \\ { c8 d c } >>
 <e g>8\pp r r c\staccato d\staccato c\staccato
 r4 r8 \clef treble c''\staccato d''\staccato c''\staccato <e'' g'' c'''>8 r r r4 r8^\fermata
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key c \major
 \time 6/8
 <c' e'>4\p r8 <b d'>4 r8 <a c'>4 r8 <g b>4 r8
 <f g d'>8 <f g d'> <f g d'> <e g c'> <e g c'> <e g c'> <d f a d'> <d f a d'> <d f a d'> << { e'4( d'8) } \\ { g4 r8 } >>
 <b, g>4 r8 <c g>4 r8 <d g b>4 r8 <e g c'>4 r8
 <fis c' d'>8 <fis c' d'> <fis c' d'> <g c' e'> <g c' e'> <g c' e'> <g b f'!> <g b f'> <g b f'> <c' e'> r r
 \repeat volta 2 { <e gis b>8 <e gis b> r <e a c'> <e a c'> r <e c' e'> <e c' e'> r <e b d'> <e b d'> r
 <a c'>4 r8 <g! a c'>4 r8 <f a dis'>4 r8 <e b e'>4 r8
 <e gis b>8 <e gis b> r <e a c'> <e a c'> r <e c' e'> <e c' e'> r <e b d'> <e b d'> r
 <a c' e'>4 r8 <c e a>4 r8 <c e ais>4 r8 <b, fis b>4 r8
 <b, dis fis>8 <b, dis fis> r <b, e g> <b, e g> r <b, g b> <b, g b> r <b, fis a> <b, fis a> r
 <b, g b>8 <b, g b> r <b, e b> <b, e b> r <b, e b> <b, e b> r <b, dis b> <b, dis b> r
 <b, dis b>8 <b, dis b> r <b, e b> <b, e b> r <b, g b> <b, g b> r <b, fis b> <b, fis b> r
 <b, g b>4. <bis, c e ais>4. <b, fis b>4 r8 r4 r8
 c8 d c c d c b,4 r8 r4 r8 c,8 d, c, c, d, c, b,,4 r8
<b dis'>4 r8 <cis' e'>4 r8 <b, b>4 r8 <dis' fis'>4 r8 <b, b>4 r8 e'4 r8 <b, b>4 r8
<c' e'>4 r8 <b d'>4 r8 <a c'>4 r8 <g b>4 r8
 <f g d'> <f g d'> <f g d'> <e g c'> <e g c'> <e g c'> <d f a d'> <d f a d'> <d f a d'> <g e'>4( d'8)
 <b, g>4 r8 <c g>4 r8 <d g b>4 r8 <e g c'>4 r8 <fis c' d'>8 <fis c' d'> <fis c' d'> <g c' e'> <g c' e'> <g c' e'> }
 \alternative { { <g b f'!>8 <g b f'> <g b f'> <c' e'> r r } { <g b f'!>8 <g b f'> <g b f'> <a c' e'> r r } }
 <fis c' d'>8 r r <g c' e'> r r <g b f'!> r r <a c' e'> r r
 <fis d'>8 r r <fis d'> r r <fis d'> r r <g d'> r r <e c'> r r <f! c'> r r <e c'> r r <f c'> r r
 <dis b>8 r r <e b> r r <cis a> r r <d! a> r r
 << { g8 a g g a g } \\ { b,8 r r c r r } >> g,8 r r <f, f> r r <e, e> r r r4 r8 g, r r <f, f> r r <e, e> r r r4 r8
 c,8 d, c, c, d, c, c, d, c, c, d, c, c, d, c, c, d, c, c, d, c, c, d, c,
 c,8 r r r4 c,8 f, r r dis, r r e, r r c, r r a,, r r f,, r r c, d, c, r4 r8
 c,\staccato d,\staccato c,\staccato r4 r8 c'\staccato d'\staccato c'\staccato r4 r8 <c, c>8 r r r4 r8^\fermata
 \bar "|."
}
>>

 \midi { \tempo 4 = 168 }

}
