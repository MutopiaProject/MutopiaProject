\version "2.11.15"

\header {
	title = \markup{\concat{\small{\raise #1.0 "1"}"5673"\small{\raise #1.0 "1"}"214"}}
  mutopiatitle = "Unfixed"
  mutopiacomposer = "KumarR"
	mutopiainstrument = "Piano"
	date = "2006"
	source = "Original composition"
	style = "Romantic"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Ramana Kumar"
	maintainerEmail = "ramana.kumar@gmail.com"
	lastupdated = "2007/April/05"
 footer = "Mutopia-2007/04/08-952"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

#(ly:set-option 'point-and-click #f)

pushUp = #(define-music-function (parser location padding) (number?)
  #{
    \once \override TextScript #'extra-offset = #( cons 0.0 $padding )
  #})

\score {
	\context PianoStaff <<
    \override PianoStaff.TextScript #'font-size = #5.0
		\context Staff = right <<
      \override Staff.TimeSignature #'style = #'()
      \autoBeamOff
			\clef treble
			\time 8/8
      \key fis \major
			<< {
        <<{ais'8 ais' ais' bis' bis' \pushUp #3.2 eis''_\markup{\hspace #0.8 u} eis''4}
        \\{<cis' fis'>4 <cis' fis'> <cis' gis'>2}>>
        |
        <<{cis''8 cis'' cis'' dis'' dis'' gis'' gis''4}
        \\{<fis' a'>4 <fis' a'> <eis' gis'>2}>>
        |
        <<{fis'8 fis' fis' gis' gis' \pushUp #3.0 dis''_\markup{\hspace #0.9 n} dis''4}
        \\{<gis cis'>4 <ais dis'> <b dis'>2}>>
        | \time 6/8 \autoBeamOff
        <<{gis'8 cis'' cis''4 ais'8 dis''}
        \\{<d' fis'>4 <dis' gis'> eis'}>>
        | \time 8/8
        <<{dis''8 dis'' dis'' eis'' eis'' ais'' ais''4}
        \\{<fis' b'>4 <gis' bis'> <fisis' cis''>2}>>
        |
        <<{eis'8 ais' ais'4 ais'8 dis'' dis''4}
        \\{<b dis'>4 cis' dis' eis'}>>
        |
        <<{fis'8 fis' fis' gis' gis' \pushUp #3.0 dis''_\markup{\hspace #0.6 x} dis''4}
        \\{<gis cis'>4 <ais dis'> <ais e'>2}>>
        | \time 12/8 \autoBeamOff
        <<{gis'8 cis'' cis''4 g'8 g' g' a' a' d'' d''4}
        \\{dis'4 eis' c' b c' <d' a'>}>>
        | \time 8/8
        <<{b'8 e'' e''4 cis''8 fis'' fis''4}
        \\{e'4  fis' g' a'}>>
        |
        <<{dis''8 dis'' dis'' eis'' eis'' ais'' ais''4}
        \\{a'4 <fis' ais'> <fis' bis'>2}>>
        |
        <<{dis'8 dis' dis' eis' eis' ais' ais'4}
        \\{<fisis ais>4 <fis b> <gis bis>2}>>
        |
        <<{fis'8 fis' fis' gis' gis' \pushUp #3.2 dis''_\markup{\hspace #0.7 e} dis''4}
        \\{<gis cis'>4 <ais dis'> <b e'>2}>>
        |
        <<{b'8 b' b' cis'' cis'' fis'' fis''4}
        \\{<cis' fis'>4 <e' gis'> <dis' a'>2}>>
        |
        <<{b'8 e'' e''4 d''8 g'' g''4}
        \\{<c' e' fis'>4 <e' gis' cis''> <e' ais'> <a' dis''>}>>
        |
        <<{fis'8 fis' fis' g' g' fis' fis'4}
        \\{<g b>4 <a cis'> <a dis'>2}>>
        | \clef bass
        <<{b8 b b cis' cis' fis' fis'4}
        \\{<d g>4 <d g> <dis a>2}>>
        |
        <<{d'8 d' d' e' e' a' a'4}
        \\{<e ais>4 <f ais> <fis a> dis'}>>
        | \clef treble
        <<{gis'8 gis' gis' ais' ais' dis'' dis''4}
        \\{<b e'>4 <b e'> <b fis'>2}>>
        |
        <<{b'8 b' b' cis'' cis'' fis'' fis''4}
        \\{<e' g'>4 <e' g'> <dis' fis'>2}>>
        \bar "|."
      } >>
		>>
		\context Staff = left <<
      \override Staff.TimeSignature #'style = #'()
			\clef bass
      \key fis \major
			<< {
         r4 fis cis2
        |
         r4 fis cis'2
        |
         <a, e>4 <gis, fis> <cis eis>2
        |
         <e b>4 <eis b> \pushUp #-5.6 <cis cis'>^\markup{\hspace #1.1 f}
        |
         <gis dis'>4 <ais eis'> <dis dis'>2
        |
         <b, fis>4 <fis, fis> <b,, b,> \pushUp #-8.0 <fis,, fis,>^\markup{\hspace #1.1 i}
        |
         \times 2/3 {d,8 a, e b, fis r} fis,2
        |
         <e a b>4 <dis ais cis'> <dis, gis,> <d f> <e g> <f a>
        |
         <g b>4 <a cis'> <b d'> <cis' e'>
        |
         <dis' g'>4 cis' gis2
        |
         r4 gis, cis,2
        |
         \times 2/3 {e,8 b, fis fis, cis r} cis,2
        |
         r4 <fis, cis fis>4 <b,, fis, b,>2
        |
         <d a>4 <cis b> <fis, cis fis> <b,, fis, b,>
        |
         <g, d>4 <fis, e> \pushUp #-8.0 <b,, fis,>2^\markup{\hspace #1.1 d}
        |
         r4 g, b,,2
        |
         r4 g, b,2
        |
         r4 e b,2
        |
         r4 e b2
        \bar "|."
			} >>
		>>
	>>
	\layout {
	}
  \midi {
  }
}
