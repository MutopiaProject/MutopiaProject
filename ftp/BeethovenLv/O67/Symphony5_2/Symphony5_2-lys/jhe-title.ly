\version "2.16.2"

% JHE aus titling-init.ly erstellt

tagline = \markup {
  \with-url
  %% todo: lilypond.org/music-engraving
  #"http://lilypond.org/web/"
  \line {
    "2017" % Music engraving by LilyPond"
    " "
    %% #(ly:export (lilypond-version))
    
    %% % 2014 = em dash.
    %% #(ly:export (ly:wide-char->utf-8 #x2014))
    %%"www.lilypond.org"
  }
}
% im original titling-init.ly definiert
%%#(define (print-all-headers layout props arg)
%%   (if (eq? (ly:output-def-lookup layout 'printallheaders) #t)
%%   (interpret-markup layout props arg)
%%    empty-stencil))

\paper {
  slashSeparator = \markup {
    \center-align
    \vcenter \combine
    \beam #2.5 #0.5 #0.48
    \raise #1 \beam #2.5 #0.5 #0.48
  }


  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 4.5)
    \column {
 
      \fill-line {
	\override #'(box-padding . 1.0)
	\box { \huge \fromproperty  #'header:instrument } ""
      }
      
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 3.5)
      \column {
	\huge \larger \larger\bold
	\fill-line {
	  \larger \fromproperty #'header:title
	}
	\fill-line {
	  \large %\smaller
	  \bold
	  \larger \fromproperty #'header:subtitle
	}
	\fill-line {
	  \smaller \bold
	  \fromproperty #'header:subsubtitle
	}
	\fill-line {
	  \larger \fromproperty #'header:poet
	  %{ \large %\bold
	  %  \fromproperty #'header:instrument 
	  %}
	  \larger \fromproperty #'header:composer
	}
	\fill-line {
	  " "
	  \fromproperty #'header:lifetime
	}
	\fill-line {
	  \fromproperty #'header:meter
	  \fromproperty #'header:arranger
	}
      }
    }
  }

  scoreTitleMarkup = \markup { 
    \column {
      \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
      \fill-line {
	" "
	\huge \bold \fromproperty #'header:piece
	\fromproperty #'header:opus
      }
    }
  }




  oddHeaderMarkup = \markup
  \fill-line {
    %% force the header to take some space, otherwise the
    %% page layout becomes a complete mess.
    " "
    \override #'(box-padding . 1.0) \on-the-fly #not-first-page \box { \fromproperty #'header:instrument  }
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
  }


%%insBox = \box { \fromproperty #'header:instrument } 



evenHeaderMarkup = \markup
  \fill-line {
   
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    \override #'(box-padding . 1.0) \on-the-fly #not-first-page \box { \fromproperty #'header:instrument } 
    " "

  }

%  evenHeaderMarkup = \markup
%  \fill-line {
%    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
%    \override #'(box-padding . 1.0)
%    \on-the-fly #not-first-page \box { \fromproperty #'header:instrument }
%    " "
%  }


  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #first-page \fromproperty #'header:copyright
      }
      \fill-line {
        %% Tagline header field only on last page.
	%%" " 
        \on-the-fly #not-first-page \line { \smaller { \italic { \fromproperty #'header:title \fromproperty #'header:separator \fromproperty #'header:subtitle } } }
        \on-the-fly #last-page \fromproperty #'header:tagline
	%%\on-the-fly #not-first-page \line { \smaller { \fromproperty #'header:composer "—" \italic { \fromproperty #'header:title } } } 
        \on-the-fly #not-first-page \line { \smaller { \fromproperty #'header:composer  } } 
      }
    }
  }

  evenFooterMarkup = \markup {

    \column {
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #first-page \fromproperty #'header:copyright
      }
      \fill-line {
        %% Tagline header field only on last page.
	%%\on-the-fly #not-first-page \line { \smaller { \fromproperty #'header:composer "—" \italic{ \fromproperty #'header:title } } } 
        \on-the-fly #not-first-page \line { \smaller { \fromproperty #'header:composer } }
        \on-the-fly #last-page \fromproperty #'header:tagline 
	\on-the-fly #not-first-page \line { \smaller { \italic {\fromproperty #'header:title \fromproperty #'header:separator \fromproperty #'header:subtitle } } }
      }
    }
  }

  print-page-number = ##t
}
