#! /usr/bin/perl
# Copyleft 2010 Marti Cuquet
# http://sindominio.net/~nilvar/code/

# Intended for use with LaTeX package 'qphys.sty'. Change the default path
# some lines below to fit your needs (variable $path).

use strict;
use Getopt::Long;

my $scriptname = "qphys2file";
my $scriptdescription = "Extract commands from qphys.sty used in a file";
my $scriptversion = "1.1";
my $scriptdate = "2010-04-22";
my $scriptusage = "$scriptname file [-n] [-p path_to_package] [-f package_name]";

my $info = 0;
my $help = 0;
my $verbose = 0;
my $version = 0;

my $name = "qphys.sty";
my $number = 0;
# Change this to your default path to 'qphys.sty':
my $path = "/usr/local/texlive/texmf-local/tex/latex/local/cuquet/";

GetOptions (
    "help|h" => \$help,
    "info" => \$info,
    "verbose|v" => \$verbose,
    "version" => \$version,
# Specific
    "number|n" => \$number,
    "package|f" => \$name,
    "path|p=s" => \$path
);

if ($info) {
    print "$scriptname - $scriptdescription\n";
    exit 0;
} elsif ($help) {
    print<<"HELP";
Usage: $scriptusage

Searches 'file' for commands appearing in 'package_name' and prints results to
stdout. If '-n' is given, normal output is supressed and instead prints out
number of occurrences.

Defaults:
path to package: $path
package name:    $name
HELP
    exit 0;
} elsif ($version) {
    print "$scriptname $scriptversion\n";
    print "Last modified: $scriptdate\n";
    exit 0;
}

my $target = shift or die "Usage: $scriptusage\n";
my %commands;

$path .= '/' unless ($path =~ /\/$/ or "$path" eq "");

print STDERR "Indexing $path$name...\n" if ($verbose);

open (IF, "$path$name");
while (<IF>) {
    next unless (/newcommand/);
    next unless (/^\s*[^%]/);
    /newcommand\{\\([^\}]*)\}/;
    $commands {$1} = "$_";
}
close IF;

print STDERR "Extracting commands...\n" if ($verbose);

my $n = 0;

open (IF, "$target");
while (<IF>) {
    while (/\\([a-zA-Z][^ \(\{\\\d\.,;:\-_\n]*)/g) {  # LaTeX commands end with ' '
                                                      #                         '('
                                                      #                         '{'
                                                      #                         '\'
                                                      #                         '0123456789'
                                                      #                         '.,;:-_'
        if ($commands{$1}) {
            print "%% Commands from `$name' extracted by $scriptname.\n" unless ($n or $number);
            print $commands{$1} unless ($number);
            delete $commands{$1} unless ($number);
            ++$n;
        }
    }
}
close IF;

if ($number) {
    print "$n\n";
} else {
    print "%% End of commands from `$name'\n" if ($n);
    print STDERR "$n commands extracted.\n" if ($verbose);
}

exit 0;
