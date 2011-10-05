\version "2.14.2"

\include "italiano.ly"

\header {
  mutopiatitle = "Gavotte"
  mutopiacomposer = "MartiniGB"
  mutopiainstrument = "Piano, Violin"
  source = "C. F. Peters, n.d.(ca.1891)"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Fabien Mirloup"
  maintainerEmail = "mirloup.fabien@gmail.com"
  
  title = "Gavotte"
  composer = "Martini, Giovanni Battista (1706-1784)"

 footer = "Mutopia-2011/09/17-1785"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\paper{
  left-margin = 1.5\cm
  top-margin = 0.5\cm
  ragged-last-bottom = true
}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold "Allegro moderato"
}

global = {
  #(set-global-staff-size 19)
  #(set-accidental-style 'modern)
  \tempoMark
  \key sol \major
  \time 2/2
  \partial 2
}

violin = \relative do'' {
  \global
  si4-.\mf(do-.)
  re(sol)si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si si4 la8 sol
  fad4(re)
  si'4-.(do-.)
  re(sol)
  si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si do4\trill si8 la
  sol2 re'4-.->\p(do-.)
  sib4(la8 sol)
  fad4-.(sol-.)
  re2 re'4->-.(do-.)
  sib4(la8 sol)
  fad4-.(sol-.)
  re2 re'4-.\f(do-.)
  sib4(la8 sol)
  sol'4-.(mi-.)
  dod4\<(si8 la) la'4-.(sol-.)\!
  fa4\sf(mi8 re)mi4\sf(re8 dod)
  re2 si4-.\p^\markup{\italic "dolce"}(do-.)
  re(sol) \appoggiatura {si,16[do]} si8(do)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si si4 la8 sol
  fad4(re)si'-.(do-.)
  re4(sol)si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8  si do4\trill si8 la
  sol2 si'4\f(la8 sol)
  la4(sol8 fad) sol4(fad8 mi)
  red4(si) si\p(la8 sol)
  la4(sol8 fad) sol4(fad8 mi)
  red4(si) sol'8\pp(fad sol la)
  si4(mi) sol,8(fad sol la)
  si2 mi4(re8 do)
  si4(la8 sol) la4(sol8 fad)
  mi2 si'4-.\mf(do-.)
  re(sol)si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si si4 la8 sol
  fad4(re)
  si'4-.(do-.)
  re(sol) si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si do4\trill si8 la
  sol2 re'4\f(do8 si)
  la(sol)la-. si-. do4.(si8)
  la4(re,) re'\p(do8 si)
  la8(sol la si)do4.(si8)
  la4(re,)si'-.(do-.)
  re4(sol)si,8(la)si-. do-.
  re2 sol4\ff fad8 mi
  la4 sol8 fad sol4 fad8 mi
  re2 si4-.(do-.)
  re4(sol)si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si si4 la8 sol
  fad4(re)
  si'4-.(do-.)
  re(sol)
  si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si do4\trill si8 la
  sol2 si'4->\p(la8 sol)
  la4->(sol8 fad) sol4->(fad8 mi)
  fad4(re) si4\f(la8 sol)
  la4\sf(sol8 fad)sol4\sf(fad8 mi)
  fad4(re) re'8\p(dod re mi)
  fad4(si) re,8(dod re mi)
  fad2 si4(la8 sol)
  fad4(mi8 re) mi4(re8 dod)
  si2 si4-.\f(do-.)
  re(sol)si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si si4 la8 sol
  fad4(re) si'4-.(do-.)
  re(sol) si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si do4 si8 la
  sol2 fa'4\p(mi8 re)
  do4(si8 la) si4(la8 sold)
  la4(re,) mi'\mf(re8 do)
  si4(la8 sol)la4(sol8 fad)
  sol2 fad'4\p(mi8 re)
  mi4(re8 do)re4(do8 si)
  do2 \deprecatedcresc la'4(sol8 fa)
  sol4(fa8 mi)fa4\trill(mi8 re)
  do2\f si4-.\p(do-.)
  re(sol)si,8(la)si-. do-.
  re2 sol4 fad8 mi
  re4 do8 si si4 la8 sol
  fad4(re) si'4-.(do-.)
  re(sol) si,8(la)si-. do-.
  re2\< sol4\!\f^\markup {\italic "ritard."} fad8 mi
  re4 do8 si do4\trill si8 la
  sol2\fermata \bar "|." \pageBreak
}

