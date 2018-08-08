require_relative './forms_spec'

describe "Book" do
  describe 'GET /books/new' do
    it 'sends a status code of 200' do
      visit '/books/new'
      expect(last_response.status).to eq(200)
    end

    it 'renders the books form' do
      visit '/books/new'

      page.should have_selector('form')
      page.should have_field(:title)
      page.should have_field(:author)
      page.should have_field(:snippet)
    end
  end

  describe 'POST /books' do
    it 'displays the newly created book' do
      visit '/books/new'

      fill_in(:title, with: "The Secret, Sweet Life of Corgis")
      fill_in(:author, with: "Prince Wilson")
      fill_in(:snippet, with: "Who even knows what this book will be about? It is a secret")

      click_button("Submit")

      page.should have_content("The Secret, Sweet Life of Corgis")
      page.should have_content("Prince Wilson")
      page.should have_content("Who even knows what this book will be about? It is a secret")
    end
  end
end
