module Pages
  class Todos
    include Capybara::DSL

    def create_todo(attributes)
      create_todo_link.click

      Pages::NewTodo.new(attributes).create
    end

    def has_todo_titled?(title)
      todos_list.has_css? "li", text: title
    end

    def has_completed_todo_titled?(title)
      todos_list.has_css? "li.completed", text: title
    end

    def mark_complete(title)
      within "li:contains('#{title}')" do
        click_on I18n.t("todos.index.mark_complete")
      end
    end

    private

    def todos_list
      find("ul.todos")
    end

    def create_todo_link
      find_link I18n.t("todos.index.create_todo")
    end
  end
end
