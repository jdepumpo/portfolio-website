class BigButton < Bridgetown::Component
  def initialize(text:, icon:, link:, alt:)
    @text = text
    @icon = icon
    @link = link
    @alt = alt
  end
end
