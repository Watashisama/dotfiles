$env.config = {
  menus: [
    {
      name: completion_menu
      input_mode: cursor_prefix
      marker: "| "
      type: {
        layout: ide
        min_completion_width: 0,
        max_completion_width: 50,
        max_completion_height: 10,
        padding: 0,
        border: {
          top_right: ┐,
          top_left: ┌,
          bottom_right: ┘,
          bottom_left: └,
          horizontal: ─,
          vertical: │,
        },
        cursor_offset: 0,
        description_mode: "prefer_right"
        min_description_width: 15
        max_description_width: 50
        max_description_height: 10
        description_offset: 1
        correct_cursor_pos: false
      }
      style: {
        text: green
        selected_text: green_reverse
        description_text: yellow
        match_text: yellow_underline
        selected_match_text: { attr: ur }
      }
    }
  ]
}
