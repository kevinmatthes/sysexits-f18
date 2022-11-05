!!!!!!!!!!!!!!!!!!!!!!!! GNU General Public License 2.0 !!!!!!!!!!!!!!!!!!!!!!!!
!!                                                                            !!
!! Copyright (C) 2022 Kevin Matthes                                           !!
!!                                                                            !!
!! This program is free software; you can redistribute it and/or modify       !!
!! it under the terms of the GNU General Public License as published by       !!
!! the Free Software Foundation; either version 2 of the License, or          !!
!! (at your option) any later version.                                        !!
!!                                                                            !!
!! This program is distributed in the hope that it will be useful,            !!
!! but WITHOUT ANY WARRANTY; without even the implied warranty of             !!
!! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              !!
!! GNU General Public License for more details.                               !!
!!                                                                            !!
!! You should have received a copy of the GNU General Public License along    !!
!! with this program; if not, write to the Free Software Foundation, Inc.,    !!
!! 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                !!
!!                                                                            !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \file lib.f08
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \author      Kevin Matthes
!> \copyright   GPL-2.0
!> \date        2022
!> \note        See `LICENSE' for full license.
!>              See `README.md' for project details.
!>
!> \brief   The `sysexits.h` codes.
!>
!> This library is intended to provide the exit codes of `sysexits.h` for
!> Fortran projects.  It is inspired by
!> \cite sakai.matthes:sysexits-rs:2022:0.3.3.
!>
!> As a language reference, \cite chivers.sleightholme:fortran:2018,
!> \cite kuhme.witschital:fortran:1991, and
!> \cite metcalf.reid.cohen:fortran:2018 were consulted.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

module sysexits_f18
implicit none
private
    !> This library's version.
    character (*), parameter, public    :: library_version = 'v0.0.0'

    !> Anything worked as expected.
    integer, parameter, public  :: okay                 = 0

    !> The program was not applied appropriately.
    integer, parameter, public  :: usage                = 64

    !> The user input mismatched the expectations.
    integer, parameter, public  :: data_error           = 65

    !> The requested user input file was not accessible.
    integer, parameter, public  :: no_input             = 66

    !> There was no such user.
    integer, parameter, public  :: no_user              = 67

    !> There was no such host.
    integer, parameter, public  :: no_host              = 68

    !> The requested service was not available.
    integer, parameter, public  :: unavailable          = 69

    !> There was an internal error in the called program.
    integer, parameter, public  :: software             = 70

    !> There was an error concerning the operating system.
    integer, parameter, public  :: os_error             = 71

    !> The requested file of the operating system was not accessible.
    integer, parameter, public  :: os_file              = 72

    !> The creation of the requested output file failed.
    integer, parameter, public  :: cannot_create        = 73

    !> There was an input / output related error.
    integer, parameter, public  :: io_error             = 74

    !> There was a temporary failure.
    integer, parameter, public  :: temporary_failure    = 75

    !> There was a violation against the protocol.
    integer, parameter, public  :: protocol             = 76

    !> The user was not permitted to execute this operation.
    integer, parameter, public  :: no_permission        = 77

    !> The configuration mismatched the expectations.
    integer, parameter, public  :: configuration        = 78
end module sysexits_f18

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
