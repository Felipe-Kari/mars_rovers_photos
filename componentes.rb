require_relative 'request'

# api_end = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
# api_key = 'dJ8J0ttqoVilZVljNXysOYeb1pzwRsewyq3aqxfs'

def request(url, api_key)
    data = get_data("#{url}" + "#{api_key}")
    return data
end

# api_roverph = request(api_end, api_key)

#build_web_page

def head
    head = "<html>\n"+
    "<head>\n"+
    "</head>\n"+
    "<body>\n"
end

def body
    api_end = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
    api_key = 'dJ8J0ttqoVilZVljNXysOYeb1pzwRsewyq3aqxfs'

    api = request(api_end, api_key)

    body = "<ul>\n"
    # body += "\n#{api["photos"]}"
    api["photos"].each do |k1, v|
        k1.each do |k2, v|
            if k2 == "img_src"
                body += "\t<li><img src='#{v}'></li>\n"
            end
        end
    end
    body += "</ul>\n"
end


def foot
    foot = "</body>\n"+
            "</html>"
end

File.write('./index.html', (head() + body() + foot()))