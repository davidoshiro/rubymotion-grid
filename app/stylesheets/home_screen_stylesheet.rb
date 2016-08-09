class HomeScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def hello_world(st)
    st.frame = {t: 100, w: 200, h: 18, centered: :horizontal}
    st.text_alignment = :center
    st.color = color.battleship_gray
    st.font = font.medium
    st.text = 'Hello World'
  end

  def mygrid(st)
    st.frame = {t: 150, w: 200, h: 30, centered: :horizontal}
    st.text_alignment = :center
    st.color = color.white
    st.font = font.medium
    st.background_color = color.blue
    st.text = 'Go to MyGrid'
  end

end