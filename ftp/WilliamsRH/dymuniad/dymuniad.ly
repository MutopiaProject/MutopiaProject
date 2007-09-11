\version "2.10.2"

globalDymuniad = {
  \key g \minor
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  \partial 4
  \skip 4*8 \bar "||" \skip 4*8 \bar "||" \break
  \skip 4*8 \bar "||" \skip 4*5 \partial 4*3 \skip 4*3 \bar "|."
}

globalAmenDymuniad = {
  \skip 4*4 \bar "|."
}

saMusicDymuniad = {
  \voiceOne <g' d'>4 <bes' d'>4 <a' fis'>4 <<{g'4} \context Voice = altoOne { \voiceTwo g'4}>> <d'' g'>4 <c'' fis'>4 <bes' g'>4 <a' fis'>4
  <a' d'>4 <bes' d'>4 <c'' f'>4 <d'' f'>4 <c'' ees'>8[ \melisma <bes' d'>8] \melismaEnd <<{a'2} \context Voice = altoOne { \voiceTwo d'4( c'4)}>> <g' bes>4
  <a' d'>4 <bes' d'>4 <bes' d'>4 <c'' f'>4 <c'' f'>4 <d'' f'>4 <d'' f'>4 <c'' f'>4
  <d'' fis'>4 <bes' d'>4 <a' d'>4 <g' bes>4 <<{c''8[ \melisma bes'8] \melismaEnd} \context Voice = altoOne { \voiceTwo ees'4}>> <<{a'2} \context Voice = altoOne { \voiceTwo ees'4( d'8[ c'8])}>> <g' bes>4
}

saAmenDymuniad = {
  <g' c'>2 <g' b>2
}

tbMusicDymuniad = {
  <bes g>4 <d' g>4 <c' d>4 <bes g,>4 <g bes,>4 <d' a,>4 <d' g,>4 <d' d>4
  <fis d>4 <<g4 \\ g4>> <a f>4 <<{bes8[ a8]} \\ {bes,4}>> <g c>4 <<{g4( fis4)} \\ {d2}>> <g g,>4
  <fis d>4 <<g4 \\ g4>> <<g4 \\ g4>> <a f>4 <<{a4} \\ {f8[ ees8]}>> <bes d>4 <bes bes,>4 <a f>4
  <a d>4 <<g4 \\ g4>> <fis d>4 <g ees>4 <g c>4 <<{g4( fis4)} \\ {d2}>> <g g,>4
}

tbAmenDymuniad = {
  <ees c>2 <d g,>2
}

lyrAmen = \lyricmode {
  A -- men.
}
  
verseA = \lyricmode { 
  O Arg -- lwydd! na che -- ri -- dda fi
  Yn mhoeth -- ni dy gyn -- dda -- redd;
  Ac na chos -- ba fi in dy lid,
  O ble -- gid fy a -- nwi -- redd.
}

verseB = \lyricmode {
  O Arg -- lwydd! dy dru -- ga -- redd dod,
  Wyf lesg mewn nych -- dod beu -- nydd;
  O Arg -- lwydd! tyr'd, ia -- châ fi'n chwyrn,
  Mae f'es -- gyrn oll mewn cys -- tudd.
}

verseC = \lyricmode {
  Duw, gwa -- red f'ei -- naid, dy -- chwel di,
  Ia -- châ fi â'th dru -- ga -- redd;
  Nid oes yn a -- ngeu gof na hawl;
  A phwy a'th fawl o'r pridd -- fedd?
}

verseD = \lyricmode {
  Yr Arg -- lywydd, cly -- bu ef fy arch,
  Rh'of fin -- nau barch a mo -- liant;
  Fe dder -- byn we -- ddi'r tlawd a'i waedd,
  Am hyn fe haed o -- go -- niant.
}

  \header {
    title = "O Arglwydd! Na Cherydda Fi"
    subtitle = "Dymuniad M.S."
    incipit = "13215 43223 45432"
    poet = "Edmund Prys (1543-1623)"
    composer = "Robert H. Williams (1805-1876)"
    instrument = "Quartet and Piano"
    lastupdated = "2007-09-07"
    mutopiatitle = "Dymuniad"
    mutopiacomposer = "WilliamsRH"
    mutopiainstrument = "Quartet and Piano"
    date = "1835"
    source = "‘Y Drysorfa,’ Ionawr, 1835, o dan yr enw ‘Deisyfiad.’"
    style = "Hymn"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Brian M. Ames"
    maintainerEmail = "bmames@apk.net"
    maintainerWeb = "http://junior.apk.net/~bmames"
 footer = "Mutopia-2007/09/08-1032"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
  }

\score { 

  \context ChoirStaff <<
    \context Staff = sa { << 
      \clef treble
      {\globalDymuniad \globalAmenDymuniad }
      \context Voice = VA { \saMusicDymuniad \saAmenDymuniad }
      \lyricsto "VA" \context Lyrics = lyricsUno {\verseA \lyrAmen}
      \lyricsto "VA" \context Lyrics = lyricsDue {\verseB}
      \lyricsto "VA" \context Lyrics = lyricsTre {\verseC}
      \lyricsto "VA" \context Lyrics = lyricsQua {\verseD}
    >> }
    \context Staff = tb { << 
      \clef bass
      \globalDymuniad
      \context Voice = VC { \tbMusicDymuniad \tbAmenDymuniad }
    >> }
  >>

  \midi {
%{    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 92 4)
    } %}
  }
  
  \layout {
    indent = 0.0\pt
    pagenumber = 1
  }
  
}
