# This Makefile is for the SQL::Statement extension to perl.
#
# It was generated automatically by MakeMaker version
# 0.1012 (Revision: ) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

#	C => [q[sql_yacc.c sql_data.c sql_op.c]]
#	DEFINE => q[]
#	NAME => q[SQL::Statement]
#	OBJECT => q[sql_yacc.o sql_data.o sql_op.o Statement.o]
#	VERSION_FROM => q[lib/SQL/Statement.pm]
#	dist => { DIST_DEFAULT=>q[all tardist], COMPRESS=>q[gzip -9f], SUFFIX=>q[.gz] }

# --- MakeMaker constants section:
NAME = SQL::Statement
DISTNAME = SQL-Statement
NAME_SYM = SQL_Statement
VERSION = 0.1012
VERSION_SYM = 0_1012
XS_VERSION = 0.1012
INST_LIB = ::::lib
INST_ARCHLIB = ::::lib
PERL_LIB = ::::lib
PERL_SRC = ::::
PERL = ::::miniperl
FULLPERL = ::::perl
SOURCE =  alloca.c sql_yacc.c sql_data.c sql_op.c Statement.c

MODULES = :lib:SQL:Eval.pm \
	:lib:SQL:Statement.pm \
	:lib:SQL:Statement:Hash.pm
PMLIBDIRS = lib


.INCLUDE : $(PERL_SRC)BuildRules.mk


# FULLEXT = Pathname for extension directory (eg DBD:Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT (eg DBD)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = SQL:Statement
BASEEXT = Statement
ROOTEXT = SQL:
DEFINE = 

# Handy lists of source code files:
XS_FILES= Statement.xs
C_FILES = alloca.c sql_yacc.c sql_data.c sql_op.c
H_FILES = ppport.h \
	sql_data.h \
	sql_yacc.h


.INCLUDE : $(PERL_SRC)ext:ExtBuildRules.mk


# --- MakeMaker dlsyms section:

dynamic :: Statement.exp


Statement.exp: Makefile.PL
	$(PERL) "-I$(PERL_LIB)" -e 'use ExtUtils::Mksymlists; Mksymlists("NAME" => "SQL::Statement", "DL_FUNCS" => {  }, "DL_VARS" => []);'


# --- MakeMaker dynamic section:

all :: dynamic

install :: do_install_dynamic

install_dynamic :: do_install_dynamic


# --- MakeMaker static section:

all :: static

install :: do_install_static

install_static :: do_install_static


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	$(RM_RF) Statement.c
	$(MV) Makefile.mk Makefile.mk.old


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	$(RM_RF) Makefile.mk Makefile.mk.old


# --- MakeMaker postamble section:

sql_yacc.c sql_yacc.h: sql_yacc.y
	bison --defines --output=sql_yacc.c sql_yacc.y
	sed 's/int yyparse (void);/int yyparse(void* stmt);/' \
	    <sql_yacc.c >sql_yacc.c.ok
	mv sql_yacc.c.ok sql_yacc.c

sql_yacc.o sql_data.o sql_op.o: sql_yacc.h

Statement.o sql_yacc.o sql_data.o sql_op.o: sql_data.h

pm_to_blib: README

README: lib/SQL/Statement.pm
	perldoc -t lib/SQL/Statement.pm >README



# --- MakeMaker rulez section:

install install_static install_dynamic :: 
	$(PERL_SRC)PerlInstall -l $(PERL_LIB)
	$(PERL_SRC)PerlInstall -l "Bird:MacPerl Ä:site_perl:"

.INCLUDE : $(PERL_SRC)BulkBuildRules.mk


# End.
