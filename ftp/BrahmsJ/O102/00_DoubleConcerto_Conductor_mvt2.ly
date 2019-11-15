% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt2.ly
% Generated on : Friday 02 August 2019, 19:28:01
\header {
	composer = \markup { 
		\abs-fontsize #24 \bold \sans 
		\center-column {
			\vspace #10
			"Johannes Brahms"
			"1833 - 1897"
		}
	}
	title = \markup { 
		\abs-fontsize #18 \sans
		\center-column {
			\vspace #10
			"Double Concerto pour Violon et Violoncelle"
			"en la mineur Opus 102"
		}
	}
	subtitle = \markup { 
		\abs-fontsize #12 \sans
		\center-column {
			\vspace #10
			"Movement 2"
		}
	}
	subsubtitle = \markup {
		"Brahms - Concerto for Violin and Cello in A Minor - 2nd movement"
	}
	mutopiatitle = "Concerto for Violin and Cello in A Minor"
	date = "1887"
	style = "Romantic"
	source = "Sämtliche Werke, Band 5; Breitkopf and Härtel, 1926-27"
	maintainer = "Sébastien Manen"
	maintainerEmail = "sebastien (dot) bugzilla (at) gmail (dot) com"
	license = "Public Domain"
	mutopiaopus = "Op. 102"
	mutopiacomposer = "BrahmsJ"
	mutopiainstrument = "Orchestra: Floten, Oboen, Klarinetten, Faggots, Horn, Trumpets, Pauken, Violins, Viola,'Cello, Continuo"
	footer = "Mutopia-2015/07/10-1"
	copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
	tagline = ##f
}
%###############################################################################
%#                           S E C T I O N  P A P E R                          #
%###############################################################################
\paper {
	%annotate-spacing = ##t
	ragged-last-bottom = ##f
	ragged-bottom = ##f
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
		\override #'(baseline-skip . 3.5)
		\column {
			\override #'(baseline-skip . 3.5)
			\column {
				\vspace #10
				\fill-line {
					%\huge \larger \larger \bold
					\fromproperty #'header:composer
				}
				\vspace #10
				\fill-line {
					%\large %\bold
					\fromproperty #'header:title
				}
				\vspace #10
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
			}
			\fromproperty #'page:page-number-string
		}
	}
	evenHeaderMarkup = \markup {
		\vspace #1
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
%\include "/media/Documents/Partitions/lilypond/markup.ly"
\include "./00-Common/DoubleConcerto_timeMvt.ly"
\include "./00-Common/DoubleConcerto_Conductor_option.ly"
\include "./00-Common/DoubleConcerto_StaffName.ly"
\include "./00-Common/DoubleConcerto_markup.ly"
\include "./02-Mvt2/m02_v01_music_FloteI_C.ly"
\include "./02-Mvt2/m02_v02_music_FloteII_C.ly"
\include "./02-Mvt2/m02_v03_music_OboeI_C.ly"
\include "./02-Mvt2/m02_v04_music_OboeII_C.ly"
\include "./02-Mvt2/m02_v05_music_KlarinetI_C.ly"
\include "./02-Mvt2/m02_v06_music_KlarinetII_C.ly"
\include "./02-Mvt2/m02_v07_music_FagottoI_C.ly"
\include "./02-Mvt2/m02_v08_music_FagottoII_C.ly"
\include "./02-Mvt2/m02_v09_music_HornI_C.ly"
\include "./02-Mvt2/m02_v10_music_HornII_C.ly"
\include "./02-Mvt2/m02_v11_music_HornIII_C.ly"
\include "./02-Mvt2/m02_v12_music_HornIV_C.ly"
\include "./02-Mvt2/m02_v13_music_TrumpetI_C.ly"
\include "./02-Mvt2/m02_v14_music_TrumpetII_C.ly"
\include "./02-Mvt2/m02_v16_music_SoloViolin_C.ly"
\include "./02-Mvt2/m02_v17_music_SoloCello_C.ly"
\include "./02-Mvt2/m02_v18_music_ViolinI_C.ly"
\include "./02-Mvt2/m02_v19_music_ViolinII_C.ly"
\include "./02-Mvt2/m02_v20_music_Bratsche_C.ly"
\include "./02-Mvt2/m02_v21_music_Violoncell_C.ly"
\include "./02-Mvt2/m02_v22_music_Kontrabass_C.ly"
%\include "./00-Common/DoubleConcerto_Format_Cond_Mvt2.ly"
\include "./00-Common/DoubleConcerto_Format_temp.ly"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\score {
		<<
			\new StaffGroup <<
				\new Staff <<
					\new Voice {
						\displayFilterVoice 
					}
					\new Voice {
						\formatConductorMvtII
					}
					\new Voice {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffImvtII
						\partcombine \musicFloteIMvtII \musicFloteIIMvtII
%						\musicFloteIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIImvtII
					\partcombine \musicOboeIMvtII \musicOboeIIMvtII
%					\musicOboeIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIIImvtII
					\partcombine \musicKlarinetIMvtII \musicKlarinetIIMvtII
%					\musicKlarinetIIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIVmvtII
					\partcombine \musicFagottoIMvtII \musicFagottoIIMvtII
%					\musicFagottoIIMvtII
				}
				\new GrandStaff \with { \nameGdStaffImvtII } <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffVmvtII
						\partcombine \musicHornIMvtII \musicHornIIMvtII
%						\musicHornIIMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffVImvtII
						\partcombine \musicHornIIIMvtII \musicHornIVMvtII
%						\musicHornIVMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffVIImvtII
					\partcombine \musicTrumpetIMvtII \musicTrumpetIIMvtII
%					\musicTrumpetIIMvtII
				}
			>>
			\new Staff {
				\timeMvtII \generalOptions \conductorOptions
				\nameStaffVIIImvtII
				\musicSoloViolinMvtII
			}
			\new Staff {
				\timeMvtII \generalOptions \conductorOptions
				\nameStaffIXmvtII
				\musicSoloCelloMvtII
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXmvtII
						\musicViolinIMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXImvtII
						\musicViolinIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffXIImvtII
					\musicBratscheMvtII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXIIImvtII
						\musicVioloncellMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXIVmvtII
						\musicKontrabassMvtII
					}
				>>
			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
			\context {
				\Staff
				\override TupletBracket #'bracket-visibility = ##f
				\override Hairpin.to-barline = ##f
				\RemoveEmptyStaves
				%\override VerticalAxisGroup.remove-first = ##t
			}
		}
	}
}
