class MygridScreen < PM::Screen
  title "MyGrid"
  stylesheet MygridScreenStylesheet

  nav_bar false

  def on_load
    show_grid
    show_stats
  end

  def show_stats
    stats_view = []
    stats_view << append!(UILabel, :stats_view)
    stats_view[0].text = "Stats"
    stats_view << append!(UILabel, :stats_view)
    stats_view[1].text = "width: #{device.width}"
    find(stats_view[1]).move(below_prev: 0)
    stats_view << append!(UILabel, :stats_view)
    stats_view[2].text = "height: #{device.height}"
    find(stats_view[2]).move(below_prev: 0)

  end

  def show_grid
    grid = []
    x_dict = %w(a b c d e f g h i j k l)

    (0..17).each do |y|
      (0..11).each do |x|
        grid << append!(UILabel, :point)
        find(grid[grid.length-1]).frame = "#{x_dict[x]}#{y}"
      end
    end
  end


  # You don't have to reapply styles to all UIViews, if you want to optimize, another way to do it
  # is tag the views you need to restyle in your stylesheet, then only reapply the tagged views, like so:
  #   def logo(st)
  #     st.frame = {t: 10, w: 200, h: 96}
  #     st.centered = :horizontal
  #     st.image = image.resource('logo')
  #     st.tag(:reapply_style)
  #   end
  #
  # Then in will_animate_rotate
  #   find(:reapply_style).reapply_styles#

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
