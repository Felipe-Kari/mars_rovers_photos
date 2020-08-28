require_relative 'request'

#request

def requestb(url, api_key)
    data = get_data("#{url}" + "#{api_key}")
    return data
end

#build_web_page

def head
    head = "<html>\n"+
    "<head>\n"+
    "</head>\n"+
    "<body>\n"
end

def body(api)
    body = "<ul>\n"
    
    api["photos"].each do |k|
        k.each do |k2, v|
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