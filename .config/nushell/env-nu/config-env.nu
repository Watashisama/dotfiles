let carapace_completer = {|spans|
    carapace $spans.0 nushell ...$spans | from json
}

$env.config.history = {
  max_size: 5000,
  sync_on_enter: true,
  path: ($env.HOME | path join ".local/share/nushell"),
  file_format: sqlite,
  isolation: false
}
$env.config.filesize = {
  unit: metric,
  show_unit: true,
  precision: 2
}
$env.config.table = {
  mode: rounded,
  index_mode: always,
  show_empty: false,
  padding: {
    left: 1,
    right: 1
  },
  trim: {
    methodology: wrapping,
    wrapping_try_keep_words: true
  },
  header_on_separator: false,
  abbreviated_row_count: null,
  footer_inheritance: false,
  missing_value_symbol: ,
  batch_duration: 1000000000ns,
  stream_page_size: 1000
}
$env.config.ls = {
  use_ls_colors: true,
  clickable_links: false
}
$env.config.completions = {
  sort: smart,
  case_sensitive: false,
  quick: true,
  partial: true,
  algorithm: prefix,
  external: {
    enable: true,
    max_results: 50,
    completer: $carapace_completer,
  },
  use_ls_colors: true
}
$env.config.cursor_shape = {
  emacs: inherit,
  vi_insert: inherit,
  vi_normal: inherit
}
$env.config.datetime_format = {
  normal: null,
  table: null
}
$env.config.display_errors = {
  exit_code: false,
  termination_signal: true
}

$env.config.bracketed_paste = true
$env.config.buffer_editor = null
$env.config.edit_mode = "vi"
$env.config.error_lines = 1
$env.config.error_style = "fancy"
$env.config.float_precision = 10
$env.config.footer_mode = 25
$env.config.highlight_resolved_externals = true
$env.config.recursion_limit = 50
$env.config.render_right_prompt_on_last_line = false
$env.config.rm.always_trash = true
$env.config.show_banner = false
$env.config.show_hints = true
$env.config.use_ansi_coloring = "auto"
$env.config.use_kitty_protocol = true
