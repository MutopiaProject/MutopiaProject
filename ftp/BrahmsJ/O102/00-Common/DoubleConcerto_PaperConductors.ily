% Project Name : Double Concerto Op102
% Fichier :      DoubleConcerto_Paper.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                           P A P E R  S E C T I O N                          #
%###############################################################################
\paper {
	%annotate-spacing = ##t
	ragged-last-bottom = ##t
	ragged-bottom = ##t
	left-margin = 16 \mm
	first-page-number = 0
	slashSeparator = \markup {
		\center-align
		\vcenter \combine
		\beam #3.3 #0.5 #0.54
		\raise #1.24 \beam #3.3 #0.5 #0.54
	}
	system-separator-markup = \slashSeparator
	bookTitleMarkup = \markup {
		%\override #'(baseline-skip . 3.5)
		\column {
			%\override #'(baseline-skip . 3.5)
			\column {
				\vspace #14.6
				\fill-line {
					%\huge \larger \larger \bold
					\fromproperty #'header:composer
				}
				\vspace #14.6
				\fill-line {
					%\large %\bold
					\fromproperty #'header:title
				}
				\vspace #14.6
				\fill-line {
					%\smaller %\bold
					\fromproperty #'header:subtitle
				}
			}
		}
	}
	oddHeaderMarkup = \markup {
		\on-the-fly \not-first-page \fill-line {
			\null
			\center-column {
				\fromproperty #'header:subsubtitle
				\vspace #1
			}
			\fromproperty #'page:page-number-string
		}
	}
	evenHeaderMarkup = \markup {
		\on-the-fly \not-first-page \fill-line {
			\fromproperty #'page:page-number-string
			\center-column {
				\fromproperty #'header:subsubtitle
				\vspace #1
			}
			\null
		}
	}
	oddFooterMarkup = \markup {
		\column {
			\fill-line {
				\on-the-fly #(on-page 1) \fromproperty #'header:copyright
			}
		}
	}
}
