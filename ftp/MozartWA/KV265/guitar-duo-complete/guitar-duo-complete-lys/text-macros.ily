\version "2.18.2"
%
% text-macros.ily
%
% lilipond include file for text headings and paragraph macros

 
% define a \heading command for use within \markuplist{}
#(define-markup-list-command (heading layout props args) (markup?)
   #:properties ((hdg-vspace 1) (hdg-absfontsize 14))
   (interpret-markup-list layout props
     #{\markuplist { 
       { \vspace #hdg-vspace }
       \line \bold \abs-fontsize #hdg-absfontsize { #args }
     } #}))


% define a \paragraph command for use within \markuplist{}
#(define-markup-list-command (paragraph layout props args) (markup-list?)
   #:properties ((par-vspace 1) (par-indent 3) (par-absfontsize 14))
   (interpret-markup-list layout props
     #{\markuplist {
       { \vspace #par-vspace }
       \justified-lines \abs-fontsize #par-absfontsize { \hspace #par-indent #args }
     } #}))


% define a \continue-paragraph command for use within \markuplist{}
#(define-markup-list-command (continue-paragraph layout props args) (markup-list?)
   #:properties ((par-absfontsize 14))
   (interpret-markup-list layout props
     #{\markuplist {
       \justified-lines \abs-fontsize #par-absfontsize { #args }
     } #}))


% define an \indent-lines command for use within \markuplist{}
#(define-markup-list-command (indent-lines layout props amt args) (number? markup-list?)
   (interpret-markup-list layout props
     #{\markuplist {
       \translate #(cons amt 0)
       \override-lines 
       #(cons 'line-width 
          (- (chain-assoc-get 'line-width props
               (ly:output-def-lookup layout 'line-width)) amt))
       { #args }
     } #}))
 
% define a \section-segno command for use within \markuplist{}
#(define-markup-list-command (section-segno layout props) ()
   #:properties ((segno-vspace 1) (segno-absfontsize 16))
   (interpret-markup-list layout props
     #{\markuplist { 
       { \vspace #segno-vspace }
       \fill-line \abs-fontsize #segno-absfontsize { \musicglyph #"scripts.segno" }
     } #}))
 
% define a \section-coda command for use within \markuplist{}
#(define-markup-list-command (section-coda layout props) ()
   #:properties ((coda-vspace 1) (coda-absfontsize 20))
   (interpret-markup-list layout props
     #{\markuplist { 
       { \vspace #coda-vspace }
       \fill-line \abs-fontsize #coda-absfontsize { \musicglyph #"scripts.coda" }
     } #}))


% define a \bullet command for use within \markuplist{}
% e.g. \bullet #8 "A:" { Indented 8 spaces with a bold A and this text. }
% e.g. \bullet #16 \cirb { Second level circular bullet with this text. }
#(define-markup-list-command (bullet layout props amt bull args) (number? markup? markup-list?)
   #:properties ((bull-vspace 0.5) (bull-hspace 2) (par-absfontsize 14))
   (interpret-markup-list layout props
     #{\markuplist {
       \translate #(cons amt 0)
       \override-lines 
          #(cons 'line-width 
          (- (chain-assoc-get 'line-width props
          (ly:output-def-lookup layout 'line-width)) amt))
          { 
            { \vspace #bull-vspace }
            \justified-lines 
            \abs-fontsize #par-absfontsize 
            { \bold #bull \hspace #bull-hspace #args } }
     } #}))

% circular bullet glyphs
cirb = \markup {\translate #'(1 . .9) \draw-circle #.6 #.2 ##f}
dotb = \markup {\translate #'(1 . .9) \draw-circle #.6 #.2 ##t}


% define inflatable balloons to adjust top level spacing
% e.g. \balloon #5 is a circle of radius 5
balloon-color = #white  % invisible (for publication)
balloon-color = #red    % visible (while adjusting)
balloon =
#(define-scheme-function (parser location siz) (number?)
   #{\markup \with-color \balloon-color \draw-circle #siz #0 ##t #})

 
% define a balloon-like command for use within \markuplist{}
#(define-markup-list-command (balloony layout props siz) (number?)
   (interpret-markup-list layout props
     #{ \markuplist { \with-color \balloon-color \draw-circle #siz #0 ##t } #}))



% command to format one bibliographic reference line
bib =
#(define-scheme-function
  (parser location ttl url ids ref lic)
  (string? string? string? string? string?)
  #{
    \markup{ \fontsize #0 \fill-with-pattern #1 #RIGHT . #ttl
             \line { \override #'(line-width . 44) \fontsize #0 \fill-with-pattern #1 #RIGHT . 
                     \with-url #(string-append url ids) #ref #lic } 
    }
  #})


% leading parts of site urls for item lookups
IM = "http://imslp.org/index.php?oldid="
IS = "https://imslp.org/searchhandler.php?search="
MU = "http://www.mutopiaproject.org/cgibin/piece-info.cgi?id="
LC = "https://www.loc.gov/item/"
NA = ""


% urls for CC=BY versions
CA = "https://creativecommons.org/licenses/by/1.0/"
CB = "https://creativecommons.org/licenses/by/2.0/"
CC = "https://creativecommons.org/licenses/by/3.0/"
CD = "https://creativecommons.org/licenses/by/4.0/"
