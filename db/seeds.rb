library = Library.new(:name => 'New York Public Library')
library.save


book = Book.new(:title => 'The Red Tent', :author => 'Anita Diamant')
book.save
                # {:title => 'The Color Purple' ,:author => 'Alice Walker',},
                # {:title => 'The Life Of Pi' ,:author => 'I Forgot',},
                # {:title => 'The Bell Jar', :author => 'Sylvia Plath'}])

