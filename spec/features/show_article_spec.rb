require 'rails_helper'

RSpec.feature "Showing on Articles" do
    before do
        @article = Article.create(title: "The first article", body: "Lorem ipsum dolar sit omet")
    end

    scenario "A user shows on article" do
        visit "/"
        click_link @article.title

        expect(page).to have_content(@article.title)
        expect(page).to have_content(@article.body)
        expect(current_path).to  eq(article_path(@article)) 
    end
end