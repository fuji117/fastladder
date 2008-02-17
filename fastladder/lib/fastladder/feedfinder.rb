require "rfeedfinder"

def Rfeedfinder.open_doc(link)
  html_body = Fastladder::simple_fetch(link.to_s)
  return nil unless html_body
  Hpricot(html_body, :xml => true)
end
