typedef union {
    int scalar_val;
    int bool_val;
    int int_val;
    double real_val;
    sql_string_t string_val;
    sql_ident_t ident_val;
    sql_param_t param;
    int column;
    int val;
    int operator;
    int null_val;
} YYSTYPE;
#define	INTEGERVAL	258
#define	STRING	259
#define	REALVAL	260
#define	IDENT	261
#define	NULLVAL	262
#define	PARAM	263
#define	OPERATOR	264
#define	IS	265
#define	AND	266
#define	OR	267
#define	ERROR	268
#define	INSERT	269
#define	UPDATE	270
#define	SELECT	271
#define	DELETE	272
#define	DROP	273
#define	CREATE	274
#define	ALL	275
#define	DISTINCT	276
#define	WHERE	277
#define	ORDER	278
#define	ASC	279
#define	DESC	280
#define	FROM	281
#define	INTO	282
#define	BY	283
#define	VALUES	284
#define	SET	285
#define	NOT	286
#define	TABLE	287
#define	CHAR	288
#define	VARCHAR	289
#define	REAL	290
#define	INTEGER	291
#define	PRIMARY	292
#define	KEY	293
#define	BLOB	294
#define	TEXT	295

