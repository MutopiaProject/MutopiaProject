\include "paper20.ly"
\include "deutsch.ly"

\header{
filename = 	  "Fischer_EratoAllemande.ly"
title = 	  "Muse of poetry"
subtitle =	  "Erato"
subsubtitle =	  "Allemande"
opus =            "Muse of poetry, erotic poetry in particular (Erato)"
composer = 	  "J. K. F. Fischer"
style =	          "Baroque"
maintainer = 	  "Rune Zedeler"
maintainerEmail = "rz@daimi.au.dk"
copyright = 	  "Public Domain"
mutopiatitle =    "Erato Allemande"
mutopiacomposer = "J. K. F. Fischer (1665 - 1746)"
mutopiainstrument = "harpsichord, piano"

footer = "Mutopia-2001/12/10-129"
tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part 
of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been 
typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted 
modification and redistribution is permitted and encouraged---copy this music an
d share it!}"
}

\version "1.4.0"

#(define (unfold-repeats music)
  (let* ((es (ly-get-mus-property music 'elements))
         (e (ly-get-mus-property music 'element))
         (body (ly-get-mus-property music 'body))
         (alts (ly-get-mus-property music 'alternatives))
         (n  (ly-music-name music)))

    (if (equal? n "Repeated_music")
	(begin
	  (ly-set-mus-property
	   music 'length Repeated_music::unfolded_music_length)
	  (ly-set-mus-property
	   music 'iterator-ctor Unfolded_repeat_iterator::constructor)))
		  
    (if (pair? es)
        (ly-set-mus-property
         music 'elements
         (map unfold-repeats es)))

    (if (music? alts)
        (ly-set-mus-property
         music 'alternatives
         (unfold-repeats alts)))

    (if (music? body)
        (ly-set-mus-property
         music 'body
         (unfold-repeats body)))

    (if (music? e)
        (ly-set-mus-property
         music 'element
         (unfold-repeats e)))


    music))



u = \notes {\stemUp \tieUp}
d = \notes {\stemDown \tieDown}
b = \notes {\stemBoth \tieBoth}

su = \notes{ \translator Staff = up}
sd = \notes{ \translator Staff = down}

ru = \property Voice.Rest \override #'staff-position = #4
rn = \property Voice.Rest \override #'staff-position = #0

mela = \notes \relative c'' {\partial 16 e16 | 
    \repeat "volta" 2 {
       <\u e8.-\arpeggio \context Voice=ny <\d h-\arpeggio g>> \b h16 g h e, g a4~a16 a g fis |
       <\u g4. \context Voice=ny{\d r16 e h4}> <g8 e h> <a e c> e'16 c c a a e |
       \b fis d fis a d4~d16 d c h <{\u c8. c16} \context Voice=ny {\d r16 e, d8}> |
       <h8. g d> h16 <{a8. a16 g e c'8~c h } \context Voice=ny {\d r16 cis, dis8 e4 fis8. g16}> |
    }
    \alternative {
       {<{~ h16 a g a a8.-\trill h16 h4. r16 \b e} \context Voice=ny {\d e,2 r16 fis dis8}>}
       {<{~ h16 a g a a8.-\trill h16 h4. r16    h} \context Voice=ny {\d e,2 r16 fis dis8~dis8. r16}> \break}
    }
}
melb = \notes \relative c'' {
    \repeat "volta" 2 {
       \u a4~a16 \b fis g e fis d' a h c?8 h16 a | h g h d < {\u f8. f16 \b} \context Voice=ny {\d r16 a, g r }> e g, a g e' g, a g | fis? c' h a h8 a16 g g4 r16 h c h |
       \d a e' e a, a fis' fis a, \u g4 r16 a a fis | dis4 r16 h' h dis, e4. <dis?8 fis> | <{g16 fis g a <g8 e> <fis dis>} \context Voice=ny {\d [e8 e]}>
    }
    \alternative { {e4. r16 h'} {e4. \bar"|."}}
}

melbb = \notes \relative c' {
    \property Voice.VoiceFollower \set #'type = #'dashed-line
    \repeat "volta" 2 {
       \d r16 e cis e \showStaffSwitch \sd \u a,4 \hideStaffSwitch ~a8 fis r16 g d'8 | ~d4 c8 d c4. \su \d e8 | \sd \u [a,8 g]~[g fis] \su \d r16 d' h8 s4 |
       s2 r16 e e h c?4 | h2~h16 h a g a8 c | \shiftOn h4 \shiftOff ~h8. a16
    }
    \alternative { { ~a16 fis gis8~gis8. s16} { ~a16 fis gis8~gis8} }
}

basa = \notes \relative c { \partial 16 r16 |
    \repeat "volta" 2 {
       <e4. g h> <e8 g> <{\d e4 dis} \context Voice=ny {\u r16 fis a c h4}> |
       \b e8. h16 g h e, e' c4. <{\d c8 | c4 h} \context Voice=ny {\u a'8 | d,4 r16 d g h}> e4. fis8 |
       \b g16 d g,8~g fis e8. e'16 d? c? d h |
    } 
    \alternative { {c4. c8 <{\d h4. r8} \context Voice=ny {\u r8 \ru r16 \rn fis'16 h a g16. fis32 }>}
                   {c4. c8 <{\d h4 r16 h e d} \context Voice=ny {\u r8 \ru r16 \rn fis16 h4 } >}
    }
}

basb = \notes \relative c {
    \repeat "volta" 2 {
        cis4. cis8 d4 e8 fis | g4 a8 h c4. c,8 | d g, d'4 g8. d16 g,8 g' |
	< {\u ~g4 fis h a | ~ a16 a g fis g4 e} \context Voice = basbb {\d cis4 dis e a, h4. h8 c4~ \stemBoth c16 \b c h a | [h8 a] [h h] } >
    }
    \alternative { {e8. h16 e, h' e d?} {e8. h16 e,8 \bar "|."}}
}

\score {
\context PianoStaff
\notes 
<
   \property PianoStaff.instrument="\Huge\bf\it 2.      "
   \property PianoStaff.connectArpeggios = ##t
   \context Staff = up   {
      \property Score.TimeSignature \override #'style = #'C
      \property Staff.Script \override #'padding = #0.5
      \time 4/4 \key e \minor \clef G \mela <\melb \context Voice = voiceb{\melbb}>}
   \context Staff = down {
      \property Staff.VoltaBracket = \turnOff
      \time 4/4 \key e \minor \clef F \basa \basb}
>
\paper {
    \translator {
       \ScoreContext
       SpacingSpanner \override #'arithmetic-basicspace = #1.8
    }
    % linewidth = 18.0 \cm
}
}

\score {
\notes 
\apply #unfold-repeats <
   \context Staff = up   {
      \property Staff.midiInstrument="harpsichord"
      \time 4/4 \key e \minor \mela <\melb \melbb>}
   \context Staff = down {
      \property Staff.midiInstrument="harpsichord"
      \time 4/4 \key e \minor \basa \basb}

>
\midi{ \tempo 4=54}
}



