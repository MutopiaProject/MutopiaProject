\version "2.10.30"

\header {
  title             = "Flat"
  composer          = "Ramana Kumar"
  mutopiatitle      = "Flat"
  mutopiacomposer   = "KumarR"
  mutopiainstrument = "Piano"
  date              = "2007"
  source            = "Original composition"
  style             = "Romantic"
  copyright         = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer        = "Ramana Kumar"
  maintainerEmail   = "ramana.kumar@gmail.com"
  maintainerWeb     = "http://xrchz.net"
  lastupdated       = "2008/January/13"
 footer = "Mutopia-2008/01/13-1004"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

onceStem =
#(define-music-function (parser location direction music) (number? ly:music?) #{
  \once \override Stem #'direction = $direction
  $music #}
)

#(ly:set-option 'point-and-click #f)

\score {
  \context PianoStaff <<
    \context Staff = right <<
      #(set-accidental-style 'forget)
      \override Staff.TimeSignature #'style = #'()
      \clef treble
      \time 8/4
      << {
        <<
          {cis'4 e' e'2 e'4 fis' fis'2}
        \\{a2 b c'4 a ais2}
        >> | <<
          {b4 d' dis' fis' <b' fis'> gis' cis''2}
        \\{g2 <fis a> d'4 f' f'2}
        >> | <<
          {fis'4 a' a' gis' <des' des''>2 ees''}
        \\{<b dis'>2 <cis' e'>4 <d' f'> ges' bes' <bes' ees'> <aes' e'>}
        >> | <<
          {b'2 s ais' s}
        \\{d'2 e' s cis'}
        \\{fis'4 a' a'2 dis'4 fis' fis'2}
        >> | <<
          {<fis' d'>2 eis' e'4 g' <gis' dis'> <ais' g'>}
        \\{gis4 b bis2 cis' ais4 cis'}
        >> | <<                                             %--05
          {g'4 bes' bes' des'' f' a' a' c''}
        \\{<ees' c'' ees''>2 fis' <d' d''> e'}
        >> | <<
          {a'4 c'' c'' cis'' cis''2 <e' e''>}
        \\{f'2 g' fis'4 a' a' bes'}
        >> | \time 6/4 <<
          {ges''2 s fis'4 ais'}
        \\{ges'2 <ges' bes'> <ais d'>}
        \\{bes'4 des'' d'' fis'' s2}
        >> | \time 12/4 <<
          {ais'2 s \clef bass dis'2 b4 cis' dis'2 b4 cis'}
        \\{ais2 b gis4 b g2 eis4 gis <e gis>2}
        \\{dis'4 fis' fis' e'}
        >> | \time 8/4 <<
          {dis'2 s d'4 fis' fis' e'}
        \\{dis2 <dis g> <e g> cis'}
        \\{g4 bes bes c' s2 s}
        >> | \clef treble <<                               %--10
          {fis'4 a' a' b' b' fis' fis' gis'}
        \\{d'2 e' dis' d'}
        >> | <<
          {a'4 gis' a' b' cis''2 dis''4 e''}
        \\{e'4 b cis' e' e' gis' gis'2}
        >> | \time 4/4 <<
          {<fis' fis''>4 <a' a''> a''2}
        \\{<b' d''>2 a'4 b'}
        >> | \time 8/4 <<
          {<gis' gis''>4 <b' b''> <b' b''> <cis'' cis'''> #(set-octavation 1) <cis'' cis'''> <e'' e'''> <eis'' gis'' cis''' eis'''> <gis'' gis'''>}
        \\{e''2 fis'' <f'' a''> s}
        >> | 
          <gis'' e''' gis'''>2 <fis'' dis''' fis'''> <cis'' gis'' cis'''> <dis'' fis'' dis'''>
           |                                               %--15
          <eis'' cis''' eis'''>2 <gis'' b'' gis'''> #(set-octavation 0) <e' cis'' e''> <gis' e'' gis''>
           |
          <gis' e'' gis''>2 <fis' dis'' fis''> <cis' gis' cis''> <dis' fis' dis''>
           |
          <eis' gis' cis'' eis''>2 <g' b' dis'' g''> <<{<gis' b' gis''>2 <fis'' b''>}\\{dis''4 fis'' b' d''}>>
           | <<
          {d''4 d'' d'' f'' d'' d'' d'' e''}
        \\{<b' b''>2 <f' a'> gis' g'}
        >> | <<
          {d''4 cis'' d'' e'' fis''2 ais'4 cis''}
        \\{a'2 bes' ais'4 ais' e'2}
        >> | <<                                            %--20
          {cis''2 fis'4 a' ais'2 dis'4 fis'}
        \\{dis'4 fis' cis'2 bis4 dis' b2}
        >> | <<
          {fis'4 eis' fis' gis' gis'2 b4 d'}
        \\{gis4 b b2 gis4 b fis2}
        >> | \clef bass <<
          {dis'2 gis4 b dis'2 fis'}
        \\{eis4 gis e2 fis4 a a cis'}
        >> | \time 12/4 <<
          {fis'2 e'4 fis' cis'2 a4 b cis'2 a4 b}
        \\{cis'4 e' b2 fis4 a f2 d4 fis fis gis}
        >> | \time 8/4 \clef treble <<
          {cis'4 e' e' gis' gis' fis' cis' e'}
        \\{a2 b ais4 cis' gis2}
        >> | <<                                            %--25
          {e'4 dis' e' fis' gis' ais' ais' cis''}
        \\{a4 cis' cis' b <b dis'>2 <cis' fis'>}
        >> |
          <cis'' fis'>2 <bis' gis'> <gis' dis'> <ais' eis'>
           | 
          <cis'' g'>2 <dis'' bes'> bes'1
           | <<
          {dis''2 eis'' fis'' eis''}
        \\{<fis' ais'>2 <eis' gis'> dis' eis'}
        >> |
          <g' dis''>2 <a' cis''> <ees' ges' bes'> <f' aes' c''>
           |                                               %--30             
          <g ees' g'>2 <bes f'> <bes ees'> c'
           | <<
          {dis'2 eis' fis' eis'}
        \\{<fis b>2 ais ais1}
        >> | <<
          {dis'2 fis' fis' gis'}
        \\{fis2 a ais1}
        >> | <<
          {f'4 g' aes' bes' bes' c'' aes' c''}
        \\{des'2 ees' <d' e'> f'}
        >> | <<
          {c''4 bes' f' g' g' bes' bes'2}
        \\{<des' g'>4 f' ees'2 e' d'4 f'}
        >> | <<                                            %--35 
          {ges'4 aes' bes' b' b' cis'' gis' b'}
        \\{des'4 f' f'2 e' fis'}
        >> | <<
          {b'4 a' e' fis' a' gis' e' fis'}
        \\{cis'4 e' c'2 <b f'> cis'4 b}
        >> | <<
          {gis'4 ais' b' c'' cis'' dis'' b' dis''}
        \\{b2 fis' eis' gis'}
        >> | <<
          {dis''4 cis'' ais' gis' fis' a' a' b'}
        \\{a'2 s s f'}
        >> | <<
          {fis'2 d'4 e' fis'2 d'4 e'}
        \\{cis'4 d' gis2 g4 b b2}
        >> | \clef bass <<                                 %--40
          {fis'2 <e e'> <d d'> s}
        \\{fis4 a a c' c' b g a}
        >> | <<
          {bes4 d' ees' f' \clef treble d'4 f' f' aes'}
        \\{ees4 g g a bes2 c'}
        >> | <<
          {aes'4 g' d' f' f' e' f' g'}
        \\{b4 d' a2 bes des'4 ees'}
        >> | <<
          {g'4 bes' bes' des'' des'' c'' g' bes'}
        \\{d'2 f'4 aes' e' g' d'2}
        >> | <<
          {bes'4 a' bes' c'' c'' bes' bes' c''}
        \\{ees'2 ges'4 aes' g'2 f'}
        >> | <<                                            %--45
          {g'4 ees' ees' f' g'4 d' ees' f'}
        \\{c'2 b bes4 s bes2}
        >> | <<
          {g'2 <f f'> <ees ees'> gis4 ais}
        \\{g4 bes bes des' des' c' fis2}
        >> | <<
          {b4 dis' dis''2 b'4 d'' d'' cis''}
        \\{e2 gis'4 ais' g'2 a'}
        >> | <<
          {cis''2 b' fis' gis'}
        \\{<d' a'>2 <fis' gis'> s s}
        >> |
          ais'2 cis'' cis''1
           | <<                                            %--50
          {cis''2 b' fis' gis'}
        \\{d'2 fis' s s}
        >> | <<
          {ais'2 cis'' d'' cis''}
        \\{cis'2 e' eis' gis'}
        >> | <<
          {cis''2 b' fis' gis'}
        \\{<e' a'>2 <dis' gis'> <a cis'> <b d'>}
        >> | <<
          {ais'2 cis'' gis' fis'}
        \\{<c' e'>2 <d' gis'> <a dis'> cis'}
        >> | <<
          {fis'2 e' cis' dis'}
        \\{<fis cis'>2 gis a s}
        >> | <<                                            %--55
          {eis'2 gis' a' gis'}
        \\{<gis cis'>2 <b dis'> <b eis'> s}     
        >> | <<
          {<gis gis'>2 <b b'> <bis bis'> <cis' cis''>}
        \\{cis'4 dis' e' fis' gis' ais' fis' ais'}
        >> | <<
          {<dis' dis''>2 <eis' eis''>4 dis' <ees'' g''>2 bes'}
        \\{ais'4 gis' cis'' s g' bes' <des' f'>2}
        >> | <<
          {ges'4 aes' bes' b' b' cis'' gis' b'}
        \\{<bes des'>4 <aes f'> <des' f'> <b dis'> <b e'> gis' dis' fis'}
        >> | <<
          {b'4 a' <fis fis'> <a a'> <b b'> d' d' e'}
        \\{d'4 f' b e' fis' s <g bes>2}
        >> | <<                                            %--60
          {fis'4 a' a' b' fis' d' d' e'}
        \\{<gis b>4 d' <b e'> <cis' eis'> a c' c' bes}
        >> | \time 12/8 <<
          {fis'2  d'4   e'  fis'      a' a'2 d''4 b' b'2}
        \\{a4 gis <g b> ais <fis ais> a  a2  d'4  b  b2}
        >> | \time 8/4
           <e e'>4 <g g'> <cis' cis''> <e' e''> <a' a''> <dis' dis''> <b' b''> <d' d''> 
           |
          <e' e''>4 <g' g''> <g' g''> <fis' fis''> <e' e''> <gis' gis''> <gis' gis''> <fis' fis''>
           |
          <b' b''>4 <dis' dis''> <gis' gis''> <cis' cis''> <bes' bes''> <ees' ees''> <ges' ges''> <b b'>
           |                                               %--65
          <bes bes'>4 <des' des''> <des' des''> <ges' ges''> <bes' bes''> <ees' ees''> <ees' ees''> <bes' bes''>
           |
          <bes' bes''>4 <ees' ees''> <ees' ees''> <ges' ges''> <fis' fis''> <b b'> <d' d''> <fis' fis''>
           | <<
          {fis'4 a' a'2 b' cis''}
        \\{fis4 a e' cis' dis' fis' fis' a'}
        >> | <<
          {b'2 c'' b'4 dis'' dis'' cis''}
        \\{a'4 gis' e' fis' g'2 gis'}
        >> | <<
          {e''4 fis'' g'' a'' gis'' fis'' fis'' gis''}
        \\{a'2 c'' cis'' b'\stemUp}
        >> | <<                                            %--70
          {dis''4 b' b' cis'' dis''2 b'4 cis''}
        \\{gis'2 g' fis'4 gis' e'2}
        >> | <<
          {dis''2 <cis' cis''> <b b'> <c' c''>}
        \\{dis'4 fis' fis' a' a' gis' e' fis'}
        >> | <<
          {b4 cis' e' fis' b dis' dis' fis'}
        \\{<gis gis'>2 a <gis gis'> a}
        >> | <<
          {fis'2 e' b cis'}
        \\{gis2 b s1}
        >> | <<                                            %--75
          {dis'2 fis' fis'1}
        \\{s2 cis' e' d'4 c'}
        >> | <<
          {fis'2 e' b cis'}
        \\{b2 a g fis'}
        >> | <<
          {dis'2 fis' <fis fis'>1}
        \\{e2 s cis' b}         
        >> | <<
          {fis'2 e' cis' cis'}
        \\{<g b>2 <gis cis'> <e b> <fis ais>}
        >> | <<
          {<dis fis dis'>2 <fis fis'> fis' gis'}
        \\{s2 s b d'}
        >> | <<                                            %--80
          {dis'2 b b cis'}
        \\{gis2 s g a}
        >> | <<
          {<fis dis'>1 b2 cis'}
        \\{ais2 ais e1}
        >> |
          <dis dis'>2 <fis fis'> <fis fis'>1
     \bar "|."

      } >>
    >>
    \context Staff = left <<
      #(set-accidental-style 'forget)
      \override Staff.TimeSignature #'style = #'()
      \clef bass
      << {
        <<
          {e2 f fis4 s e2}
        \\{a,2 g, fis,1}
        >> | <<
          {s2 s s dis4 fis}
        \\{d2 b, e, a,}
        >> |
          <gis, fis>2 <cis b> <ees bes> <ges, e>
           | <<
          {a2 bes b a}
        \\{d2 c b,1}
        >> | <<
          {e2 gis b s}
        \\{e,2 cis cis dis2}
        >> |                                               %--05
          gis,2 <ais cis'> ais, <fis c'>
           | <<
          {c'2 des' d' c'}
        \\{f2 ees d1}
        >> | <<
          {des'2 c' e}
        \\{des2 s fis,}
        >> | <<
          {fis,2 gis e e cis1}
        \\{b,,2 d e, a, r fis,}
        >> | <<
          {s2 s r a ~}
        \\{b,2 bes, a,1}
        >> | <<                                            %--10
          {a2 bes b a}
        \\{d2 c b,1}
        >> |
          e2 fis4 gis a cis' cis' e'
           | <<
          {d'4 e' fis' gis'}
        \\{a2 s}
        >> | <<
          {b2 c' cis' b}
        \\{e2 d cis1}
        >> |
          fis,4 cis ais dis a, e cis' dis
           |                                               %--15
          cis4 gis dis' b e b e' b'
           |
          fis,4 cis ais dis a, e b dis
           |
          cis4 gis dis' b <<{b2 c'}\\{e2 d}>>
           | <<
          {s2 ees' e' d'}
        \\{<g, d g>2 f e1}
        >> | <<
          {e'2 f' fis' cis'}
        \\{a2 g fis1}
        >> | <<                                            %--20
          {fis2 g gis fis}
        \\{b,2 a, gis,1}
        >> | <<
          {gis,2 a b, c}
        \\{cis,2 b, e, d,}
        >> | <<
          {cis2 b, cis d}
        \\{cis,1 fis,2 e,}
        >> | <<
          {e,2 g a, d a, b,}
        \\{a,,2 a, d, b, b,, e,}
        >> | <<
          {e2 fis fis e}
        \\{a,2 gis, fis,1}
        >> | <<                                            %--25
          {fis2 a b, cis}
        \\{b,1 e,2 dis,}
        >> |
          gis,4 dis bis eis b, fis cis' eis
           |
          dis4 ais eis' cis' fis cis' fis' cis''
           |
          gis,4 dis bis eis b, fis cis' eis
           |
          dis4 ais eis' bes' aes, ees c' des'
           |                                               %--30
          ees,4 bes, f g ges, des aes des'
           |
          b,, fis, dis b, ges, des aes des'
           |
          b,, fis, dis b, gis, dis bis dis'
           | <<
          {aes2 a bes aes}
        \\{des2 b, bes,1}
        >> | <<
          {bes,2 b c' bes}
        \\{ees,2 des c1}
        >> | <<                                            %--35
          {bes2 b cis d'}
        \\{ees2 des fis, e}
        >> | <<
          {e2 fis gis, a}
        \\{a,2 gis, cis, b,}
        >> | <<
          {b,2  c' cis' b}
        \\{e,2 d cis1}
        >> | <<
          {dis2 cis'4 e' <a e'>2 d'}
        \\{fis,2 fis fis a}
        >> | <<
          {a2 b, d g}
        \\{b,2 e, s a,}
        >> | <<                                            %--40
          {d2 c g, bes,}
        \\{d,1 g,,2 ees,}
        >> | <<
          {c2 ees f ges}
        \\{c,2 f, bes, aes,}
        >> | <<
          {g2 f g4 c' aes2}
        \\{g,1 c2 bes,}
        >> | <<
          {bes4 ees' b aes r4 ais bes c'}
        \\{ees2 des <fis, cis>2 c}
        >> | <<
          {c'4 f' des' bes ees4 f ges bes}
        \\{f2 ees aes, aes,}
        >> | <<                                            %--45
          {s4 ees f aes g bes aes f}
        \\{<des, aes,>2 g,2 c bes,}
        >> | <<
          {ees2 des aes, b,}
        \\{ees,2 des, aes,, e,}
        >> | <<
          {cis2 e e' d'}
        \\{cis,1 g}
        >> | 
          b,4 fis a cis' d a d' e'
           | \clef treble
          fis4 cis' eis' gis' a e' a' e''
           | \clef bass                                    %--50
          g,4 d b g d fis a cis'
           |
          fis,4 cis gis b <cis b> gis cis' e'
           |
          fis,4 cis gis e d, a, fis d
           |
          fis,4 cis ais fis b,, fis, dis b,
           |
          d,4 a, d e b, fis a cis'
           |                                               %--55
          cis,4 gis, cis gis cis gis cis' fis'
           | <<
          {e2 f fis e}
        \\{a,2 g, fis,1}
        >> | <<
          {fis,2 gis bes, aes}
        \\{b,,2 ais, ees, bes,}
        >> | <<
          {ees2 b, fis,}
        \\{<ees, bes,>2 <des, aes,> <fis,, cis,> <b, a>}
        >> |
          <e, b,>2 <d, c> <g,, g,> <g, e>
           |                                               %--60
          <e, d>2 <a, g> <d, d> <g,, g,>
           |
          <e, e>2 <a,, a,> <d, d> <c, c> <f,, f,> <g,, g,> 
           |
          <c, c>2 <fis,, fis,> <b,,, b,,> <e e'>
           |
          <e g c'>2 <fis a b dis'> <gis b e'> <ais cis' e'>
           |
          <b, fis>2 <ais, gis> <ees, bes,> <des, b,>
           |                                               %--65
          <ges,, des, ges,>2 <e gis d'> <ees g ees'> <ees aes des'>
           |
          <aes, ees c'>2\arpeggio <ges, e> <b,, fis, dis>\arpeggio <<{a,2}\\{g4 fis}>>
           | <<
          {d2 b b a}
        \\{d,2 cis b,1}
        >> | <<
          {b2 c' cis' b}
        \\{e2 d cis1}
        >> | <<
          {cis2 d e,}
        \\{fis,2 e, a,,} >>
        \change Staff = right <<{}\\{<a g'>2}>>
           | \change Staff = left                          %--70
          <d, a,>2 <g d'> <e b> <fis, cis ais>\arpeggio
           |
          <b,, fis, dis>2\arpeggio <b, a> <e, b, e> <g, c g>
           |
          <gis, cis eis>2 <fis, cis e> <fis, b, dis> <b, fis>
           |
          e,4 b, e cis g, d g e
           |
          fis4 b, a b d a b s
           |                                               %--75
          e,4 b, e cis g, d a cis
           |
          b,,4 fis, dis b, d, a, d a
           |
          e,4 b, e cis fis, b, e cis
           |
          b,,4 fis, b, dis <a, g>1
           | <<
          {b,1 e}
        \\{e,1 cis}
        >> |                                               %--80
          <gis, dis>1 <fis, cis>
           |
          <b,, fis, b,>\breve
     \bar "|."
      } >>
    >>
  >>
  \layout {
  }
  \midi {
  }
}
