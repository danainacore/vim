/* buffer.c */
int get_highest_fnum(void);
void buffer_ensure_loaded(buf_T *buf);
int open_buffer(int read_stdin, exarg_T *eap, int flags);
void set_bufref(bufref_T *bufref, buf_T *buf);
int bufref_valid(bufref_T *bufref);
int buf_valid(buf_T *buf);
void close_buffer(win_T *win, buf_T *buf, int action, int abort_if_last);
void buf_clear_file(buf_T *buf);
void buf_freeall(buf_T *buf, int flags);
void goto_buffer(exarg_T *eap, int start, int dir, int count);
void handle_swap_exists(bufref_T *old_curbuf);
char *do_bufdel(int command, char_u *arg, int addr_count, int start_bnr, int end_bnr, int forceit);
int do_buffer(int action, int start, int dir, int count, int forceit);
void set_curbuf(buf_T *buf, int action);
void do_autochdir(void);
void no_write_message(void);
void no_write_message_nobang(buf_T *buf);
int curbuf_reusable(void);
buf_T *buflist_new(char_u *ffname_arg, char_u *sfname_arg, linenr_T lnum, int flags);
void check_buf_options(buf_T *buf);
void free_buf_options(buf_T *buf, int free_p_ff);
int buflist_getfile(int n, linenr_T lnum, int options, int forceit);
buf_T *buflist_findname_exp(char_u *fname);
buf_T *buflist_findname(char_u *ffname);
int buflist_findpat(char_u *pattern, char_u *pattern_end, int unlisted, int diffmode, int curtab_only);
int ExpandBufnames(char_u *pat, int *num_file, char_u ***file, int options);
buf_T *buflist_findnr(int nr);
char_u *buflist_nr2name(int n, int fullname, int helptail);
void buflist_setfpos(buf_T *buf, win_T *win, linenr_T lnum, colnr_T col, int copy_options);
void get_winopts(buf_T *buf);
pos_T *buflist_findfpos(buf_T *buf);
linenr_T buflist_findlnum(buf_T *buf);
void buflist_list(exarg_T *eap);
int buflist_name_nr(int fnum, char_u **fname, linenr_T *lnum);
int setfname(buf_T *buf, char_u *ffname_arg, char_u *sfname_arg, int message);
void buf_set_name(int fnum, char_u *name);
void buf_name_changed(buf_T *buf);
buf_T *setaltfname(char_u *ffname, char_u *sfname, linenr_T lnum);
char_u *getaltfname(int errmsg);
int buflist_add(char_u *fname, int flags);
void buflist_slash_adjust(void);
void buflist_altfpos(win_T *win);
int otherfile(char_u *ffname);
void buf_setino(buf_T *buf);
void fileinfo(int fullname, int shorthelp, int dont_truncate);
void col_print(char_u *buf, size_t buflen, int col, int vcol);
void maketitle(void);
void resettitle(void);
void free_titles(void);
int build_stl_str_hl(win_T *wp, char_u *out, size_t outlen, char_u *fmt, int use_sandbox, int fillchar, int maxwidth, struct stl_hlrec *hltab, struct stl_hlrec *tabtab);
char *check_stl_option(char_u *s);
void get_rel_pos(win_T *wp, char_u *buf, int buflen);
char_u *fix_fname(char_u *fname);
void fname_expand(buf_T *buf, char_u **ffname, char_u **sfname);
void ex_buffer_all(exarg_T *eap);
void do_modelines(int flags);
int bt_normal(buf_T *buf);
int bt_quickfix(buf_T *buf);
int bt_terminal(buf_T *buf);
int bt_help(buf_T *buf);
int bt_prompt(buf_T *buf);
int bt_popup(buf_T *buf);
int bt_nofilename(buf_T *buf);
int bt_nofile(buf_T *buf);
int bt_dontwrite(buf_T *buf);
int bt_dontwrite_msg(buf_T *buf);
int buf_hide(buf_T *buf);
char_u *buf_spname(buf_T *buf);
void set_buflisted(int on);
int buf_contents_changed(buf_T *buf);
void wipe_buffer(buf_T *buf, int aucmd);
/* vim: set ft=c : */
