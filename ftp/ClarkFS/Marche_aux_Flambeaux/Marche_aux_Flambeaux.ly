\version "2.8.5"

\paper
{
  ragged-last-bottom = ##f
}

\header 
{
  dedication = "To her Grace the Duchess of Beaufort"
  title = "Marche aux Flambeaux"
  subtitle = "Arranged for Harmonium and Pianoforte"
  composer = "Rev. Frederick Scotson Clark"
  mutopiatitle = "Marche aux Flambeaux"
  mutopiacomposer = "ClarkFS"
  mutopiainstrument = "Harmonium"
  date = "1869?"
  source = "Augener & Co., London 1885"
  style = "March"
  copyright = "Public Domain"
  maintainer = "J. Hahn"
  maintainerEmail = "jenn_mutopia@peace.tbcnet.com"
  lastupdated = "2006/Oct/11"
 footer = "Mutopia-2006/10/16-851"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

tbreak = {\break} % temp linebreak for easier typesetting from existing score

\score 
{
  \new PianoStaff
  <<
    \set PianoStaff.instrument = \markup {\teeny "HARMONIUM"}
    \set PianoStaff.midiInstrument = #"accordion"
    \new Staff = "upper"
    \context Voice = upperVoice 
    {
      \time 4/4
      \clef treble
      \repeat volta 2
      {
                <<{s4 s4^\markup {\circle 1} s4 s4^\markup {\circle 3}} \\ {r1}>>
                <<{s4^\markup {\circle 4} s4^\markup {\circle 0} s2} \\{\stemUp g'2 r2} >> |
                g'2 r |
                g'4 r g' r |
      %% 5
                g'4 g' g' \times 2/3 { g'8( g' g') }  | \tbreak
                \stemNeutral < a' b' f'' >2 -> < g' b' e'' >4 < f' b' d'' >  |
                < e' g' d'' >8.[ c''16] < e' g' c'' >4^. <<{g'4.. gis'16}\\{c'2 }>> |
                < a' c' > 4^_ < a' cis' g' >^_ < d'' d' fis' >^_  < c''! d' a' >^_   |
                < b' g' d' >4^_  < d'' fis' c'' d'>^_ < g'' g' d'' b' > r  | \tbreak
      %% 10
                < a' b' f'' >2 < b' e'' g' >4 < b' d'' f' >  |
                < e' g' d'' >8.[ c''16] < c'' g' e' >4 <<{g'4.. gis'16}\\{c'2 }>> |
                < c' a' >4 r < d' b' >^_ < dis' a' b' >^_  |
                < e' gis' b' >4^_ < e' gis' e'' > r4 \times 2/3 { g'8[( g' g']) } \tbreak |
                < a' b' f'' >2 -> < e'' b' g' >4 < d'' b' f' >  |
      %% 15
                < e' g' d'' >8.[ c''16] < c'' g' e' >4 <<{g'4.. gis'16}\\{c'2 }>> |
                < c' a' >4^_ < cis' g' a' >^_ < d' fis' d'' >^_ < c''! a' d' >^_  |
                < d' g' b' >4^_ < d' fis' c'' d'' >^_ < g' b' d'' g'' > r  |  \tbreak
                < a' b' f'' >2 < g' b' e'' >4 < d'' b' f' >  |
                < e' g' d'' >4 < g' c'' > < a' c'' >8.[ d''16] < a' c'' dis'' >4  |
      %% 20
                < g' c'' e'' >4 r < g' d''! f'' > r  |
                \once \set doubleSlurs = ##t
                  < f' g' b' d''>2( ~ < c'' g' e' >4) r4 |  \tbreak  %end page one
		r1 |
                r2 \times 2/3 {d'8(^\markup{\circle 1 \tiny \raise #2 
                  {"May be played an octave higher with" 
	          \hspace #1 \raise #0.5 \circle 1 "and" 
		  \hspace #1 \raise #0.5 \circle 2}} e' fis')} 
                  \times 2/3 { g' ( a' b' ) }  |
                \stemUp c''8[ r16 a'( d''8) r16  c'']( \stemUp b'8)[ r16 d''( g'8) r16  b'(] |
      %% 25
                a'8[) r16 b'( gis'8) r16 b'] a'4( d'8) r  | \tbreak
                r1
                r2 \times 2/3 { d'8( e' fis') } \times 2/3 { g'( a' b') }  |
                \stemUp c''8[ r16 a'( d''8) r16 c''(] b'8)[ r16 d''( g'8) r16 b']  |
                < fis' a' >2^( g'4) r  | \tbreak
      %% 30
                \stemUp <g' d''>4^_ <g' g''>^_ <g' e''>^_ < g' g''>^_  |
                \stemUp <g' d''>4^_ <g' g''>^_ \times 2/3 {\stemNeutral d''8( e'' fis''} \times 2/3 {g'' a'' b''} |
                c'''8)[ r16 a''( d'''8 ) r16 c'''(] b''8[) r16 d'''( g''8) r16 b''(] |
                a''8)[  r16 b''( gis''8) r16 b''] a''4( d''8) r  | \tbreak
                \stemUp < g' d'' >4^^ < g' g'' >^^ < g' e'' >^^ < g' g'' >^^ \stemNeutral  |
      %% 35
                \stemUp <d'' g'>4^^ <g'' g'>^^  \times 2/3 {\stemNeutral d''8( e'' fis''} \times 2/3 {g'' a'' b''}| 
                c'''8)[ r16 a''( d'''8) r16 c'''(]  b''8)[ r16 d'''( g''8) r16 b''-4] |
                \once \set doubleSlurs = ##t
                  \once\override Slur  #'extra-offset = #'(0 . -0.5) 
                  < c'' fis''^1 a''^3 >2(^\markup {\raise #0.5 "+"} 
                  < b' g''-2 >4)^\markup {\raise #0.5 "+"} 
                  r4^\markup {\circle 4}  | \tbreak                 
                \stemUp <a' b' f''>2^> <g' b' e''>4 <f' b' d''> \stemNeutral  |
                <e'[ g' d''>8. c''16] <e' g' c''>4 <<{g'4.. gis'16} \\ {c'2}>> |
      %% 40
                <c' a'>4 <cis' g' a'> <d' fis' d''> <d' a' c''!> |
                <d' g' b'>4 <d' fis' c'' d''> <g' b' d'' g''> r  | \tbreak %end page two
                <a' b' f''>2-> <e'' b' g'>4 <d'' b' f'>  |
                <d'' g' e' >4 <g' c'' > < a' c'' >8.[ d''16] <a' c'' dis''>4  |
                <g' c'' e''>4 r <g' d''! f''> r  |
      %% 45
                \once \set doubleSlurs = ##t
                <b' d'' f' g'>2~( <c'' e' g'>4) r | \tbreak
                \key f \major
                c''2~-> c''8.[ a''16 g''8. f''16]  |
                c''2.-> a'8.[ bes'16]  |
                c''4-> d''-> e''-> f''->  |
                fis''2->( g''4) r  | \tbreak
      %% 50
                c''2~-> c''8.[ bes''16 a''8. g''16]  |
                c''2.-> e''8.[ f''16]  |
                g''4-> a''-> bes''-> b''->  |
                d'''2->( c'''4) r  | \tbreak
                c''2~-> c''8.[ a''16 g''8. f''16]  |
      %% 55
                c''2.-> f''8.[ g''16]  |
                a''4-> bes''-> c'''-> cis'''->  |
                e'''2->( d'''4) r  | \tbreak
                d''2~  d''8[ r16 cis'''( e'''8.) d'''16(] |
                c''2)~ c''8[ r16 b''( d'''8.) c'''16(] |
      %% 60
                c''2)~ c''8[ r16 fis''( a''8) r16 g'']  |
      }%end repeat section and page three

                \alternative 
                {
                  { \tieDown < g'' c''>2(~  < c'' f'' >4) r4 } 
                  { < g'' c'' >2(~  < c'' f'' >4) \times 2/3 { g'8[( g' g']) } } 
                } \tieNeutral \key c \major |  
                < f'' a' b' >2-> < e'' b' g' >4 < d'' b' f' >  |
                < e' g' d'' >8.[ c''16] < e' g' c'' >4 <<{g'4.. gis'16}\\{c'2 }>> |
      %% 65
                < a' c' >4^_ < a' cis' g' >^_ < d'' fis' d' >^_ < c''! a' d' >^_  |
                < b' d' g' >4^_ < d'' fis' d' c'' >^_ < g'' d'' b' g' > r  |
                < f'' a' b' >2 < e'' g' b' >4 < d'' f' b' >  |
                < e' g' d'' >8.[ c''16] < e' g' c'' >4 <<{g'4.. gis'16}\\{c'2 }>> |
                < a' c' >4 r < b' d' >^_ < b' dis' a' >^_  |
      %% 70
                < b' gis' e' >4^_ < e'' gis' e' > r4 \times 2/3 { g'8[( g' g']) } |
                < f'' a' b' > 2->  < e'' g' b' >4 < d'' f' b' >  |
                < e' g' d'' >8.[ c''16] < e' g' c'' >4 <<{g'4.. gis'16}\\{c'2 }>> |
                < a' c' >4^_ < a' cis' g' >^_ < d'' fis' d' >^_ < c''! d' a' >^_  |
                < b' d' g' >4^_ < d'' fis' c'' d'>^_ < g'' d'' b' g' > r  |
      %% 75
                < f'' a' b' >2 < e'' b' g' >4 < d'' f' b' >  |
                < d'' g' e' >4 < c'' g' >  < c'' a' >8.[ d''16] < dis'' c'' a' >4  |
                < e'' c'' g' >4 r < f'' d''! g' > r  |
                \once \set doubleSlurs = ##t
                < d'' b' f' g'>2~( < c'' e' g' >4) r |
                r1  |
      %% 80
                r2 \times 2/3 {d'8( e' fis')} \times 2/3 {g'( a' b')}  |
                \stemUp c''8[ r16  a'( d''8) r16 c''(] b'8)[ r16 d''( g'8) r16 b'(]\stemNeutral | %end page four
                a'8)[ r16 b'( gis'8) r16 b'] a'4( d'8) r  |
                r1  |
                r2 \times 2/3 {d'8( e' fis')} \times 2/3 {g'( a' b')}  |
      %% 85
                \stemUp c''8[ r16 a'( d''8) r16 c''(] b'8[) r16 d''( g'8) r16 b'] \stemNeutral  |
                \once \set doubleSlurs = ##t
                < a' fis' >2( g'4) r  |
                \stemUp < d'' g' >4^_ < g'' g' >^_ < e'' g' >^_ < g'' g' >^_ \stemNeutral  |
                \stemUp < d'' g' >4^_ < g'' g' >^_ \times 2/3 { \stemNeutral d''8( e'' fis''} \times 2/3 {g'' a'' b''} |
                c'''8[) r16 a''( d'''8) r16 c'''(]  b''8[) r16 d'''( g''8) r16  b''(] |
      %% 90
                a''8[) r16 b''( gis''8) r16 b''] a''4( d''8) r  |
                \stemUp < d'' g' >4^^  < g'' g' >^^ < e'' g' >^^ < g'' g' >^^ \stemNeutral  |
                \stemUp < d'' g' >4^^ < g'' g' >^^ \times 2/3 { \stemNeutral d''8( e'' fis''} \times 2/3 {g'' a'' b''} |
                c'''8[) r16 a''( d'''8) r16 c'''(]  b''8[) r16 d'''( g''8) r16  b'']-4 |
                \once \set doubleSlurs = ##t
                 \once\override Slur  #'extra-offset = #'(0 . -0.5)
                 < fis''^1 a''^3 c''>2(^\markup {\raise #0.5 "+"}  < g''^2 b'>4)^\markup {\raise #0.5 "+"}  
                 r^\markup{ \circle 4 } |
      %% 95
                < f'' b' a' >2-> < e'' b' g' >4 < d'' b' f' >  |
                < e' d'' g' >8.[ c''16] < c'' e' g' >4 << {g'4.. gis'16} \\ {c'2 } >>  |
                < a' c' >4 < a' cis' g' > < d'' fis' d' > < c''! d' a' >  |
                < b' g' d' >4 < d'' fis' d' c'' > < g'' d'' g' b' > r  | %end page five
                < f'' b' a' >2-> < e'' g' b' >4 < d'' b' f' >  |
      %% 100
                < d'' e' g' >4 < c'' g' > < a' c'' >8.[ d''16] < dis'' c'' a' >4  |
                < e'' g' c'' >4 r < d''! f'' g' > r  |
                \once \set doubleSlurs = ##t
                < d'' g' f' b' >2(~ < c'' g' e' >4) r  |
                < bes' e'' g'' >2-> < a'' e'' c'' >4 < g'' e'' bes' >  |
                < g'' c'' a' >8.[ f''16] < f'' c'' a' >4-. < c'' a' f' >2  |
      %% 105
                < d'' aes' b'! f' >2-> < e'' g' b' >4 < d'' f' b' >  |
                < e' g' d'' >8.[ c''16] < e' c'' g' >4 < e' g' >2  |
                < g'' bes' e'' >2-> < a'' e'' c'' >4 < g'' e'' bes' >  |
                < g'' a' c'' >8.[ f''16] < f'' a' c'' >4-. < c'' f' a' >4.. cis''16  |
                < f' d'' aes' b'! >2-> < e'' g' b' >4 < d'' f' b' >  |
      %% 110
                < e' c'' >4 r r < f' g' b' d'' >  |
                < e' g' c'' >4 r r < f' g' b' d'' >  |
                < e' g' c'' >4 r << {c''2~} \\ {ees'(} >> |
                << {c''4 s4 c''2~} \\ {e'!4) r ees'2(} >>  |
                << {c''4} \\ {e'!4)} >> < e' g' c'' >2  r4  | %end page six

    } % upper Staff

    \new Dynamics = "dynamics"
    {
      \override Score.TextScript #'circle-padding = #0.6
      \once \override TextScript #'extra-offset = #'( -6.0 . -2.0 )
      s4^\markup { \fontsize #-1 {\super \circle E \teeny{ad lib.}} 
                   \hspace #1.0 \italic \bold \fontsize #2 "1" } s2.
      \override TextScript #'extra-offset = #'( 0.0 . 1.5 )   
      s1*3
      s2. s4-\markup{\circle G}  
      s1*7
      s4 s4\sf s2
      s1*7
      s4\> s4 s4\! s4 %end page 1

    %% 22
      <<
        {\once \override Voice.TextScript #'extra-offset = #'( -1.8 . -0.4)
         s2^\markup {\fontsize #7 "\ "} s2}
      \\
        {s2^\markup {\circle 4} s2}
      \\
        {\once \override Voice.TextScript #'extra-offset = #'( -1.5 . -3.0) 
         s2_\markup {\fontsize #7 "\ "} s2} 
      \\ 
        {\once \override Voice.TextScript #'extra-offset = #'( 0 . -3.0)
         s2_\markup {\circle G} 
         \once \override Voice.TextScript #'extra-offset = #'( 0 . -3.5)
         s2_\markup {\italic \bold \fontsize #2 "1"}}
      >>

    %% 23
      s2 s2\mf |
      s1*2
      s2 s2-\markup {\italic \bold \fontsize #2 "1"}
      s1*2
      s2\> s4\! s4-\markup{\circle G}

    %% 30
      s4\ff s2.
      s1*6
      s2\> s4\! s4
      s4\ff s2.
      s1*3  %end page two

    %% 42
      s1*3

    %% 45
      s2\> s4\! <<{\once \override Voice.TextScript #'extra-offset = #'( 0 . -3.0)
                s4_\markup {\circle G}} \\ 
                {\once \override Voice.TextScript #'extra-offset = #'( -1.5 . -3.0) 
                s4_\markup {\fontsize #7 "\ "}} >>
      s2\f s2
      s1
      s4\< s s s\!
      s2\> s4\! s

    %% 50
      s1*2
      s4\< s s s\!
      s2\> s4\! s4
      s1

    %% 55
      s1
      s4\< s s s\!
      s2\> s4\! s4 
      s1*3

    %% 61
      s2\> s4\! s4 \tbreak %end page three
      s2\> s4\! s4-\markup{\circle G} %alternate repeat ending
      s1*3 \tbreak

    %% 66
      s1*4 \tbreak

    %% 70
      s4 s4\sf s2
      s1*3 \tbreak

    %% 74
      s1*4 \tbreak

    %% 78
      s2\> s4\! <<{\once \override Voice.TextScript #'extra-offset = #'( -1.8 . -0.4)
                   s4^\markup {\fontsize #7 "\ "}}
                \\
                   {s4^\markup {\circle 4} }
		\\  
                   {\once \override Voice.TextScript #'extra-offset = #'( 0 . -3.0)
                   s4_\markup {\circle G}} 
                \\ 
                  {\once \override Voice.TextScript #'extra-offset = #'( -1.5 . -3.0) 
                   s4_\markup {\fontsize #7 "\ "}} 
                >>
      s2 \once \override Voice.TextScript #'extra-offset = #'( -3.0 . 1.5)
         s2_\markup {\italic \bold \fontsize #2 "1"}
      s2 s4\mf s4
      s1  \tbreak  %end page four

    %% 82
      s1 |
      s2 \once \override Voice.TextScript #'extra-offset = #'( -3.0 . 1.5)
         s2_\markup {\italic \bold \fontsize #2 "1"}
      s1*2 \tbreak

    %% 86
      s2\> s4\! s4-\markup{\circle G}
      s4\ff s2.
      s1 \tbreak

    %% 89
      s1*3 \tbreak
 
    %% 92
      s1*2
      s2\> s4\! s4 \tbreak

    %% 95
      s4\ff s2.
      s1*3 \tbreak %end page five

    %% 99
      s1*3
      s2\> s4\! s4 \tbreak

    %% 103
      s1*4 \tbreak
 
    %% 107
      s1*3 
      s2. s4\sf \tbreak
 
    %% 111
      s4\sf s2.|
      s2 s2\> |
      s4\! s4 s2\> |
      s4\! s2\sff s4 \bar "|." | %end page six
      
    } %end dynamics

    \new Staff = "lower"
    \context Voice = lowerVoice
    {
      \time 4/4
      \clef bass

                <<{s4 s4_\markup {\circle 1} s4 s4_\markup {\circle 3}} \\ {r1}>>
                <<{s4_\markup {\circle 4} s4_\markup {\circle 0} s2} \\{r1} >> |
                R1*2
      %% 5
                r1  | 
                << {g2 g4 g} \\ {g,1} >> |
                c4 g e c  |
                f4 a d fis  |
                g4 d g r  |
      %% 10
                << {g2 g4 g} \\ {g,1} >> |
                c4 g e c  |
                f4 r f f  |
                e4 < e b > r2  |
                << {g2 g4 g} \\ {g,1} >> |
      %% 15
                c4 g e c  |
                f4 a d fis  |
                g4 d g, r  |
                << {g2 g4 g} \\ {g,1} >> |
                c4 e f fis  |
      %% 20
                g4 r g r  |
                << {g2~ g4} \\ {g,2( c4)} >> r4 | %end page one 
                << {\once \override TextScript #'extra-offset = #'( -1.3 . 0.1 )   
		    s1_\markup {\fontsize #7 "\ "}} \\ 
		   {r1_\markup {\circle 4}}>>
                r1 |
                d1~_\markup{ \circle 1 }  |
      %% 25
                \stemUp d2. r4 \stemNeutral |
                r1  |
                r1  |
                << {s1} \\ {d1~} >>  |
                << {r4 c' b s4} \\ {d2_( g4) r4} >>
      %% 30
                <d' b g>4 <d' b g> <e' c' g> <e' c' g>  |
                <d' b g >4 <d' b g> r2  |
                << {d'1~} \\ {fis8 r d r g r b r} >>
                << {d'2~ d'4 s4} \\ {d8 r d r d4 r4} >>
                <d' b g >4 < b d' g > < e' c' g > < e' c' g >  |
      %% 35
                <b d' g >4 < b d' g > r2  |
                << {d'1~} \\ {fis8 r d r g r b r} >>
                << {d'2~ d'4} \\ {d2( g4)} >> r4_\markup {\circle 4}
                << {g2 g4 g4} \\ {g,1} >> | 
                c4 g e c  |
      %% 40
                f4 a d fis  |
                g4 d g, r  | %end page two
                << {g2 g4 g4} \\ {g,1} >>
                c4 e f fis  |
                g4 r g r  |
      %% 45
                << {g2~ g4 s4 } \\ {g,2( c4) r4} >>  
                \clef treble
                \key f \major
                c'2~-> c'8.[ a'16 g'8. f'16]  |
                c'2.-> a8.[ bes16]  |
                c'4-> d'-> e'-> f'->  |
                fis'2->( g'4) r  |
      %% 50
                c'2~-> c'8.[ bes'16 a'8. g'16]  |
                c'2.-> e'8.[ f'16]  |
                g'4-> a'-> \stemUp bes'-> b'->  \stemNeutral |
                d''2->( c''4) r  |
                c'2~-> c'8.[ a'16 g'8. f'16]  |
      %% 55
                c'2.-> f'8.[ g'16]  |
                \stemUp a'4^> bes'^> \stemDown c''-> cis''-> \stemNeutral  |
                e''2->( d''4) r  |
                d'2~ \stemUp d'8[ r16 cis''( e''8.) d''16(] \stemNeutral |
                c'2)~ c'8[ r16  b'( d''8.) c''16(]  |
      %% 60
                c'2)~ c'8[  r16 fis'( a'8) r16 g']  |
                \set doubleSlurs = ##t
                < c' g' >2( < f' a' >4) r  | %end page three
                < c' g' >2( < f' a' >4) r  \clef bass \key c \major |
                \set doubleSlurs = ##f
                << {g2 g4 g4} \\ {g,1} >>      
                c4 g e c  |
      %% 65
                f4 a d fis  |
                g4 d g r  |
                << {g2 g4 g4} \\ {g,1} >>      
                c4 g e c  |
                f4 r f f  |
      %% 70
                e4 < b e > r2  |
                << {g2 g4 g4} \\ {g,1} >>      
                c4 g e c  |
                f4 a d fis  |
                g4 d g, r  |
      %% 75
                << {g2 g4 g4} \\ {g,1} >>      
                c4 e f fis  |
                g4 r g r  |
                << {g2~ g4} \\ {g,2( c4)} >>  
                   << {\once \override TextScript #'extra-offset = #'( -1.3 . 0 )   
		       r4_\markup {\fontsize #7 "\ "}} \\ 
		      {s4_\markup {\circle 4}} >> |
                r1  |
      %% 80
                r1  |
                d1~ | %end page four
                d2. r4  |
                r1  |
                r1  |
      %% 85
                << {s1} \\ {d1~} >>  |
                << {r4 c' b s4} \\ {d2( g4) r4} >> |
                < d' b g >4 < d' b g > < e' c' g > < e' c' g >  |
                < d' b g >4 < d' b g > r2  |
                << {d'1~} \\ {fis8 r d r g r b r} >> |
      %% 90
                << {d'2~ d'4 s4} \\ {d8 r d r d4 r} >> |
                < d' b g >4 < b d' g > < e' c' g > < e' c' g >  |
                < b d' g >4 < b d' g > r2  |
                << {d'1~} \\ {fis8 r d r g r b r} >> |
                << {d'2~ d'4 s4} \\ {d2( g4) r_\markup{ \circle 4}} >> |
      %% 95
                << {g2 g4 g4} \\ {g,1} >> |
                c4 g e c  |
                f4 a d fis  |
                g4 d g, r  | %end page five
                << {g2 g4 g4} \\ {g,1} >> |
      %% 100
                c4 e f fis  |
                g4 r g r  |
                << {g2~ g4 s4} \\ {g,2( c4) r4} >> |
                < c c' >1  |
                < c c' >1  |
      %% 105
                < c c' >1  |
                < c c' >1  |
                < c c, >1~  |
                < c c, >1~  |
                < c c, >1~  |
      %% 110
                < c c, >4 r r \tieUp < g g, >~  |
                < g c >4 r r < g g, >~  |
                < g c >4 r \tieDown < aes c >2(~ |
                < g c >4) r < aes c >2(~ |
                < g c >4) < g c >2 r4  | %end page six

    } % lower Staff

  >> % end PianoStaff

  \layout 
  {
    \context 
    {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"     
           \override TextScript #'font-size = #1
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2)
           \override Hairpin #'extra-offset = #'(0 . 2.5)     
           \consists "Skip_event_swallow_translator"     
           \consists "Axis_group_engraver"
    }
    \context 
    {
      \PianoStaff
         \accepts Dynamics
         \override VerticalAlignment #'forced-distance = #7
    }

  } % End layout

  \midi { \tempo 4=110 }
  
} %score
