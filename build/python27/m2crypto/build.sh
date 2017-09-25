#!/usr/bin/bash
#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License, Version 1.0 only
# (the "License").  You may not use this file except in compliance
# with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#
#
# Copyright 2011-2012 OmniTI Computer Consulting, Inc.  All rights reserved.
# Copyright 2017 OmniOS Community Edition (OmniOSce) Association.
# Use is subject to license terms.
#
# Load support functions
. ../../../lib/functions.sh

PKG=library/python-2/m2crypto-27
PROG=M2Crypto
VER=0.26.3
SUMMARY="Python interface for openssl"
DESC="M2Crypto provides a python interface to the openssl library."

BUILD_DEPENDS_IPS="swig"

. $SRCDIR/../common.sh

RUN_DEPENDS_IPS+="library/python-2/typing-27"

init
download_source $PROG $PROG $VER
patch_source
prep_build
python_build
make_package local.mog ../final.mog
clean_up
