\version "2.10.0"

\header {
    composer = "Stéphane Magnenat"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    title = "Variations d'automne"
    mutopiacomposer = "MagnenatS"
    mutopiainstrument = "Piano"
    date = "2007"
    source = "Own work"
    style = "Classical"
    maintainer = "Stéphane Magnenat"
    maintainerEmail = "stephane at magnenat dot net"
    maintainerWeb = "http://stephane.magnenat.net"
 footer = "Mutopia-2007/05/03-973"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
    \time 4/4
    \skip 1*8  %% 1-9
    % \time 6/8
    \skip 2.*19  %% 10-29
    % \time 4/4
    \skip 1*21  %% 30-51
}

globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 4 = 64  \skip 2.*12 
    \tempo 4 = 120  \skip 2.*8 \skip 2.*2 \skip 4 \skip 4. \skip 2.*7 \skip 16 \skip 64 \skip 64 \skip 1 \skip 4 \skip 8 \skip 16 \skip 64 \skip 64 
    \tempo 4 = 68  \skip 1*16 \skip 1*6 
    \tempo 4 = 54  
}

\score {
	\new PianoStaff <<

        \context Staff = "track 1" << 
            \set Staff.printKeyCancellation = ##f
            \new Voice \global
            \new Voice \globalTempo

            \context Voice = "voice 1" {
                \time 4/4
                \clef "treble"
                \key c \major
                c' 4 \p ^\markup { \bold "Andante quasi Adagio" } \< des' 8 ees' f' 2
                c' 4 ees' 8 f' ges' 4 ees' 
                aes' 8 \! \> ges' f' 4 c' 8 des' ees' 4 
                gis' 4 \mf \! a' 8 b' cis'' 8. cis'' 16 f'' 8 ees''
%% 5
                c'' 8 c'' bes' aes' g' 8. \> g' 16 f' 8 ees'
                d' 2 \! d' 8. \mf d' 16 g' 8 bes'
                d'' 4 d' 8. d' 16 bes' 8 d'' f'' 4 
                bes' 8. bes' 16 g'' 8 f'' d'' 4 d' 8 \p g' \>
                bes' 4 aes' 8 g' g' 2 \! \bar "||"
%% 10
                \time 6/8
                c' 4. \mf ^\markup { \bold "Moderato quasi Andante" } f' 
                bes 8 c' ees' f' ges' 4 
                aes' 8 ces'' bes' ~ bes' ees' f' 
                aes' 8 des'' f'' ees'' 4 ees'' 8 
                c'' 4. c'' 8 g' ees' 
%% 15
                ees' 4. g' 16  \< g' g' 4
                d'' 16 d'' d'' 4 bes'' 16 \! bes'' bes'' 4 
                g'' 16 g'' g'' 4 g' 8 \p g' g' 
                bes' 8 ^\markup { \bold "rall." } c'' bes' aes' g' 4 
                \times 3/4 { g' 4 -\accent \> bes' -\accent des'' -\accent ees'' -\accent }
%% 20
                c' 8 ^\markup { \bold "Andante" } \! \mf des' ees' f' ees' f' 
                c' 8 ees' f' ges' f' ees' 
                aes' 8 ges' f' c' des' ees' 
                aes' 8 a' ces'' des'' 16 des'' f'' 8 ees'' 
                c'' 8 bes' aes' g' 16 g' f' 8 ees' 
%% 25
                d' 4. d' 16 g' bes' 4 
                d'' 16 d'' d' 4 bes' 16 d'' f'' 4 
                bes' 16 bes' g'' 4 d'' 8 d' g' 
                bes' 8 c'' bes' aes' g' 4 ~ 
                g' 4. r \bar "||"
%% 30
                \time 4/4
                aes 4 ^\markup { \bold "Andante" } aes 8 bes c' 4 cis' 
                << {aes'4 b'8 des'' ees''4 b'} \\ {f'2 ges'4 ges'} >>
                << {f''8 ees'' ees''4 c''8 des'' ees''4 } \\ {ces''4 ces'' aes' aes'} >>
                << {cis''4 dis''8 e'' ges''8. ges''16 bes''8 a''} \\ {gis'4 \<  gis' bes' bes'} >>
                << {aes''8 aes'' bes'' aes'' g''8. g''16 f''8 ees''} \\ {c''4 \> c'' bes' bes'} >>
%% 35
                << {d''2 g'16 a' bes' c'' d''8 g'} \\ {\setTextCresc bes'2  \! d'4 \<  d'} >>
                << {a'4 a'16 bes' c'' d'' ees''8 aes' bes'4} \\ {f'4 d' f' f'} >>
                << {bes'16 c'' d'' e'' f''4 d''8 g'' bes''4} \\ {g'4 g' g' g'' \!} >>
                << {f''4 d''4 ees''2} \\ {bes'4 aes'4 g'2} >>
                aes 4 \p aes 8 bes c' 4 des' 
%% 40
                aes' 4 b' 8 des'' ees'' 4 b' 
                f'' 8 ees'' ees'' des'' c'' des'' ees'' e'' 
                f'' 4 f'' 8 ees'' des'' 8. des'' 16 aes' 8 bes' 
                \setTextCresc
                c'' 4 \< des'' 8 ees'' f'' 4 g'' 8 a''
                bes'' 2 bes'' 4 g'' 8 d'' 
%% 45
                a' 4. a' 8 d'' 4 f'' 
                g'' 2 ^\markup { \bold "rall." } bes' 4 \! \p g' ~ 
                g' 4 f' ees' des' 
                << {s2. d' 4} \\ {bes 1} >>
                << {ees'2. ees' 4} \\ {bes 1} >>
%% 50
                < c' f' a > 1 ~ 
                < c' f' a > 1 
                \bar "|."
            } % Voice
        >> % Staff

        \context Staff = "track 2" << 
            \set Staff.printKeyCancellation = ##f
            \new Voice \global
            \new Voice \globalTempo

            \context Voice = "voice 2" {
                \time 4/4
                \clef "bass"
                f 2 aes 4 bes 
                c' 4 g ees 2 
                e? 8 ees des aes, ~ aes, f, c 4 
                eis 4 c 8 b, a, g, ges, 4 
%% 5
                aes, 4 des ees d 8 c 
                bes, 2 g 4 bes 8 g 
                f 2 g 8 f bes, 4 
                g, 2 bes, 
                g 8 f ~ f ees ees 2 
%% 10
                \time 6/8
                c' 4 bes 8 a 4 g 8 
                 f 8 a  c bes, ees ges 
                ces 8 aes, ees g 4 aes 8 
                aes 8 f des des ges bes 
                ees 8 aes c' g ees bes 
%% 15
                g 8 ees bes g, bes, d 
                d 8 f a bes d' f' 
                d' 8 bes g g, bes, d 
                bes, 8 d f ees 4. 
                bes, 8 ~ bes, g, ~ g, ees, ~ ees, 
%% 20
                f, 8 aes, c f aes c 
                aes, 8 c f ees bes, ges, 
                aes, 8 ees c aes, f, c 
                fes 8 des' aes bes, ges, des, 
                aes, 8 c ees ees g bes 
%% 25
                f 4. g 8 g d 
                f 8 f a, f, f, d, 
                g, 8 g, bes, bes, f, d, 
                e, 8 bes, d ees ~ ees 4 ~ 
                ees 4. r 
%% 30
                \time 4/4
                << {c1} \\ {f,4 f, f, f,} >>
                << {c2 bes,} \\ {f,4 f, ees, ees, } >>
                << {ees2 f} \\ {aes,4 aes, aes, f,} >>
                << {cis2 cis} \\ {f,4 cis, ges,  ges,} >>
                << {ees2 d4 ees} \\ {aes,4 f, g, f,} >>
%% 35
                << {f2 bes} \\ {bes,2 g4 d} >>
                << {a4 f2 d4} \\ {d4 d  bes,  bes,} >>
                << {d4 bes,2 d4} \\ {g,4 g, g, g,} >>
                << {d4 f bes2 } \\ {bes,4 bes, ees2} >>
                f, 8 aes, c f c bes, aes, g, 
%% 40
                f, 8 aes, c f ees bes, ges, ees, 
                aes, 8 ces ees aes c' aes f c 
                des 8 aes, f, aes, bes, des fes des 
                c 8 aes, ees, c, bes,, d, ees, f, 
                d, 4 f, 8 bes, c d ~ d 4 
%% 45
                f 4 d 8 c bes, 4. a, 8 
                g, 1 
                bes, 2 ees
                << {g1} \\ {d2. d4} >>
                << {g1} \\ {c2. c4} >>
%% 50
                < f,, f, > 1 ~ 
                < f,, f, > 1 
                \bar "|."
            } % Voice
        >> % Staff (final)
    >> % notes

    \layout { }
    \midi { }
} % score
