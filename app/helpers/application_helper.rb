module ApplicationHelper

def full_title(page_title)
    base_title = "Swag"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
end	

def page_header(header)
    base_header = "Swag"
    if header.empty?
      base_header
    else
      header
    end
end	

def page_lead(lead)
    base_lead = "Product management made easier{ish}"
    if lead.empty?
      base_lead
    else
      lead
    end
end


end
