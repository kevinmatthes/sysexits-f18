######################## GNU General Public License 3.0 ########################
##                                                                            ##
## Copyright (C) 2022 Kevin Matthes                                           ##
##                                                                            ##
## This program is free software: you can redistribute it and/or modify       ##
## it under the terms of the GNU General Public License as published by       ##
## the Free Software Foundation, either version 3 of the License, or          ##
## (at your option) any later version.                                        ##
##                                                                            ##
## This program is distributed in the hope that it will be useful,            ##
## but WITHOUT ANY WARRANTY; without even the implied warranty of             ##
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              ##
## GNU General Public License for more details.                               ##
##                                                                            ##
## You should have received a copy of the GNU General Public License          ##
## along with this program.  If not, see <https://www.gnu.org/licenses/>.     ##
##                                                                            ##
################################################################################

################################################################################
##
##  AUTHOR      Kevin Matthes
##  BRIEF       The recipes in order to compile the provided executable.
##  COPYRIGHT   GPL-3.0
##  DATE        2022
##  FILE        .justfile
##  NOTE        See `LICENSE' for full license.
##              See `README.md' for project details.
##
################################################################################

# Synonyms for the configured recipes.
alias a         := all
alias b         := library
alias build     := library
alias d         := doxygen
alias l         := library
alias ver       := bump
alias version   := bump



# Compiler flags.
f18     := '-std=f2018'
flags   := '-Wall -Werror -Wextra -Wpedantic'
lib     := '-c -fPIC'

# Targets.
library := 'libsysexitsf18.a'

# Settings for the supported language modes.
f18-lib := f18 + ' ' + lib + ' ' + flags



# The default recipe to execute.
@default: all

# Execute all configured recipes.
@all: doxygen library

# Increment the version numbers.
@bump part:
    bump2version {{part}}
    scriv collect

# Compile the given source file and add it to the library.
@compile source_file:
    gfortran {{f18-lib}} {{source_file}}
    ar rsv {{library}} *.o
    rm -rf *.o

# Create the Doxygen documentation for this project.
@doxygen:
    doxygen doxygen.cfg
    cd latex/ && latexmk -f -r ../.latexmkrc --silent refman
    cp latex/refman.pdf doxygen.pdf

# Compile the target library.
@library:
    just compile src/lib.f08

################################################################################
