% Updated to Lilypond 2.4.2 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org> (31/Jan/2005)
% Corrected Opus Number by Nick Payne, updated to v2.14.2 by Javier Ruiz-Alma
\version "2.14.2"

\header {
    title =       "Etude 8"
    opus =        "Op. 60, No. 8"
    composer =    "Matteo Carcassi"
    
    mutopiatitle = "Etude 8"
    mutopiacomposer = "CarcassiM"
    mutopiaopus = "O 60"
    mutopiainstrument = "Guitar"
    date = "19th C."
    source = "Not known"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Jeff Covey"
    maintainerEmail = "jeff.covey@pobox.com"
    maintainerWeb = "http://pobox.com/~jeff.covey/"
    lastupdated = "2012/Feb/15"
    
    
 footer = "Mutopia-2012/12/01-15"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \transposition c  % guitar music actually sounds an
                      % octave lower than written.
    \set Staff.instrumentName = "Guitar"
     {
	\clef violin \time 2/4 \key e \major
	\override TextScript   #'padding = #3
	\repeat volta 2 { s2^\markup { "Moderato" } \skip 2*7  }
	\repeat volta 2 { \skip 2*16 }  
    }
}

dim =  {
    #(ly:export (make-event-chord (list (make-span-event 'DecrescendoEvent START)))) 
    \set decrescendoText = \markup { \italic "dim." }
    \set decrescendoSpanner = #'nil
}
enddim =  {
    #(ly:export (make-event-chord (list (make-span-event 'DecrescendoEvent STOP)))) 
    \unset decrescendoText 
    \unset decrescendoSpanner 
}
cresc =  {
    #(ly:export (make-event-chord (list (make-span-event 'CrescendoEvent START)))) 
    \set crescendoText = \markup { \italic "cresc." }
    \set crescendoSpanner = #'nil
}
endcresc =  {
    #(ly:export (make-event-chord (list (make-span-event 'CrescendoEvent STOP)))) 
    \unset crescendoText 
    \unset crescendoSpanner 
}

melody =  \relative c' {
    \stemUp

     e16[ gis cis ( b)]    e,[ gis cis ( b)]
     fis[ a e' dis]        fis,[ a e' dis]
     gis,[ b fis' ( e)]    gis,[ b fis' ( e)]
     a,[ cis gis' ( fis)]  a,[ cis gis' ( fis)]

				% 5

     ais,[ cis gis' ( fis)]  ais,[ cis gis' ( fis)]
     b,[ dis gis ( fis)]     b,[ dis gis ( fis)]
     cis[ e b' ( ais)]       cis,[ e b' ( ais)]
     dis,[ fis cis' ( b)]   b,8 s

				% 9

     dis,16[ fis cis' ( b)]    dis,[ fis cis' ( b)]
     e,[ g d' ( c)]            e,[ g d' ( c)]
     fis,[ a e' dis?]          fis,[ a e' dis]
     g,[ b fis' ( e)]          g,[ b fis' ( e)]
     a,[ c g' ( fis)]          a,[ c g' ( fis)]
     ais,[ cis? gis'? ( fis)]  ais,[ cis gis' ( fis)]
     fis,[ b e ( dis)]         fis,[ ais dis ( cis)]
     b,[ dis cis' ( b)]       b,8 s

				% 17

     e16[ gis cis ( b)]    e,[ gis cis ( b)]
     dis,[ a' cis ( b)]    b,[ a' fis' a,]
     dis,[ a' cis ( b)]    dis,[ a' cis ( b)]
     e,[ gis cis ( b)]     e,,[ b'' gis' b,]
     e,[ gis fis' ( e)]    d,[ gis fis' ( e)]
     cis,[ a' e' a,]       c,[ ais' e' ais,]
     b,[ gis' cis ( b)]    b,[ a' dis ( b)]
     e,[ gis fis' ( e)]   e,,8 s
}

bass =  \relative c' {
    \stemDown
    
    e4_\p e fis fis gis gis \deprecatedcresc a a
    ais ais b b \deprecatedendcresc cis_\f cis dis b8 r

				% 9

    dis,4_\p dis e e \deprecatedcresc fis fis g g
    a a \deprecatedendcresc ais_\f ais fis fis b, b8 r

				% 17
    
    e4_\fp e dis b \<  dis\! dis e \<  e,\!   
    \deprecatedcresc e' d cis c \deprecatedendcresc b_\f  b \deprecateddim e \deprecatedenddim e,8 r

}


\score {
    \context Staff = "guitar" << 
	\global 
	\context Voice = "melody" { \melody }
	\context Voice = "bass"   { \bass   }
    >>
    \layout { }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 50 4)
      }
    }


}

