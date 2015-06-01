class IndexController < ApplicationController

def index
 
        clnt = HTTPClient.new
        @aString = clnt.get_content("http://da-stg-ssolr.library.cornell.edu/solr/blacklight/select?&fq=acquired_month:%5B201406%20TO%20201506%5D&fq=online:Online&fq=format:Book&q=Astronomy&sort=acquired_month%20desc&wt=ruby&indent=true&rows=500#")
        @books = eval(@aString)
        @newbooks = @books['response']['docs']
	end



end
