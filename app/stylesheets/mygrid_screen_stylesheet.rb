class MygridScreenStylesheet < ApplicationStylesheet
  # Add your view stylesheets here. You can then override styles if needed,
  # example: include FooStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
    # Change the default grid if desired
    rmq.app.grid.tap do |g|
      g.num_columns =  12
      g.column_gutter = 0
      g.num_rows = 18
      g.row_gutter = 0
      g.content_left_margin = 0
      g.content_top_margin = 0
      g.content_right_margin = 0
      g.content_bottom_margin = 0
    end

    def stats_view(st)
      st.frame = {fb: 100, fr: 75, w: 75, h: 15}
      st.font = font.tiny
      st.color = color.translucent_black
      st.background_color = color.translucent_yellow
    end

    def point(st)
      st.frame = {t: 0, l: 0, w: 1, h: 1}
      st.background_color = color.red
    end
  end

  def root_view(st)
    st.background_color = color.white
  end
end
