\version "2.7.40"
\include "english.ly"
\header {
 title = "Ellen's Song"
 subtitle = "(Look In My Eyes And You Will See)"
 composer = "Otis Comeau"
 mutopiatitle = "Ellen's Song"
 mutopiacomposer = "ComeauO"
 mutopiainstrument = "Piano"
 date = "1950s"
 source = "memory"
 style = "Folk"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "John Comeau"
 maintainerEmail = "jcomeau@unternet.net"
 maintainerWeb = "http://www.jcomeau.com/"
 lastupdated = "2006/Dec/03"
 footer = "Mutopia-2006/12/04-853"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

\score {
<<
\context Voice = "common" {
 \time 4/4
 \key bf \major
 \set Staff.autoBeaming = ##f
  r4 r8. d'16 f'8 f'16 f'8 g'16 f'8 ef'16 d'8
  d'16
  <<
   \context Voice = "john" {
    \voiceOne {
     ef'16 ef' ef'8
    }
   }
   {
    \voiceTwo ef'8 \times 2/3 { ef'16 ef' ef' } \oneVoice
   } 
  >>
  f'16 ef'8 d'16 c'8
 d'16 f' d' bf8 g16 ef'8 c'16 a8 f16 d'8 ef'16 d'8 c'16 bf8 r8
 d'16 f'8 f'16 f'8 g'16 f'8 ef'16 d'8
 d'16 ef'16 ef' ef'8. f'16 ef'8 d'16 c'8
 d'16 f'8 d'16 bf8 g16 ef'8 c'8 a16 f bf8 r8
}

\new Lyrics \lyricsto "common" {
 \set stanza = "To Ellen: "
 In -- to your bon -- ny eyes I see
 A laugh -- ter there that could on -- ly be;
 The de -- vil's tree of lep -- re -- chauns is ga -- zing up at me.
 They twin -- kle twin -- kle and they shine,
 I sure -- ly wish that they were mine,
 I'd write a song of love and gai -- e -- ty.
}

\new Lyrics \lyricsto "common" {
 \set stanza = "To John: "
 Look in my eyes and you will see
 \set associatedVoice = "john" A vi -- sion
  \set associatedVoice = "common" there \skip 8 \skip 16 could on -- ly be:
 Of lit -- tle elves and lep -- re -- chauns are ga -- zing up at me.
 They twin -- kle twin -- kle and they shine,
 I sure -- ly wish that they were mine,
 I'd write a song of love and gai -- e -- ty.
}
>>
 \layout { }
 \midi  { }
}
