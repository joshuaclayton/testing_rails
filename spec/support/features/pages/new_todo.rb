module Pages
  class NewTodo
    include Capybara::DSL
    include Formulaic::Dsl

    def initialize(attributes)
      @attributes = attributes
    end

    def create
      fill_form_and_submit :todo, attributes
    end

    private

    attr_reader :attributes
  end
end
