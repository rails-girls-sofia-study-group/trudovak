def removeExtraSpace(text)
  if text.include? " \r\n"
    text.sub! " \r\n", "\r\n"
  end
end