class HomeBanner < Bridgetown::Component
  def initialize(bg:, title:, text:, icon:, alt:)
    @bg = bg
    @title = title
    @text = text
    @icon = icon
    @alt = alt
  end
end
