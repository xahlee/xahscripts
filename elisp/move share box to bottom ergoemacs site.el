;; -*- coding: utf-8 -*-
;; 2014-06-18

;; move

;; <div class="share-buttons"><div class="g-plusone" data-size="medium" data-annotation="none"></div> <div class="twitter"><a href="https://twitter.com/share" class="twitter-share-button" data-via="ErgoEmacs" data-count="none">Tweet</a></div> <div class="fb-like" data-send="false" data-layout="button_count" data-width="90" data-show-faces="false"></div></div>

;; /home/xah/web/ergoemacs_org/emacs/emacs_buffer_switching.html

;; to bottom

;; before

;; <div class="ads-bottom-65900">

;; or

;; <div id="disqus_thread"></div><script>

(setq inputDir "~/web/ergoemacs_org/" ) ; dir should end with a slash

(setq ξfile-list '(

;; "/home/xah/web/ergoemacs_org/features.html"
;; "/home/xah/web/ergoemacs_org/misc/elisp_exercise_extract_url.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-09-17.html"

;; "/home/xah/web/ergoemacs_org/misc/Richard_Stallman_at_MIT_dancing.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_edit_exercise_puthash_unicode.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_24_copy-directory_change.html"
;; "/home/xah/web/ergoemacs_org/misc/what_to_do_with_emacs_lisp.html"
;; "/home/xah/web/ergoemacs_org/misc/ergoemacs_vi_mode.html"
;; "/home/xah/web/ergoemacs_org/misc/Sacha_Chua_emacs_chat_with_Phil_Hagelberg_technomancy.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday.html"
;; "/home/xah/web/ergoemacs_org/misc/Sacha_Chua_emacs_chat.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-11-05.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-11-19.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-10-22.html"
;; "/home/xah/web/ergoemacs_org/misc/Microsoft_cites_ErgoEmacs.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_rainbow-delimiters-mode.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_screen_Dan_Lentz.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-08-27.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-07-23.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_keybinding_and_cua-mode_keys.html"
;; "/home/xah/web/ergoemacs_org/misc/programer_workflow_efficiency.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-09-03.html"
;; "/home/xah/web/ergoemacs_org/misc/Daniel_Weinreb_died.html"
;; "/home/xah/web/ergoemacs_org/misc/list_of_emacs_starter_kits.html"
;; "/home/xah/web/ergoemacs_org/misc/thou_shalt_use_emacs_lisp.html"
;; "/home/xah/web/ergoemacs_org/misc/John_Wiegley_on_emacs_lisp_and_Haskell.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_isearch-forward-symbol-at-point.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_rocks_paredit.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_power_of_icicles.html"
;; "/home/xah/web/ergoemacs_org/misc/M-x_donuts.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-07-29.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-08-13.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_lisp_coding_style_language_idioms_controversy.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_logo_Halloween_pumpkin.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-10-08.html"
;; "/home/xah/web/ergoemacs_org/misc/textmate_open_sourced.html"
;; "/home/xah/web/ergoemacs_org/misc/js_tutorial_and_emacs_lisp_vs_javascript.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-10-29.html"
;; "/home/xah/web/ergoemacs_org/misc/typing_speed_and_hand_motion.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-08-20.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-09-10.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_project_poll_2013-03-23.html"
;; "/home/xah/web/ergoemacs_org/misc/Richard_Stallman_and_Julian_Assange.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-11-12.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_one_max_window_vs_multi_smaller_window.html"
;; "/home/xah/web/ergoemacs_org/misc/on_vi_keybinding.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-08-06.html"
;; "/home/xah/web/ergoemacs_org/misc/richard_stallman_emacs_as_word_processor.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-10-01.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_2014-03-01.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_exercise_gen_a-z.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_screen_Xah_Lee.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-10-15.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_screen_Nick_Alcock.html"
;; "/home/xah/web/ergoemacs_org/misc/Don_Hopkins_Mark_Crispin_rants_on_emacs_visual_lines.html"
;; "/home/xah/web/ergoemacs_org/misc/linum-freeze_emacs.html"
;; "/home/xah/web/ergoemacs_org/misc/which_chapters_of_elisp_manual_to_read.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_abbrev_shell_elisp.html"
;; "/home/xah/web/ergoemacs_org/misc/syntax_coloring_in_editors.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_lisp_what_is_fn.html"
;; "/home/xah/web/ergoemacs_org/misc/ask_emacs_tuesday_2013-09-24.html"
;; "/home/xah/web/ergoemacs_org/misc/emacs_bug_file-remote-p_2014-05-15.html"
;; "/home/xah/web/ergoemacs_org/misc/xah_as_good_as_dead.html"
;; "/home/xah/web/ergoemacs_org/misc/swap_ctrl_capslock_tech_geekers.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_region.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_find-file_vs_with-temp-buffer.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp1_vs_lisp2.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_manual_problem_example.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_commandments.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_fun.html"
;; "/home/xah/web/ergoemacs_org/emacs/xmsi-math-symbols-input.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_macro_example.html"
;; "/home/xah/web/ergoemacs_org/emacs/which_emacs.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_perl_wrapper.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_run_current_file.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_buffer_switching.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_tabs_space_indentation_setup.html"
;; "/home/xah/web/ergoemacs_org/emacs/keyboard_shortcuts_examples.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_zap_gremlins.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_int.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_format_date.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_report_string_position.html"
;; "/home/xah/web/ergoemacs_org/emacs/nav-bar.html"
;; "/home/xah/web/ergoemacs_org/emacs/reclaim_keybindings.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_game.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_on_ubuntu_linux.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_naming_your_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_html_insert_tags.html"
;; "/home/xah/web/ergoemacs_org/emacs/effective_emacs.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp_formatter.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs-tip_mode_on_off_toggle.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_syntax_table.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_show_key_and_command.html"
;; "/home/xah/web/ergoemacs_org/emacs/unicode_basics.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_editing_lisp.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_grep_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_amazon-linkify.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_examples.html"
;; "/home/xah/web/ergoemacs_org/emacs/text_editor_cursor_behavior.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_update_atom.html"
;; "/home/xah/web/ergoemacs_org/emacs/thing-at-point_chaining_functions.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_logo2.html"
;; "/home/xah/web/ergoemacs_org/emacs/bookmark.html"
;; "/home/xah/web/ergoemacs_org/emacs/rename_file_pattern.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_vs_perl_validate_links.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_inline_doc.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_perl_syntax_coloring.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_repeat_command.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_find_replace_applications.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_make-html-table.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_image_tag_orig.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_form_feed_section_paging.html"
;; "/home/xah/web/ergoemacs_org/emacs/syntax_tree_walk.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_resources.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_insert-date-time.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_twitter.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_syntax_coloring.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_scratch_buffer.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_set_theme_on_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_mode_line.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_cperl_syntax_coloring.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_list_matching_lines_2.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_image_tag.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_diredplus_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_keybinding_redesign_2.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_name_completion.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_escape_quotes.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_as_word_processor.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_long_line_wrap.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_dired_open_file_in_ext_apps.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_auto-activate_a_major-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_beware_of_region_boundary_change.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_cut_copy_yank_kill-ring.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_undo_cult_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_replace_title_tags.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs24_features.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_cua-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_update_pagetag.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_html.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_whats_best_setup_for_xyz.html"
;; "/home/xah/web/ergoemacs_org/emacs/qi_logo.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_link_report.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_copy_rectangle_text_to_clipboard.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_manual_cover_to_cover.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_mode_doc.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_zippy.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_printing.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_generate_uuid.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_menu_for_major_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/ergoemacs_and_paredit.html"
;; "/home/xah/web/ergoemacs_org/emacs/building_emacs_on_linux.html"
;; "/home/xah/web/ergoemacs_org/emacs/Matz_Ruby_how_emacs_changed_my_life.html"
;; "/home/xah/web/ergoemacs_org/emacs/inline_doc.html"
;; "/home/xah/web/ergoemacs_org/emacs/why_i_despise_paredit.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_kb_shortcuts_pain_2011.html"
;; "/home/xah/web/ergoemacs_org/emacs/xbbcode-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp_keyboard_layout.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_python_shift_indent.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_replace_subscript.html"
;; "/home/xah/web/ergoemacs_org/emacs/make_sitemap.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_html_vs_info.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_chinese_char_linkify.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_grep_find.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_html_mail.html"
;; "/home/xah/web/ergoemacs_org/emacs/command-frequency_old.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_defvar_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/thanks.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_macro_insert_all_unicode_stars.html"
;; "/home/xah/web/ergoemacs_org/emacs/ergonomic_emacs_keybinding.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_eww_web_browser.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_iswitch_vs_ido.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_break_loop.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_title_case_text.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_save_restore_opened_files.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_key-translation-map.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_compact_empty_lines.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_all_about_lines.html"
;; "/home/xah/web/ergoemacs_org/emacs/building_emacs_from_git_repository.html"
;; "/home/xah/web/ergoemacs_org/emacs/google-earth.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_list_and_set_font.html"
;; "/home/xah/web/ergoemacs_org/emacs/ergonomic_emacs_keybinding_change.html"
;; "/home/xah/web/ergoemacs_org/emacs/GNU_Emacs_dev_inefficiency2.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_get-selection-or-unit.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_search_current_word.html"
;; "/home/xah/web/ergoemacs_org/emacs/proper_way_to_use_Sublime_Text_minimap.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_change_space-hyphen_underscore.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_python_2to3.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_relative_path.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_update-html-title.html"
;; "/home/xah/web/ergoemacs_org/emacs/useful_emacs_packages.html"
;; "/home/xah/web/ergoemacs_org/emacs/day_one.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_emacs_grep_inconsistency.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_wiki_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_bugs.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_symbol.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_check_defined.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_of_elisp.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_templates.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_determine_OS_version.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_regex_begin_end_line_string.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_dired_tips.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_process_lines.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_alias.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_kb_shortcuts_dv.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_repeat_replace.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_keyword_completion.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_hotkey_open_file_fast.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_magit-mode_tutorial.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_using_register.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_replace_string_region.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_grep_script.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_make-backup.html"
;; "/home/xah/web/ergoemacs_org/emacs/xah-css-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_copy_cut_current_line.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_insert_random_number_string.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_hand_pain_celebrity.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_encoding_decoding_faq.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_move_code_to_files.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization-rant.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_view_image_thumbnails.html"
;; "/home/xah/web/ergoemacs_org/emacs/yasnippet_templates_howto.html"
;; "/home/xah/web/ergoemacs_org/emacs/keystroke_rep.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_dvorak_C-x.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs23.2_features.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_eval_lisp_code.html"
;; "/home/xah/web/ergoemacs_org/emacs/unicode-browser.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_vs_Notepad.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_elisp_lib_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_unix.html"
;; "/home/xah/web/ergoemacs_org/emacs/organize_your_dot_emacs.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_examples3.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_set_keys_for_major_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp_regex_replace_func.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_function_eval_and_doc_lookup.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_thing-at-point.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_best_redo_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_keybinding_design_beginning-of-line-or-block.html"
;; "/home/xah/web/ergoemacs_org/emacs/lispers_n_wikipedia.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_stop_cursor_enter_prompt.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_esoteric.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_datetime.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_line_move_visual.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_formfeed.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_optional_params.html"
;; "/home/xah/web/ergoemacs_org/emacs/blog.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_unicode_fonts.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_installing_packages.html"
;; "/home/xah/web/ergoemacs_org/emacs/about.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_customize_default_window_size.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_tip_yasnippet_expand_whole_hyphenated_word.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_in_tron.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_pinky.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_hash_table.html"
;; "/home/xah/web/ergoemacs_org/emacs/xah_ban_emacs_irc.html"
;; "/home/xah/web/ergoemacs_org/emacs/wrap-url.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_kb_shortcuts.html"
;; "/home/xah/web/ergoemacs_org/emacs/function-frequency.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_idioms.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_dired_recursive_load_error.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_kill-buffer.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp_logo_latte_art.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_replace_html_entities_command.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_icomplete_vs_ido.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_batch_html_tag_transform_bold.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_move_by_paragraph.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_validate_matching_brackets.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_power_story.html"
;; "/home/xah/web/ergoemacs_org/emacs/buy_xah_emacs_tutorial.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_text-soup_automation.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_batch_html5_tag_transform.html"
;; "/home/xah/web/ergoemacs_org/emacs/w32-shell-execute.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_short_tips.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_html_sucks.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_keybinding_overview.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_font_slowdown.html"
;; "/home/xah/web/ergoemacs_org/emacs/text_editor_trends.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_replace_html_entities.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_custom_system.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_playing_with_color_theme.html"
;; "/home/xah/web/ergoemacs_org/emacs/texinfo_problems.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_elisp_syntax_color.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_useful_user_keybinding.html"
;; "/home/xah/web/ergoemacs_org/emacs/Edward_OConnor_hober_vs_Xah_Lee.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_hyper_super_keys.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_widescreen_newspaper_columns.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_idioms_batch.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_idioms_prompting_input.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_command_line_argv.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_image_support.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_adv_tips.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_line_ending_char.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_env_var_paths.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_keybinding_design_menu_e_tab_keys.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_insert-alphabets.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_pretty_lambda.html"
;; "/home/xah/web/ergoemacs_org/emacs/gnu_doc.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_table.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_open_file_path_fast.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_key_combo.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_idiom_templates.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisps_objects.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_CSS_colors.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_basics.html"
;; "/home/xah/web/ergoemacs_org/emacs/vi_vim_pile_of_history.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp_update_image_tag.html"
;; "/home/xah/web/ergoemacs_org/emacs/ErgoEmacs_logo.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_spell_checker_problems.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_align_and_sort.html"
;; "/home/xah/web/ergoemacs_org/emacs/jargons_high_level_lang.html"
;; "/home/xah/web/ergoemacs_org/emacs/ask_emacs.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_convert_line_ending.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_dired_convert_images.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_regex.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_find_replace_by_function.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_find_replace.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_grep_string_inside_tag.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_htmlize.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_rsi_my_experiences.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_unfill-paragraph.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_manual_persistent_nodes.html"
;; "/home/xah/web/ergoemacs_org/emacs/vi_esc_syndrome.html"
;; "/home/xah/web/ergoemacs_org/emacs/xah_keyboarding_RSI_experience.html"
;; "/home/xah/web/ergoemacs_org/emacs/using_voice_to_code.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_byte_compile.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_examples2.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_macro_example2.html"
;; "/home/xah/web/ergoemacs_org/emacs/yegge_effective_emacs.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_html-linkify.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_mark-word.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_buffer_management.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_set_backup_into_a_directory.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_text_processing_split_annotation.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_byte_compile_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_convert_rgb_hsl_color.html"
;; "/home/xah/web/ergoemacs_org/emacs/swap_CapsLock_Ctrl.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_lookup_ref.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_insert_brackets_by_pair.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_command_working_on_string_or_region.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_transform_html_tags.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_comment_command.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_list_matching_lines.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_outline.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_man_page.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_process_html.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_jump_to_punctuations.html"
;; "/home/xah/web/ergoemacs_org/emacs/command-frequency.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs23_features.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_abbrev_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_editing_basics.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_delete-current-file.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_recentf.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_adding_browser_keys.html"
;; "/home/xah/web/ergoemacs_org/emacs/eshell.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_winner_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_fix_dead_links.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_novel_reading_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/file_management.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_mswin.html"
;; "/home/xah/web/ergoemacs_org/emacs/xah_emacs_modes.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_switching_fonts.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_library_system.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_elisp_copy_dir.html"
;; "/home/xah/web/ergoemacs_org/emacs/ergonomic_emacs_keybinding_features.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_menu.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_keybinding_redesign.html"
;; "/home/xah/web/ergoemacs_org/emacs/dictionary_lookup.html"
;; "/home/xah/web/ergoemacs_org/emacs/whitespace-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_converting_hex_decimal.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_perl_vs_cperl_mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_menu.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_make-citation.html"
;; "/home/xah/web/ergoemacs_org/emacs/rsi_is_coming_for_you.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_manual_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp_list_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_vs_xemacs.html"
;; "/home/xah/web/ergoemacs_org/emacs/keyboard_shortcuts.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_supporting_DOS.html"
;; "/home/xah/web/ergoemacs_org/emacs/make_download_copy.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs-ahk_mode_problems.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs23_install_elpa.html"
;; "/home/xah/web/ergoemacs_org/emacs/user_comments.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_copy-paste_register_1.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_extract_url_command.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_convert_chinese_punctuation.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_browse_url.html"
;; "/home/xah/web/ergoemacs_org/emacs/ergonomic_emacs_keybinding_system-wide.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_curly-quotes-to-emacs-function-tag.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs24.4_features.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_package_system.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_string-rectangle_ascii-art.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_comment_handling.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_kill-ring.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_unicode_representation_in_string.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_universal_argument.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_common_functions.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_find_replace_multi.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_package_system_problem.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_mouse_wheel_config.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_should_dir_name_ends_in_slash.html"
;; "/home/xah/web/ergoemacs_org/emacs/xah-html-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_make_modern.html"
;; "/home/xah/web/ergoemacs_org/emacs/gnu_emacs_keybinding.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_n_unicode.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_meta_key.html"
;; "/home/xah/web/ergoemacs_org/emacs/emergency_vi.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_filter_list.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_logo.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_basics.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_next_prev_user_buffer.html"
;; "/home/xah/web/ergoemacs_org/emacs/xah-elisp-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_23.2_nxml_fontification_changes.html"
;; "/home/xah/web/ergoemacs_org/emacs/text_editor_unicode/text_editor_unicode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_24_common_lisp_package_name_change.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_count-region.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_text_processing.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_save_cursor_position.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_chinese_input.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_isearch.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_best_keyboard.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_common_lisp_in_emacs.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_change_brackets.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_keys_index.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_read_file_content.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_html6-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/GNU_Emacs_dev_inefficiency.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_parse_time.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_view_images.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_list_vector.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_kb_shortcuts_pain.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_fill-paragraph.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_avoid_lambda_in_hook.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_keybinding_power_of_keys_sequence.html"
;; "/home/xah/web/ergoemacs_org/emacs/modernization_upcase-word.html"
;; "/home/xah/web/ergoemacs_org/emacs/find_replace_inter.html"
;; "/home/xah/web/ergoemacs_org/emacs/lisp_logo.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_decode_uri_percent_encoding.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_effective_windows_management.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_text_processing_lang.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_navigating_keys_for_brackets.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_make_link.html"
;; "/home/xah/web/ergoemacs_org/emacs/elisp_css_compressor.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_subword-mode_superword-mode.html"
;; "/home/xah/web/ergoemacs_org/emacs/emacs_delete_whole_line.html"
;; "/home/xah/web/ergoemacs_org/emacs_images_thumbnails_index.html"

) )

(defun my-process-file (fPath)
  "Process the file at FPATH …"
  (let ()

    (with-temp-buffer
      (insert-file-contents fPath)
      (goto-char 1)

      (if (search-forward "<div class=\"ads-bottom-65900\">" nil t)
          (progn (beginning-of-line)
                 (insert "<!-- share2-11710 -->\n\n"))
        (progn
          (search-forward "<div id=\"disqus_thread\">")
          (progn (beginning-of-line)
                 (insert "<!-- share2-11710 -->\n\n"))
          )
        )

      (goto-char 1)
      (search-forward "<!-- share76406d11f13ce -->" )
      (delete-region (line-beginning-position) (line-end-position))

      (write-region (point-min) (point-max) fPath)

      )))

(require 'find-lisp)

(let (outputBuffer)
  (setq outputBuffer "*xah move share box*" )
  (with-output-to-temp-buffer outputBuffer
    (mapc 'my-process-file ξfile-list)
    (princ "Done deal!")))

