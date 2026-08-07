#!/usr/bin/env perl

# Seleccion PRIMARY a Loquendo

use warnings;
use strict;

my $lanzador = "dmenu -l 20 -c";
my @voces = qw(Jorge Carlos Diego);

my %opciones;

for my $voz (@voces) {
    $opciones{$voz}          = "\\Voice=$voz \\pitch=50";
    $opciones{"$voz Agudo"}  = "\\Voice=$voz \\pitch=100";
}

# obtener selección primaria
my $texto = `xclip -o -sel p `;
my $keys = join("\n",sort keys(%opciones));
my $voz = `echo '$keys' | $lanzador`;
chomp($voz);
my $full_texto = $opciones{$voz} . " " . $texto;
print $full_texto;

open(my $pipe, '|-', 'tts | mpv -vo=none /dev/stdin') or die "no hay pipes disponibles??????";
print $pipe $full_texto;
close($pipe);
