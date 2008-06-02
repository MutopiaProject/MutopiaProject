\version "2.11.46"
\include "oboi.ly"
\include "corni.ly"
\include "flauto-allegro.ly"
\include "harpa-allegro.ly"
\include "violinoI.ly"
\include "violinoII.ly"
\include "viola.ly"
\include "cello.ly"
\include "basso.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cresc = \markup {\italic "cresc."}
div = \markup {\italic "div."}
uni = \markup {\italic "uni."}
arc = \markup {\italic "arco"}
decresc = \markup {\italic "decresc."}
dolce = \markup {\italic "dolce"}
pdolce = \markup{\dynamic "p" \italic " e dolce"}
piz = \markup { \italic "pizz."}
arc = \markup { \italic "arco"}
vl = \markup { \italic "Vcl."}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 14)


\paper { 
       topmargin = 1.00\cm
       bottom-margin = 1.50\cm
       right-margin = 1.50\cm
       left-margin = 1.50\cm
       raggedbottom = ##f
       print-page-number = ##t
       systemSeparatorMarkup = \slashSeparator
       between-system-padding = 0.2\mm
       line-width = 180.0\mm
  }

\header{

          title= "Concerto in C for Flute and Harp"
          composer =  "W. A. Mozart (1756-1791) "
          piece = \markup{\hspace # 19 \large \bold " [I. Allegro]"}
          instrument =\markup{\large \underline "Director Score"}
          opus = "K.299"
          mantainer = "César Penagos "
          mutopiacomposer= "W. A. Mozart (1756-1791) "
	mutopiaopus = "K.299"
	mutopiainstrument = "Flute, Harp"
	source = "Breitkopf & Härtel (from complete works edition 1877-1883)"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "César Penagos"
	maintainerEmail = "penagos.cesar@gmail.com"
 footer = "Mutopia-2008/06/01-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

     


  \score{
          <<
               \new StaffGroup = "maderas" <<
                 \new Staff = "oboi"  \oboiNotes
                 \new Staff = "corni"  \corniNotes
                 \new Staff = "flauto"  \flautoNotes
                 >>
                 
                     
                     
                      \new PianoStaff<<
                      \new Staff = "upper"  \upperNotes
                      \new Staff = "lower"  \lowerNotes
                     >>
                       
                                    
                
                 \new StaffGroup = "arcos" <<
                \new GrandStaff<<
                 \new Staff = "violinoI" \violinoINotes
                 \new Staff = "violinoII" \violinoIINotes
                >>
       
                 \new Staff = "viola" \violaNotes
                 
                \new GrandStaff<<
                 \new Staff = "violoncello" \violoncelloNotes
                 \new Staff = "basso" \bassoNotes
                 >>
                 >>
                >>
      
       \layout{}
       
  
  }
  
 
  
