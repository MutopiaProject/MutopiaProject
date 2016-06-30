#!/usr/bin/perl -w
#
# Mutopia_Archive.pm
#
# This is a perl module (i.e. a library), containing subroutines used
# by other perl scripts.  Mainly, these subroutines are for reading and
# writing .rdf files.

package Mutopia_Archive;
use strict;

# readRDFFile($filename)
# reads an RDF file, and returns a data structure.
# XXX this is Not how namespaces Should be dealt with.
#
sub readRDFFile {
	use XML::XPath; # module to parse XML

	my $filename = shift;	                        # read sub parameter
	my $xp = new XML::XPath(filename => $filename); # create XPath object

	# use the XPath object to find relevant nodes in XML tree
	my @nodes = $xp->find("/rdf:RDF/rdf:Description/*")->get_nodelist();

    die "Can't find /rdf:RDF/rdf:Description/* nodes" if @nodes == 0;
    
    # read data from each relevant node, putting it into a hash
	my %data = ();
	foreach my $node (@nodes) {
        my $value = $node->string_value();
	    $value =~ s/\s+/ /gs;  # normalise whitespace
		my $fieldname = $node->getName();
		$fieldname =~ s/^mp://
            or die "fieldname breaks namespace kludge: $fieldname";
		$data{ $fieldname } = $value;
	}

	return %data;
}

# getData($filename)
# reads $filename and returns a hash.  For "key\nvalue\n"-structured
# files, such as datafiles/composers.dat
#
sub getData {
    my $file = shift;
    open (FILE, '<:utf8', $file) or die "cannot open $file: $!";
    return map { chomp; $_ } <FILE>;
}

# RDFtoCACHE %RDFData
# returns RDF data in format suitable for the new cache format
#
sub RDFtoCACHE {
	my %rdf = @_;
	
	# Important!! I changed the order of collections and Lilypond file
	# version on 20/Jun/2003 (while waiting for Harry Potter 5...)
	# Beware of old scripts! [Chris]
	
	my %comp  = getData("datafiles/composers.dat");
	my @cachedata = ();
	push @cachedata, $rdf{lyFile};
	push @cachedata, $rdf{midFile};
	push @cachedata, $rdf{psFileA4};
	push @cachedata, $rdf{pdfFileA4};
	push @cachedata, $rdf{psFileLet};
	push @cachedata, $rdf{pdfFileLet};
	push @cachedata, $rdf{pngFile};
	push @cachedata, $rdf{pngHeight};
	push @cachedata, $rdf{pngWidth};
	push @cachedata, $rdf{title};
	
    print STDERR "unknown composer key: ", $rdf{composer}, "\n"
            unless exists $comp{$rdf{composer}};
	
	push @cachedata, $comp{ $rdf{composer} }; # keyed
	push @cachedata, $rdf{opus}; 
	push @cachedata, $rdf{lyricist}; 
	push @cachedata, $rdf{for};      # XXX this will change when we do something with instruments.
	push @cachedata, $rdf{date};
	push @cachedata, $rdf{style};
	push @cachedata, $rdf{metre};
	push @cachedata, $rdf{arranger};
	push @cachedata, $rdf{source};
	push @cachedata, $rdf{licence};
	push @cachedata, $rdf{id};
	push @cachedata, $rdf{maintainer};
	push @cachedata, $rdf{maintainerEmail};
	push @cachedata, $rdf{maintainerWeb};
	push @cachedata, $rdf{moreInfo};
	push @cachedata, $rdf{lilypondVersion};

	return @cachedata;	
}

# RDFtoSEARCHCACHE %RDFData
# returns RDF data in a format (almost) suitable for the "search" cache
#
sub RDFtoSEARCHCACHE {
	my %rdf = @_;

    my %comp  = getData("datafiles/composers.dat");
	my @searchcachedata = ();
	push @searchcachedata, "title:" . $rdf{title} . ":";

    print STDERR "unknown composer key: ", $rdf{composer}, "\n"
            unless exists $comp{$rdf{composer}};
   
	push @searchcachedata, "composer:" . $comp{ $rdf{composer} } . ":"; # keyed
	push @searchcachedata, "composerK:" . $rdf{composer} . ":"; # keys
	push @searchcachedata, "opus:" . $rdf{opus} . ":" unless (($rdf{opus} eq "") or ($rdf{opus} eq "n/a"));
	push @searchcachedata, "lyricist:" . $rdf{lyricist} . ":" unless (($rdf{lyricist} eq "") or ($rdf{lyricist} eq "n/a"));
	push @searchcachedata, "instruments:" . $rdf{for} . ":";      # XXX this will change when we do something with instruments.
	push @searchcachedata, "date:" . $rdf{date} . ":" unless (($rdf{date} eq "") or ($rdf{date} eq "n/a"));
	push @searchcachedata, "style:" . $rdf{style} . ":";
	push @searchcachedata, "metre:" . $rdf{metre} . ":" unless (($rdf{metre} eq "") or ($rdf{metre} eq "n/a"));
	push @searchcachedata, "arranger:" . $rdf{arranger} . ":" unless (($rdf{arranger} eq "") or ($rdf{arranger} eq "n/a"));
	push @searchcachedata, "source:" . $rdf{source} . ":" unless (($rdf{source} eq "") or ($rdf{source} eq "n/a"));
	push @searchcachedata, "licence:" . $rdf{licence} . ":";
	push @searchcachedata, "id:" . $rdf{id} . ":";
	push @searchcachedata, "maintainer:" . $rdf{maintainer} . ":";
	push @searchcachedata, "maintainerEmail:" . $rdf{maintainerEmail} . ":" unless (($rdf{maintainerEmail} eq "") or ($rdf{maintainerEmail} eq "n/a"));
	push @searchcachedata, "maintainerWeb:" . $rdf{maintainerWeb} . ":" unless (($rdf{maintainerWeb} eq "") or ($rdf{maintainerWeb} eq "n/a"));
	push @searchcachedata, "moreInfo:" . $rdf{moreInfo} . ":" unless (($rdf{moreInfo} eq "") or ($rdf{moreInfo} eq "n/a"));
	push @searchcachedata, "lilypondVersion:" . $rdf{lilypondVersion} . ":";

	return @searchcachedata;	
}

# byComposer($a, $b)
# special sort function puts Anonymous and Traditional at the end
#
sub byComposer($$) {
    my ($a,$b) = @_;
    return  1 if $a eq "Traditional" and $b ne "Traditional";
    return -1 if $a ne "Traditional" and $b eq "Traditional";
    # neither trumps the other with "Traditional"
    return  1 if $a eq "Anonymous" and $b ne "Anonymous";
    return -1 if $a ne "Anonymous" and $b eq "Anonymous";
    # neither trumps the other with "Anonymous"
    # so just compare normally
    
    return $a cmp $b;
}

# byInstrument($a, $b)
# special sort function that puts Orchestra and ensembles at the end
#
sub byInstrument($$) {
    my($a, $b) = @_;
    my $ensemble = qr/^(Brass|Wind|String)$/;
    return  1 if $a =~ $ensemble and $b !~ $ensemble;
    return -1 if $a !~ $ensemble and $b =~ $ensemble;
    
    return  1 if $a eq "Orchestra" and $b ne "Orchestra";
    return -1 if $a ne "Orchestra" and $b eq "Orchestra";
    
    return $a cmp $b;
}

1;
