class PlatformCard < Bridgetown::Component
  def initialize(color:, text:, icon:)
    @color = color
    @text = text
    @icon = icon
  end
end