right = \relative do'' {
  \global
  r2
  si,4-.-1\mf do-. re(sol)  
  si,8-2(la)si-. do-. re2
  si4-2 do re(do8 si
  la2)r2
  si4-. do-. re(sol)  
  si,8(la)si-. do-. re4.-5(do8-4)
  \change Staff = "left"
  \stemUp si4-3^(la8 sol la4-4 sol8 fad
  sol2) r2
  re'4-5->^\p^(do8 sib la4-.) sol-.-3
  fad-. mi-. re2
  re'4->^(do8 sib la4-.) sol-.
  fad-. mi-. re2
  re'4-.^\f do-. sib^(la8 sol
  \change Staff = "right"
  \stemNeutral sol'4-.)\<mi-. dod(si8la)\!
  la'4\sf(sol8 fa sol4\sf fa8 mi
  re2) r2
  si4-.\p^\markup {\italic "dolce"} do-. re(sol)
  \appoggiatura {si,16[do]}si8 la si-. do-. re2
  si4-2 do re(do8 si)
  la2 r2
  si4-.-1 do-. re(sol)
  si,8(la)si-. do-. re4.(do8)
  \change Staff = "left"
  \stemUp si4-3^(la8 sol la4\trill sol8-1 fad-2
  sol2)
  \change Staff = "right"
  \stemNeutral r2
  fad'4\f-3 mi8-1 red-2 si'4 la8 sol fad2 sol4\p-3 fad8 mi
  fad4-2 mi8-1 red-4 \change Staff = "left" \stemUp si4-2 la8 sol-3
  fad2-2 r2
  sol8-3^\pp^(fad-2 sol-1 la si4 mi)
  sol,8-1^(fad-2 sol-1 la si4. la8
  sol)(\change Staff = "right" sol' fad mi) fad4(mi8 red
  mi2)r2
  si4-.\mf do-. re(sol)
  si,8(la)si-. do-. re2
  si4 do re do8 si
  la2 r2
  si4-. do-. re(sol)
  si,8(la)si-. do-. re4.(do8)
  \change Staff = "left"
  \stemUp si4^(la8 sol la4\trill sol8 fad
  sol2) s2
  \change Staff = "right"
  \stemNeutral re'4-5\f do8 si la(sol) la-. si-.
  do4.(si8) la2\p
  re4(do8 si la sol la si
  do4)(si8 la) sol2\f
  si4-. do-. re(sol)
  si,8(la)si-. do-. re4\ff sol
  fad mi8 re mi4-4 re8 dod
  re2 r2
  si4-.\p do-. re(sol)
  si,8(la)si-. do re2
  si4 do re(do8 si
  la2) r2
  si4-. do-. re(sol)
  si,8(la)si do re4.(do8)
  \change Staff = "left"
  \stemUp si4^(la8 sol la4\trill sol8 fad
  sol2) s2
  \change Staff = "right"
  \stemNeutral fad'4-3->\p(mi8 re) si'4-5->(la8 sol)
  la4->(sol8 fad)sol4\f(fad8 mi)
  fad4-3\sf(mi8 re)mi4-4\sf(re8 dod)
  re2 r2
  re8-3\p(dod-2 re-1 mi)fad4(si)
  re,8-1(dod-2 re-1 mi)fad4(mi-1)
  re-3(dod8 si)dod4-3(si8-1 lad-2)
  si2 r2
  si4-.\f do-. re(sol)
  si,8(la)si-. do-. re2
  si4 do re(do8 si
  la2) r2
  si4-. do-. re(sol)
  si,8(la)si-. do-. re4.(do8)
  \change Staff = "left"
  \stemUp si4^(la8 sol la4 sol8 fad
  sol2) s2
  \change Staff = "right"
  \stemNeutral mi'4-5\p(re8 do)re4(do8 si)
  do2 do4-4\mf(si8 la)
  re4(do8 si) do4(si8 la)
  sol4-1(si-2)re-4\p(do8-2 si-1)
  sol'4-5(fa8 mi)fa4(mi8 re)
  mi4(re8 do)\deprecatedcresc fa4(mi8 re)
  mi4(re8 do8)re4-3(do8 si)
  do2\f r2
  si4-.\p do-. re(sol)
  si,8(la)si-. do-. re2
  si4 do re(do8 si
  la2) r2
  si4-. do-. re(sol)
  si,8\<(la)si-. do-. re4.\!\f^\markup {\italic "ritard."}(do8)
  \change Staff = "left"
  \stemUp si4-3^(la8 sol la4\trill sol8 fad
  sol2)\fermata \bar "|." \pageBreak
}

