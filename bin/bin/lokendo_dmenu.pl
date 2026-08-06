#!/usr/bin/env perl

# Seleccion PRIMARY a Loquendo

my $lanzador = "dmenu -l 20 -c";

my %opciones = ("Jorge" => "\\Voice=Jorge \\pitch=50",
			 "Jorge Agudo" => "\\Voice=Jorge \\pitch=100",
			 "Carlos" => "\\Voice=Carlos \\pitch=50",
			 "Carlos Agudo" => "\\Voice=Carlos \\pitch=100",
			 "Diego" => "\\Voice=Diego \\pitch=50",
			 "Diego Agudo" => "\\Voice=Diego \\pitch=100",
			);

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