left = \relative do' {
  \global
  r2
  sol,2 sol'
  sol, sol'
  sol, sol'
  re4.(do8)si4-. la-.
  sol2 sol'
  sol, sol'
  r2 re2
  \stemDown sol, s2
  re2 re'
  re, r2
  re re'
  re, r2
  sol2 r2
  \stemNeutral la r2
  re la
  re, r2
  sol sol'
  sol, sol'
  sol, sol'
  re4._1(do8 si4-.) la-.
  sol2 sol'
  sol, sol'
  r2 re2_2
  \stemDown sol, r2
  \stemNeutral si2 si'
  si, r2
  si \stemDown si
  si, s2
  mi mi'
  mi,4._(fad8 sol fad sol la
  si2)\stemNeutral si,
  mi r2
  sol2 sol'
  sol, sol'
  sol, sol'
  re4.(do8)si4-. la-.
  sol2 sol'
  sol, sol'
  r2 re
  \stemDown sol, r2
  \stemNeutral re2 re'
  re, re'
  re, re'
  re, sol
  sol' sol,
  sol' sol,
  re' <la la'>
  <re, re'> r2
  sol sol'
  sol, sol'
  sol, sol'
  re4.(do8)si4-. la-.
  sol2 sol'
  sol, sol'
  r2 re
  \stemDown sol, r2
  \stemNeutral re' re'
  re, r2
  re re
  re, r2
  si'' si
  si, re4_3(mi)
  fad2 fad,
  si r2
  sol2 sol'
  sol, sol'
  sol, sol're4.(do8)si4-. la-.
  sol2 sol'
  sol, sol'
  r2 re2
  \stemDown sol, r2
  \stemNeutral mi' mi,
  la r2
  re re,
  sol r2
  sol' sol,
  sol' sol,
  sol' sol,
  do r2
  sol sol'
  sol, sol'
  sol, sol'
  re4._1(do8)si4-. la-.
  sol2 sol'
  sol, si8_3(la)si-. do-.
  \stemDown re4 re4 re, re'
  sol,2_\fermata \bar "|." \pageBreak
}

violinPart = \new Staff \with {
  instrumentName = "Violin"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \violin

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \violinPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score {
  <<
  \new Staff \with {
    fontSize = #3 \override
    StaffSymbol #'staff-space = #(magstep 3)
    instrumentName = "Violin"
    shortInstrumentName = "Vl."
    midiInstrument = "Violin"
  } \violin
>>
\layout { }
}


\score {
  <<
  \new Staff \with {
    fontSize = #-3 \override
    StaffSymbol #'staff-space = #(magstep -3)
    instrumentName = "Violin"
    shortInstrumentName = "Vl."
    midiInstrument = "Violin"
  } \violin
  \new PianoStaff \with {
  fontSize = #1.5 \override
  StaffSymbol #'staff-space = #(magstep 1.5)
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
  >>
>>
\layout { }
}

